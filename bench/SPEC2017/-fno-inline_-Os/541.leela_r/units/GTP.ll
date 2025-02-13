; ModuleID = 'GTP.cpp'
source_filename = "GTP.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.27" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"struct.std::_Bit_reference" = type { ptr, i64 }
%"class.__gnu_cxx::__normal_iterator.31" = type { ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::auto_ptr" = type { ptr }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::auto_ptr.32" = type { ptr }
%class.GameState = type <{ %class.KoState, %"class.std::vector.20", %class.TimeControl, [4 x i8] }>
%class.KoState = type { %class.FastState.base, %"class.std::vector.15", %"class.std::vector.15" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.13", %"class.boost::array.14" }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array", [2 x i8], %"class.boost::array.5", %"class.boost::array.6", %"class.boost::array.7", %"class.boost::array.7", %"class.std::vector.8", i32 }>
%"class.boost::array.3" = type { [441 x i32] }
%"class.boost::array.4" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.5" = type { [4 x i32] }
%"class.boost::array.6" = type { [8 x i32] }
%"class.boost::array.7" = type { [2 x i32] }
%"class.boost::array.13" = type { [24 x i32] }
%"class.boost::array.14" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.7", %"class.boost::array.7", %"class.boost::array.25", %"class.boost::array.26" }
%"class.boost::array.25" = type { [2 x i8] }
%"class.boost::array.26" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.13", %"class.boost::array.14", [4 x i8] }>
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array", [2 x i8], %"class.boost::array.5", %"class.boost::array.6", %"class.boost::array.7", %"class.boost::array.7", %"class.std::vector.8", i32, [4 x i8] }>
%"class.std::allocator.10" = type { i8 }
%"class.std::allocator.17" = type { i8 }
%"class.std::allocator.22" = type { i8 }
%struct._Guard.41 = type { ptr }
%"struct.std::_Bit_iterator_base" = type <{ ptr, i32, [4 x i8] }>
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_equal_to_iter" = type { i8 }
%class.UCTSearch = type <{ ptr, %class.UCTNode, i32, i32, float, i8, i8, [2 x i8], ptr, i8, i8, [6 x i8] }>
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }
%class.SGFTree = type { %class.KoState, %"class.std::vector.33", %"class.std::multimap" }
%"class.std::vector.33" = type { %"struct.std::_Vector_base.34" }
%"struct.std::_Vector_base.34" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::multimap" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"struct.std::pair.42" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEixEm = comdat any

$_ZNKSt14_Bit_referencecvbEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_ = comdat any

$_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EESC_ = comdat any

$_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_SD_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2IPS6_vEERKNS0_IT_SB_EE = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm = comdat any

$_ZNSt13_Bvector_baseISaIbEED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZSt8noskipwsRSt8ios_base = comdat any

$_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZNSt8auto_ptrI9UCTSearchEC2EPS0_ = comdat any

$_ZNKSt8auto_ptrI9UCTSearchEptEv = comdat any

$_ZNSt8auto_ptrI9UCTSearchED2Ev = comdat any

$_ZSt4fabsf = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNSt8auto_ptrI7SGFTreeEC2EPS0_ = comdat any

$_ZNKSt8auto_ptrI7SGFTreeEptEv = comdat any

$_ZN9GameStateaSEOS_ = comdat any

$_ZN9GameStateD2Ev = comdat any

$_ZNSt8auto_ptrI7SGFTreeED2Ev = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev = comdat any

$_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags = comdat any

$_ZStaNRSt13_Ios_FmtflagsS_ = comdat any

$_ZStcoSt13_Ios_Fmtflags = comdat any

$_ZStanSt13_Ios_FmtflagsS_ = comdat any

$_ZN7KoStateaSEOS_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EEaSEOS2_ = comdat any

$_ZN9FastStateaSEOS_ = comdat any

$_ZNSt6vectorIySaIyEEaSEOS1_ = comdat any

$_ZN9FullBoardaSEOS_ = comdat any

$_ZN5boost5arrayISt4pairIiiELm24EEaSEOS3_ = comdat any

$_ZN9FastBoardaSEOS_ = comdat any

$_ZNSt6vectorIiSaIiEEaSEOS1_ = comdat any

$_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_ = comdat any

$_ZSt15__alloc_on_moveISaIiEEvRT_S2_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIiEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_ = comdat any

$_ZNSt4pairIiiEaSEOS0_ = comdat any

$_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE = comdat any

$_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_ = comdat any

$_ZSt15__alloc_on_moveISaIyEEvRT_S2_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt6vectorIySaIyEED2Ev = comdat any

$_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIyEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIyEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_ = comdat any

$_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIySaIyEED2Ev = comdat any

$_ZSt8_DestroyIPyEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym = comdat any

$_ZNSt15__new_allocatorIyED2Ev = comdat any

$_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym = comdat any

$_ZNSt15__new_allocatorIyE10deallocateEPym = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE = comdat any

$_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_ = comdat any

$_ZSt15__alloc_on_moveISaI7KoStateEEvRT_S3_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EED2Ev = comdat any

$_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaI7KoStateEC2ERKS0_ = comdat any

$_ZNSt15__new_allocatorI7KoStateEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_ = comdat any

$_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP7KoStateEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_ = comdat any

$_ZSt8_DestroyI7KoStateEvPT_ = comdat any

$_ZN7KoStateD2Ev = comdat any

$_ZN9FastStateD2Ev = comdat any

$_ZN9FastBoardD2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorI7KoStateED2Ev = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m = comdat any

$_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

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

$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv = comdat any

$_ZNSt15__new_allocatorImED2Ev = comdat any

$_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv = comdat any

$_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv = comdat any

$_ZNSt15__new_allocatorImE10deallocateEPmm = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev = comdat any

$_ZNSt13_Bit_iteratorC2Ev = comdat any

$_ZNSt18_Bit_iterator_baseC2EPmj = comdat any

$_ZNSt6vectorIbSaIbEE5beginEv = comdat any

$_ZNKSt13_Bit_iteratorixEl = comdat any

$_ZNSt13_Bit_iteratorC2EPmj = comdat any

$_ZStplRKSt13_Bit_iteratorl = comdat any

$_ZNKSt13_Bit_iteratordeEv = comdat any

$_ZNSt13_Bit_iteratorpLEl = comdat any

$_ZNSt18_Bit_iterator_base7_M_incrEl = comdat any

$_ZNSt14_Bit_referenceC2EPmm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_ = comdat any

$_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_ = comdat any

$_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_ = comdat any

$_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_ = comdat any

$_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_ = comdat any

$_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_ = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_ = comdat any

$_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_less_iterEv = comdat any

$_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_ = comdat any

$_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_ = comdat any

$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_ = comdat any

$_ZN9__gnu_cxxltIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_ = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

$_ZNSt11char_traitsIcE7compareEPKcS2_m = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmmEv = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_SF_T0_ = comdat any

$_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_ = comdat any

$_ZSt4swapIcSt11char_traitsIcESaIcEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES9_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_ = comdat any

$_ZN9__gnu_cxxeqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_ = comdat any

$_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE = comdat any

$_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET1_T0_SE_SD_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES8_ET_SD_T0_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_ = comdat any

$_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_ = comdat any

$_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_ = comdat any

$_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv = comdat any

$_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_ = comdat any

$_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_ = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6cbeginEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_ = comdat any

$_ZN9__gnu_cxxmiIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS8_ = comdat any

$_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_ = comdat any

$_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET1_T0_SE_SD_ = comdat any

$_ZSt14__copy_move_a1ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_ = comdat any

$_ZSt14__copy_move_a2ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_ = comdat any

$_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv = comdat any

$_ZN9UCTSearchD2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZN7SGFTreeD2Ev = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv = comdat any

$_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP7SGFTreeEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_ = comdat any

$_ZSt8_DestroyI7SGFTreeEvPT_ = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorI7SGFTreeED2Ev = comdat any

$_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN3GTP10s_commandsB5cxx11E = dso_local global [26 x %"class.std::__cxx11::basic_string"] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"protocol_version\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"known_command\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"list_commands\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"boardsize\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"clear_board\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"komi\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"genmove\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"showboard\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"final_score\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"final_status_list\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"time_settings\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"time_left\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"influence\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"mc_score\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"kgs-genmove_cleanup\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"fixed_handicap\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"place_free_handicap\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"set_free_handicap\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"loadsgf\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Leela\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"0.3.16\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"unacceptable size\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"syntax not understood\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"resign\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"illegal move\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"cannot undo\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"W+%3.1f\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"B+%3.1f\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"Color in time adjust not understood.\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"bench\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"go\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"Not a valid number of handicap stones\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"unknown command\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_GTP.cpp, ptr null }]

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #18
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::allocator", align 1
  %2 = alloca %"class.std::allocator", align 1
  %3 = alloca %"class.std::allocator", align 1
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::allocator", align 1
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::allocator", align 1
  %10 = alloca %"class.std::allocator", align 1
  %11 = alloca %"class.std::allocator", align 1
  %12 = alloca %"class.std::allocator", align 1
  %13 = alloca %"class.std::allocator", align 1
  %14 = alloca %"class.std::allocator", align 1
  %15 = alloca %"class.std::allocator", align 1
  %16 = alloca %"class.std::allocator", align 1
  %17 = alloca %"class.std::allocator", align 1
  %18 = alloca %"class.std::allocator", align 1
  %19 = alloca %"class.std::allocator", align 1
  %20 = alloca %"class.std::allocator", align 1
  %21 = alloca %"class.std::allocator", align 1
  %22 = alloca %"class.std::allocator", align 1
  %23 = alloca %"class.std::allocator", align 1
  %24 = alloca %"class.std::allocator", align 1
  %25 = alloca %"class.std::allocator", align 1
  %26 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3GTP10s_commandsB5cxx11E, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
          to label %27 unwind label %54

27:                                               ; preds = %0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1), ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
          to label %28 unwind label %56

28:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 2), ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %29 unwind label %58

29:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 3), ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %30 unwind label %60

30:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 4), ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %31 unwind label %62

31:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 5), ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %32 unwind label %64

32:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 6), ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %33 unwind label %66

33:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 7), ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %8) #18
          to label %34 unwind label %68

34:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 8), ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %9) #18
          to label %35 unwind label %70

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 9), ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %10) #18
          to label %36 unwind label %72

36:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 10), ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %11) #18
          to label %37 unwind label %74

37:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 11), ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %12) #18
          to label %38 unwind label %76

38:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 12), ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %13) #18
          to label %39 unwind label %78

39:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 13), ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %14) #18
          to label %40 unwind label %80

40:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 14), ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
          to label %41 unwind label %82

41:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15), ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %16) #18
          to label %42 unwind label %84

42:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 16), ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %17) #18
          to label %43 unwind label %86

43:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 17), ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %18) #18
          to label %44 unwind label %88

44:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %19) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 18), ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %19) #18
          to label %45 unwind label %90

45:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 19), ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %20) #18
          to label %46 unwind label %92

46:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20), ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %21) #18
          to label %47 unwind label %94

47:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 21), ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %22) #18
          to label %48 unwind label %96

48:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %23) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22), ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %23) #18
          to label %49 unwind label %98

49:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23), ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %24) #18
          to label %50 unwind label %100

50:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %25) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 24), ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %25) #18
          to label %51 unwind label %102

51:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %26) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 25), ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %26) #18
          to label %52 unwind label %104

52:                                               ; preds = %51
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %26) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %25) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %23) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %19) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #19
  %53 = call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor, ptr null, ptr nonnull @__dso_handle) #19
  ret void

54:                                               ; preds = %0
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #19
  br label %183

56:                                               ; preds = %27
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %175

58:                                               ; preds = %28
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %172

60:                                               ; preds = %29
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %169

62:                                               ; preds = %30
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %166

64:                                               ; preds = %31
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %163

66:                                               ; preds = %32
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %160

68:                                               ; preds = %33
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %157

70:                                               ; preds = %34
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %154

72:                                               ; preds = %35
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %151

74:                                               ; preds = %36
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %148

76:                                               ; preds = %37
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %145

78:                                               ; preds = %38
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %142

80:                                               ; preds = %39
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %139

82:                                               ; preds = %40
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %136

84:                                               ; preds = %41
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %133

86:                                               ; preds = %42
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %130

88:                                               ; preds = %43
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %127

90:                                               ; preds = %44
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %124

92:                                               ; preds = %45
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %121

94:                                               ; preds = %46
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %118

96:                                               ; preds = %47
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %115

98:                                               ; preds = %48
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %112

100:                                              ; preds = %49
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %109

102:                                              ; preds = %50
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %106

104:                                              ; preds = %51
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %26) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #19
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi ptr [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 25), %104 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 24), %102 ]
  %108 = phi { ptr, i32 } [ %105, %104 ], [ %103, %102 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %25) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #19
  br label %109

109:                                              ; preds = %106, %100
  %110 = phi ptr [ %107, %106 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 23), %100 ]
  %111 = phi { ptr, i32 } [ %108, %106 ], [ %101, %100 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %24) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #19
  br label %112

112:                                              ; preds = %109, %98
  %113 = phi ptr [ %110, %109 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 22), %98 ]
  %114 = phi { ptr, i32 } [ %111, %109 ], [ %99, %98 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %23) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #19
  br label %115

115:                                              ; preds = %112, %96
  %116 = phi ptr [ %113, %112 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 21), %96 ]
  %117 = phi { ptr, i32 } [ %114, %112 ], [ %97, %96 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %22) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #19
  br label %118

118:                                              ; preds = %115, %94
  %119 = phi ptr [ %116, %115 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 20), %94 ]
  %120 = phi { ptr, i32 } [ %117, %115 ], [ %95, %94 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #19
  br label %121

121:                                              ; preds = %118, %92
  %122 = phi ptr [ %119, %118 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 19), %92 ]
  %123 = phi { ptr, i32 } [ %120, %118 ], [ %93, %92 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #19
  br label %124

124:                                              ; preds = %121, %90
  %125 = phi ptr [ %122, %121 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 18), %90 ]
  %126 = phi { ptr, i32 } [ %123, %121 ], [ %91, %90 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %19) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #19
  br label %127

127:                                              ; preds = %124, %88
  %128 = phi ptr [ %125, %124 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 17), %88 ]
  %129 = phi { ptr, i32 } [ %126, %124 ], [ %89, %88 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %18) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #19
  br label %130

130:                                              ; preds = %127, %86
  %131 = phi ptr [ %128, %127 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 16), %86 ]
  %132 = phi { ptr, i32 } [ %129, %127 ], [ %87, %86 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %17) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #19
  br label %133

133:                                              ; preds = %130, %84
  %134 = phi ptr [ %131, %130 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 15), %84 ]
  %135 = phi { ptr, i32 } [ %132, %130 ], [ %85, %84 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #19
  br label %136

136:                                              ; preds = %133, %82
  %137 = phi ptr [ %134, %133 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 14), %82 ]
  %138 = phi { ptr, i32 } [ %135, %133 ], [ %83, %82 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #19
  br label %139

139:                                              ; preds = %136, %80
  %140 = phi ptr [ %137, %136 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 13), %80 ]
  %141 = phi { ptr, i32 } [ %138, %136 ], [ %81, %80 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #19
  br label %142

142:                                              ; preds = %139, %78
  %143 = phi ptr [ %140, %139 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 12), %78 ]
  %144 = phi { ptr, i32 } [ %141, %139 ], [ %79, %78 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #19
  br label %145

145:                                              ; preds = %142, %76
  %146 = phi ptr [ %143, %142 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 11), %76 ]
  %147 = phi { ptr, i32 } [ %144, %142 ], [ %77, %76 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #19
  br label %148

148:                                              ; preds = %145, %74
  %149 = phi ptr [ %146, %145 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 10), %74 ]
  %150 = phi { ptr, i32 } [ %147, %145 ], [ %75, %74 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #19
  br label %151

151:                                              ; preds = %148, %72
  %152 = phi ptr [ %149, %148 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 9), %72 ]
  %153 = phi { ptr, i32 } [ %150, %148 ], [ %73, %72 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #19
  br label %154

154:                                              ; preds = %151, %70
  %155 = phi ptr [ %152, %151 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 8), %70 ]
  %156 = phi { ptr, i32 } [ %153, %151 ], [ %71, %70 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #19
  br label %157

157:                                              ; preds = %154, %68
  %158 = phi ptr [ %155, %154 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 7), %68 ]
  %159 = phi { ptr, i32 } [ %156, %154 ], [ %69, %68 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  br label %160

160:                                              ; preds = %157, %66
  %161 = phi ptr [ %158, %157 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 6), %66 ]
  %162 = phi { ptr, i32 } [ %159, %157 ], [ %67, %66 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  br label %163

163:                                              ; preds = %160, %64
  %164 = phi ptr [ %161, %160 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 5), %64 ]
  %165 = phi { ptr, i32 } [ %162, %160 ], [ %65, %64 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  br label %166

166:                                              ; preds = %163, %62
  %167 = phi ptr [ %164, %163 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 4), %62 ]
  %168 = phi { ptr, i32 } [ %165, %163 ], [ %63, %62 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  br label %169

169:                                              ; preds = %166, %60
  %170 = phi ptr [ %167, %166 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 3), %60 ]
  %171 = phi { ptr, i32 } [ %168, %166 ], [ %61, %60 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %172

172:                                              ; preds = %169, %58
  %173 = phi ptr [ %170, %169 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 2), %58 ]
  %174 = phi { ptr, i32 } [ %171, %169 ], [ %59, %58 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br label %175

175:                                              ; preds = %56, %172
  %176 = phi ptr [ %173, %172 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1), %56 ]
  %177 = phi { ptr, i32 } [ %174, %172 ], [ %57, %56 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #19
  %178 = icmp eq ptr %176, @_ZN3GTP10s_commandsB5cxx11E
  br i1 %178, label %183, label %179

179:                                              ; preds = %175, %179
  %180 = phi ptr [ %181, %179 ], [ %176, %175 ]
  %181 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %180, i64 -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %181) #20
  %182 = icmp eq ptr %181, @_ZN3GTP10s_commandsB5cxx11E
  br i1 %182, label %183, label %179

183:                                              ; preds = %179, %54, %175
  %184 = phi { ptr, i32 } [ %55, %54 ], [ %177, %175 ], [ %177, %179 ]
  resume { ptr, i32 } %184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !206 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10, !prof !207

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.60) #21
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #18
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %17
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @__cxx_global_array_dtor(ptr nocapture readnone %0) #7 section ".text.startup" {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 1, i64 0), %1 ], [ %4, %2 ]
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 -1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  %5 = icmp eq ptr %4, @_ZN3GTP10s_commandsB5cxx11E
  br i1 %5, label %6, label %2

6:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3GTP13get_life_listB5cxx11ER9GameStateb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8508) %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector.27", align 8
  %6 = alloca %"struct.std::_Bit_reference", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %11 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  invoke void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.27") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8388) %1) #18
          to label %13 unwind label %23

13:                                               ; preds = %3
  %14 = getelementptr inbounds { ptr, i64 }, ptr %6, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %32
  %16 = phi i32 [ %33, %32 ], [ 0, %13 ]
  %17 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1) #18
          to label %18 unwind label %25

18:                                               ; preds = %15
  %19 = icmp slt i32 %16, %17
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %22 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  invoke void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_(ptr %21, ptr %22) #18
          to label %65 unwind label %78

23:                                               ; preds = %3
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %107

25:                                               ; preds = %15
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %105

27:                                               ; preds = %18, %63
  %28 = phi i32 [ %64, %63 ], [ 0, %18 ]
  %29 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1) #18
          to label %30 unwind label %34

30:                                               ; preds = %27
  %31 = icmp slt i32 %28, %29
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = add nuw nsw i32 %16, 1
  br label %15, !llvm.loop !209

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %105

36:                                               ; preds = %30
  %37 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %16, i32 noundef %28) #18
          to label %38 unwind label %53

38:                                               ; preds = %36
  %39 = invoke noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %37) #18
          to label %40 unwind label %53

40:                                               ; preds = %38
  %41 = icmp eq i32 %39, 2
  br i1 %41, label %63, label %42

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %43 = sext i32 %37 to i64
  %44 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %43) #18
          to label %45 unwind label %55

45:                                               ; preds = %42
  %46 = extractvalue { ptr, i64 } %44, 0
  store ptr %46, ptr %6, align 8
  %47 = extractvalue { ptr, i64 } %44, 1
  store i64 %47, ptr %14, align 8
  %48 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #20
  %49 = xor i1 %48, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  invoke void @_ZN9FastBoard10get_stringB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %37) #18
          to label %51 unwind label %57

51:                                               ; preds = %50
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
          to label %52 unwind label %59

52:                                               ; preds = %51
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  br label %63

53:                                               ; preds = %38, %36
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %105

55:                                               ; preds = %42
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %105

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %61

59:                                               ; preds = %51
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  br label %105

63:                                               ; preds = %45, %52, %40
  %64 = add nuw nsw i32 %28, 1
  br label %27, !llvm.loop !211

65:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %66 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %67 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %68 = invoke ptr @_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_SD_(ptr %66, ptr %67) #18
          to label %69 unwind label %80

69:                                               ; preds = %65
  store ptr %68, ptr %9, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2IPS6_vEERKNS0_IT_SB_EE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  %70 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  store ptr %70, ptr %11, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2IPS6_vEERKNS0_IT_SB_EE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  %71 = load ptr, ptr %8, align 8
  %72 = load ptr, ptr %10, align 8
  %73 = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EESC_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %71, ptr %72) #18
          to label %74 unwind label %82

74:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  %75 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %94, %74
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void

78:                                               ; preds = %20
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %105

80:                                               ; preds = %65
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %84

82:                                               ; preds = %69
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %81, %80 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %105

86:                                               ; preds = %74, %94
  %87 = phi i64 [ %96, %94 ], [ 0, %74 ]
  %88 = phi i32 [ %95, %94 ], [ 0, %74 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, ptr @.str.25, ptr @.str.26
  %91 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %87) #20
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull %90, ptr noundef nonnull align 8 dereferenceable(32) %91) #18
          to label %92 unwind label %99

92:                                               ; preds = %86
  %93 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %12) #18
          to label %94 unwind label %101

94:                                               ; preds = %92
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  %95 = add i32 %88, 1
  %96 = zext i32 %95 to i64
  %97 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %98 = icmp ugt i64 %97, %96
  br i1 %98, label %86, label %77, !llvm.loop !212

99:                                               ; preds = %86
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %103

101:                                              ; preds = %92
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %100, %99 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  br label %105

105:                                              ; preds = %25, %53, %55, %61, %34, %103, %84, %78
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %85, %84 ], [ %79, %78 ], [ %26, %25 ], [ %35, %34 ], [ %62, %61 ], [ %56, %55 ], [ %54, %53 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #20
  br label %107

107:                                              ; preds = %105, %23
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  resume { ptr, i32 } %108
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: optsize
declare void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind writable sret(%"class.std::vector.27") align 8, ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !213 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = tail call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  %8 = call { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !214 {
  %2 = load ptr, ptr %0, align 8, !tbaa !215
  %3 = load i64, ptr %2, align 8, !tbaa !221
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !222
  %6 = and i64 %5, %3
  %7 = icmp ne i64 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %3 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastBoard10get_stringB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !208 {
  tail call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #18
  tail call void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EESC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %8 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %8, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %9 = tail call ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %9, ptr %7, align 8
  %10 = call noundef i64 @_ZN9__gnu_cxxmiIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %11 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %10) #20
  %12 = call noundef i64 @_ZN9__gnu_cxxmiIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %13 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %12) #20
  %14 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %11, ptr %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_SD_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !208 {
  tail call void @_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv() #18
  %3 = tail call ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %0, ptr %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2IPS6_vEERKNS0_IT_SB_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !208 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %4, ptr %0, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  %4 = load ptr, ptr %0, align 8, !tbaa !228
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !208 {
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator", align 1
  %6 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  call void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  invoke void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %7 unwind label %14

7:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  %8 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %9 = add i64 %8, %6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %9) #18
          to label %10 unwind label %16

10:                                               ; preds = %7
  %11 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %6) #18
          to label %12 unwind label %16

12:                                               ; preds = %10
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
          to label %18 unwind label %16

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %19

16:                                               ; preds = %12, %10, %7
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  br label %19

18:                                               ; preds = %12
  ret void

19:                                               ; preds = %16, %14
  %20 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %3 = load ptr, ptr %0, align 8, !tbaa !228
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN3GTP7executeER9GameStateNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %7 = alloca i8, align 1
  %8 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca i32, align 4
  %16 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca float, align 4
  %19 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %20 = alloca %"class.std::__cxx11::basic_string", align 8
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"class.std::__cxx11::basic_string", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::auto_ptr", align 8
  %28 = alloca %"class.std::__cxx11::basic_string", align 8
  %29 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %30 = alloca %"class.std::__cxx11::basic_string", align 8
  %31 = alloca %"class.std::auto_ptr", align 8
  %32 = alloca %"class.std::__cxx11::basic_string", align 8
  %33 = alloca %"class.std::__cxx11::basic_string", align 8
  %34 = alloca %"class.std::__cxx11::basic_string", align 8
  %35 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %36 = alloca %"class.std::__cxx11::basic_string", align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %41 = alloca %"class.std::__cxx11::basic_string", align 8
  %42 = alloca %"class.std::__cxx11::basic_string", align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %"class.std::auto_ptr", align 8
  %46 = alloca %"class.std::auto_ptr", align 8
  %47 = alloca %"class.std::__cxx11::basic_string", align 8
  %48 = alloca %"class.std::vector.8", align 8
  %49 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %50 = alloca %"class.std::__cxx11::basic_string", align 8
  %51 = alloca i32, align 4
  %52 = alloca %"class.std::__cxx11::basic_string", align 8
  %53 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %54 = alloca %"class.std::__cxx11::basic_string", align 8
  %55 = alloca i32, align 4
  %56 = alloca %"class.std::__cxx11::basic_string", align 8
  %57 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %58 = alloca %"class.std::__cxx11::basic_string", align 8
  %59 = alloca %"class.std::__cxx11::basic_string", align 8
  %60 = alloca %"class.std::__cxx11::basic_string", align 8
  %61 = alloca %"class.std::allocator", align 1
  %62 = alloca %"class.std::__cxx11::basic_string", align 8
  %63 = alloca %"class.std::__cxx11::basic_string", align 8
  %64 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %65 = alloca %"class.std::__cxx11::basic_string", align 8
  %66 = alloca %"class.std::__cxx11::basic_string", align 8
  %67 = alloca i32, align 4
  %68 = alloca %"class.std::auto_ptr.32", align 8
  %69 = alloca %"class.std::__cxx11::basic_string", align 8
  %70 = alloca %class.GameState, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %71 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %134, %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 -1, ptr %5, align 4, !tbaa !230
  %74 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25) #18
  br i1 %74, label %953, label %143

75:                                               ; preds = %2, %134
  %76 = phi i64 [ %136, %134 ], [ 0, %2 ]
  %77 = phi i32 [ %135, %134 ], [ 0, %2 ]
  %78 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %76) #18
  %79 = load i8, ptr %78, align 1, !tbaa !232
  %80 = icmp eq i8 %79, 9
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.27) #18
          to label %112 unwind label %83

83:                                               ; preds = %131, %105, %81
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %956

85:                                               ; preds = %75
  %86 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %76) #18
  %87 = load i8, ptr %86, align 1, !tbaa !232
  %88 = icmp sgt i8 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %76) #18
  %91 = load i8, ptr %90, align 1, !tbaa !232
  %92 = icmp slt i8 %91, 10
  br i1 %92, label %134, label %93

93:                                               ; preds = %89, %85
  %94 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %76) #18
  %95 = load i8, ptr %94, align 1, !tbaa !232
  %96 = icmp sgt i8 %95, 10
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %76) #18
  %99 = load i8, ptr %98, align 1, !tbaa !232
  %100 = icmp slt i8 %99, 32
  br i1 %100, label %134, label %101

101:                                              ; preds = %97, %93
  %102 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %76) #18
  %103 = load i8, ptr %102, align 1, !tbaa !232
  %104 = icmp eq i8 %103, 127
  br i1 %104, label %134, label %105

105:                                              ; preds = %101
  %106 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %76) #18
  %107 = load i8, ptr %106, align 1, !tbaa !232
  %108 = sext i8 %107 to i32
  %109 = call i32 @tolower(i32 noundef %108) #23
  %110 = trunc i32 %109 to i8
  %111 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %110) #18
          to label %112 unwind label %83

112:                                              ; preds = %105, %81
  %113 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %114 = icmp ugt i64 %113, 1
  br i1 %114, label %115, label %134

115:                                              ; preds = %112
  %116 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %117 = add i64 %116, -2
  %118 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %117) #18
  %119 = load i8, ptr %118, align 1, !tbaa !232
  %120 = sext i8 %119 to i32
  %121 = call i32 @isspace(i32 noundef %120) #23
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %134, label %123

123:                                              ; preds = %115
  %124 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %125 = add i64 %124, -1
  %126 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %125) #18
  %127 = load i8, ptr %126, align 1, !tbaa !232
  %128 = sext i8 %127 to i32
  %129 = call i32 @isspace(i32 noundef %128) #23
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %123
  %132 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  %133 = add i64 %132, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %133) #18
          to label %134 unwind label %83

134:                                              ; preds = %112, %131, %123, %115, %89, %97, %101
  %135 = add i32 %77, 1
  %136 = zext i32 %135 to i64
  %137 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  %138 = icmp ugt i64 %137, %136
  br i1 %138, label %75, label %73, !llvm.loop !233

139:                                              ; preds = %709
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %954

141:                                              ; preds = %523, %180, %170, %174, %189, %297, %337, %519, %529, %531, %724, %760, %762
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %954

143:                                              ; preds = %73
  %144 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.28) #18
  br i1 %144, label %145, label %146

145:                                              ; preds = %143
  call void @exit(i32 noundef 0) #24
  unreachable

146:                                              ; preds = %143
  %147 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.29) #18
  br i1 %147, label %953, label %148

148:                                              ; preds = %146
  %149 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0) #18
  %150 = load i8, ptr %149, align 1, !tbaa !232
  %151 = sext i8 %150 to i32
  %152 = add nsw i32 %151, -48
  %153 = icmp ult i32 %152, 10
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %6) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 8) #18
          to label %155 unwind label %164

155:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #19
  %156 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %5) #18
          to label %157 unwind label %166

157:                                              ; preds = %155
  %158 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsEPFRSt8ios_baseS0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @_ZSt8noskipwsRSt8ios_base) #18
          to label %159 unwind label %166

159:                                              ; preds = %157
  %160 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) %158, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %161 unwind label %166

161:                                              ; preds = %159
  %162 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
          to label %163 unwind label %166

163:                                              ; preds = %161
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #19
  br label %172

164:                                              ; preds = %154
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %168

166:                                              ; preds = %161, %159, %157, %155
  %167 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #20
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi { ptr, i32 } [ %167, %166 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %6) #19
  br label %954

170:                                              ; preds = %148
  %171 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
          to label %172 unwind label %141

172:                                              ; preds = %163, %170
  %173 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str) #18
  br i1 %173, label %174, label %176

174:                                              ; preds = %172
  %175 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %175, ptr noundef nonnull @.str.30, i32 noundef 2) #18
          to label %953 unwind label %141

176:                                              ; preds = %172
  %177 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.2) #18
  br i1 %177, label %178, label %183

178:                                              ; preds = %176
  %179 = load i32, ptr %5, align 4, !tbaa !230
  br label %180

180:                                              ; preds = %521, %609, %338, %298, %185, %178
  %181 = phi i32 [ %179, %178 ], [ %186, %185 ], [ %299, %298 ], [ %339, %338 ], [ %610, %609 ], [ %522, %521 ]
  %182 = phi ptr [ @.str.31, %178 ], [ @.str.32, %185 ], [ @.str.25, %298 ], [ @.str.25, %338 ], [ @.str.25, %609 ], [ @.str.25, %521 ]
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %181, ptr noundef nonnull %182) #18
          to label %953 unwind label %141

183:                                              ; preds = %176
  %184 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3) #18
  br i1 %184, label %185, label %187

185:                                              ; preds = %183
  %186 = load i32, ptr %5, align 4, !tbaa !230
  br label %180

187:                                              ; preds = %183
  %188 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4) #18
  br i1 %188, label %189, label %192

189:                                              ; preds = %187
  %190 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %190, ptr noundef nonnull @.str.25) #18
          to label %191 unwind label %141

191:                                              ; preds = %189
  call void @exit(i32 noundef 0) #24
  unreachable

192:                                              ; preds = %187
  %193 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, i64 noundef 0) #20
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %227

195:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %196 unwind label %208

196:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  %197 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
          to label %198 unwind label %210

198:                                              ; preds = %196
  %199 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #18
          to label %200 unwind label %210

200:                                              ; preds = %198
  %201 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3GTP10s_commandsB5cxx11E) #20
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %220, label %212

203:                                              ; preds = %212
  %204 = add nuw i64 %213, 1
  %205 = getelementptr inbounds [26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 %204
  %206 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %205) #20
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %220, label %212, !llvm.loop !234

208:                                              ; preds = %195
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %225

210:                                              ; preds = %220, %198, %196
  %211 = landingpad { ptr, i32 }
          cleanup
  br label %223

212:                                              ; preds = %200, %203
  %213 = phi i64 [ %204, %203 ], [ 0, %200 ]
  %214 = phi ptr [ %205, %203 ], [ @_ZN3GTP10s_commandsB5cxx11E, %200 ]
  %215 = call noundef zeroext i1 @_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %214) #20
  br i1 %215, label %216, label %203

216:                                              ; preds = %212
  %217 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %217, ptr noundef nonnull @.str.33) #18
          to label %222 unwind label %218

218:                                              ; preds = %216
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %223

220:                                              ; preds = %203, %200
  %221 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %221, ptr noundef nonnull @.str.34) #18
          to label %222 unwind label %210

222:                                              ; preds = %216, %220
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %8) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #19
  br label %953

223:                                              ; preds = %218, %210
  %224 = phi { ptr, i32 } [ %211, %210 ], [ %219, %218 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %8) #20
  br label %225

225:                                              ; preds = %223, %208
  %226 = phi { ptr, i32 } [ %224, %223 ], [ %209, %208 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %8) #19
  br label %954

227:                                              ; preds = %192
  %228 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, i64 noundef 0) #20
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %262

230:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) @_ZN3GTP10s_commandsB5cxx11E) #18
          to label %231 unwind label %237

231:                                              ; preds = %230
  %232 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1)) #20
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %243, %231
  %235 = load i32, ptr %5, align 4, !tbaa !230
  %236 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %235, ptr noundef %236) #18
          to label %255 unwind label %256

237:                                              ; preds = %230
  %238 = landingpad { ptr, i32 }
          cleanup
  br label %260

239:                                              ; preds = %231, %243
  %240 = phi i64 [ %245, %243 ], [ 1, %231 ]
  %241 = phi ptr [ %246, %243 ], [ getelementptr inbounds ([26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 1), %231 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.26) #18
          to label %242 unwind label %249

242:                                              ; preds = %239
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %241) #18
          to label %243 unwind label %251

243:                                              ; preds = %242
  %244 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  %245 = add nuw i64 %240, 1
  %246 = getelementptr inbounds [26 x %"class.std::__cxx11::basic_string"], ptr @_ZN3GTP10s_commandsB5cxx11E, i64 0, i64 %245
  %247 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %246) #20
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %234, label %239, !llvm.loop !235

249:                                              ; preds = %239
  %250 = landingpad { ptr, i32 }
          cleanup
  br label %253

251:                                              ; preds = %242
  %252 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi { ptr, i32 } [ %252, %251 ], [ %250, %249 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #19
  br label %258

255:                                              ; preds = %234
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #19
  br label %953

256:                                              ; preds = %234
  %257 = landingpad { ptr, i32 }
          cleanup
  br label %258

258:                                              ; preds = %256, %253
  %259 = phi { ptr, i32 } [ %254, %253 ], [ %257, %256 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  br label %260

260:                                              ; preds = %258, %237
  %261 = phi { ptr, i32 } [ %259, %258 ], [ %238, %237 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #19
  br label %954

262:                                              ; preds = %227
  %263 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, i64 noundef 0) #20
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %294

265:                                              ; preds = %262
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %13) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %266 unwind label %281

266:                                              ; preds = %265
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #19
  %267 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(32) %14) #18
          to label %268 unwind label %283

268:                                              ; preds = %266
  %269 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(4) %15) #18
          to label %270 unwind label %283

270:                                              ; preds = %268
  %271 = load ptr, ptr %13, align 8, !tbaa !236
  %272 = getelementptr i8, ptr %271, i64 -24
  %273 = load i64, ptr %272, align 8
  %274 = getelementptr inbounds i8, ptr %13, i64 %273
  %275 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %274) #18
          to label %276 unwind label %283

276:                                              ; preds = %270
  br i1 %275, label %288, label %277

277:                                              ; preds = %276
  %278 = load i32, ptr %15, align 4
  %279 = add i32 %278, -20
  %280 = icmp ult i32 %279, -18
  br i1 %280, label %288, label %285

281:                                              ; preds = %265
  %282 = landingpad { ptr, i32 }
          cleanup
  br label %292

283:                                              ; preds = %288, %286, %285, %270, %268, %266
  %284 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %13) #20
  br label %292

285:                                              ; preds = %277
  invoke void @_ZN9GameState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %278, float noundef 7.500000e+00) #18
          to label %286 unwind label %283

286:                                              ; preds = %285
  %287 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %287, ptr noundef nonnull @.str.25) #18
          to label %291 unwind label %283

288:                                              ; preds = %276, %277
  %289 = phi ptr [ @.str.35, %277 ], [ @.str.36, %276 ]
  %290 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %290, ptr noundef nonnull %289) #18
          to label %291 unwind label %283

291:                                              ; preds = %288, %286
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %13) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #19
  br label %953

292:                                              ; preds = %283, %281
  %293 = phi { ptr, i32 } [ %284, %283 ], [ %282, %281 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #19
  br label %954

294:                                              ; preds = %262
  %295 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.8, i64 noundef 0) #20
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  invoke void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %298 unwind label %141

298:                                              ; preds = %297
  %299 = load i32, ptr %5, align 4, !tbaa !230
  br label %180

300:                                              ; preds = %294
  %301 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9, i64 noundef 0) #20
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %328

303:                                              ; preds = %300
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %16) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %16, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %304 unwind label %319

304:                                              ; preds = %303
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #19
  store float 7.500000e+00, ptr %18, align 4, !tbaa !238
  %305 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(32) %17) #18
          to label %306 unwind label %321

306:                                              ; preds = %304
  %307 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(4) %18) #18
          to label %308 unwind label %321

308:                                              ; preds = %306
  %309 = load ptr, ptr %16, align 8, !tbaa !236
  %310 = getelementptr i8, ptr %309, i64 -24
  %311 = load i64, ptr %310, align 8
  %312 = getelementptr inbounds i8, ptr %16, i64 %311
  %313 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %312) #18
          to label %314 unwind label %321

314:                                              ; preds = %308
  br i1 %313, label %323, label %315

315:                                              ; preds = %314
  %316 = load float, ptr %18, align 4, !tbaa !238
  invoke void @_ZN9FastState8set_komiEf(ptr noundef nonnull align 8 dereferenceable(8388) %0, float noundef %316) #18
          to label %317 unwind label %321

317:                                              ; preds = %315
  %318 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %318, ptr noundef nonnull @.str.25) #18
          to label %325 unwind label %321

319:                                              ; preds = %303
  %320 = landingpad { ptr, i32 }
          cleanup
  br label %326

321:                                              ; preds = %323, %317, %315, %308, %306, %304
  %322 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %16) #20
  br label %326

323:                                              ; preds = %314
  %324 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %324, ptr noundef nonnull @.str.36) #18
          to label %325 unwind label %321

325:                                              ; preds = %323, %317
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %16) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %16) #19
  br label %953

326:                                              ; preds = %321, %319
  %327 = phi { ptr, i32 } [ %322, %321 ], [ %320, %319 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %16) #19
  br label %954

328:                                              ; preds = %300
  %329 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10, i64 noundef 0) #20
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %381

331:                                              ; preds = %328
  %332 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.37, i64 noundef 0) #20
  %333 = icmp eq i64 %332, -1
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.38, i64 noundef 0) #20
  %336 = icmp eq i64 %335, -1
  br i1 %336, label %340, label %337

337:                                              ; preds = %334, %331
  invoke void @_ZN9GameState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %338 unwind label %141

338:                                              ; preds = %337
  %339 = load i32, ptr %5, align 4, !tbaa !230
  br label %180

340:                                              ; preds = %334
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %19) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %19, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %341 unwind label %360

341:                                              ; preds = %340
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %22) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #20
  %342 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %20) #18
          to label %343 unwind label %362

343:                                              ; preds = %341
  %344 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %21) #18
          to label %345 unwind label %362

345:                                              ; preds = %343
  %346 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(32) %22) #18
          to label %347 unwind label %362

347:                                              ; preds = %345
  %348 = load ptr, ptr %19, align 8, !tbaa !236
  %349 = getelementptr i8, ptr %348, i64 -24
  %350 = load i64, ptr %349, align 8
  %351 = getelementptr inbounds i8, ptr %19, i64 %350
  %352 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %351) #18
          to label %353 unwind label %362

353:                                              ; preds = %347
  br i1 %352, label %371, label %354

354:                                              ; preds = %353
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %21) #18
          to label %355 unwind label %362

355:                                              ; preds = %354
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %22) #18
          to label %356 unwind label %364

356:                                              ; preds = %355
  %357 = invoke noundef zeroext i1 @_ZN9GameState13play_textmoveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull %23, ptr noundef nonnull %24) #18
          to label %358 unwind label %366

358:                                              ; preds = %356
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #20
  %359 = load i32, ptr %5, align 4, !tbaa !230
  br i1 %357, label %370, label %373

360:                                              ; preds = %340
  %361 = landingpad { ptr, i32 }
          cleanup
  br label %379

362:                                              ; preds = %373, %370, %354, %347, %345, %343, %341
  %363 = landingpad { ptr, i32 }
          cleanup
  br label %377

364:                                              ; preds = %355
  %365 = landingpad { ptr, i32 }
          cleanup
  br label %368

366:                                              ; preds = %356
  %367 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #20
  br label %368

368:                                              ; preds = %366, %364
  %369 = phi { ptr, i32 } [ %367, %366 ], [ %365, %364 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #20
  br label %377

370:                                              ; preds = %358
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %359, ptr noundef nonnull @.str.25) #18
          to label %376 unwind label %362

371:                                              ; preds = %353
  %372 = load i32, ptr %5, align 4, !tbaa !230
  br label %373

373:                                              ; preds = %358, %371
  %374 = phi i32 [ %372, %371 ], [ %359, %358 ]
  %375 = phi ptr [ @.str.36, %371 ], [ @.str.39, %358 ]
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %374, ptr noundef nonnull %375) #18
          to label %376 unwind label %362

376:                                              ; preds = %373, %370
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %19) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %19) #19
  br label %953

377:                                              ; preds = %368, %362
  %378 = phi { ptr, i32 } [ %363, %362 ], [ %369, %368 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %22) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %19) #20
  br label %379

379:                                              ; preds = %377, %360
  %380 = phi { ptr, i32 } [ %378, %377 ], [ %361, %360 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %19) #19
  br label %954

381:                                              ; preds = %328
  %382 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, i64 noundef 0) #20
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %448

384:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %25) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %25, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %385 unwind label %400

385:                                              ; preds = %384
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #20
  %386 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(32) %26) #18
          to label %387 unwind label %402

387:                                              ; preds = %385
  %388 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(32) %26) #18
          to label %389 unwind label %402

389:                                              ; preds = %387
  %390 = load ptr, ptr %25, align 8, !tbaa !236
  %391 = getelementptr i8, ptr %390, i64 -24
  %392 = load i64, ptr %391, align 8
  %393 = getelementptr inbounds i8, ptr %25, i64 %392
  %394 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %393) #18
          to label %395 unwind label %402

395:                                              ; preds = %389
  br i1 %394, label %441, label %396

396:                                              ; preds = %395
  %397 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.40) #18
  br i1 %397, label %412, label %398

398:                                              ; preds = %396
  %399 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.41) #18
  br i1 %399, label %412, label %406

400:                                              ; preds = %384
  %401 = landingpad { ptr, i32 }
          cleanup
  br label %446

402:                                              ; preds = %441, %389, %387, %385
  %403 = landingpad { ptr, i32 }
          cleanup
  br label %444

404:                                              ; preds = %410
  %405 = landingpad { ptr, i32 }
          cleanup
  br label %444

406:                                              ; preds = %398
  %407 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.42) #18
  br i1 %407, label %412, label %408

408:                                              ; preds = %406
  %409 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.43) #18
  br i1 %409, label %412, label %410

410:                                              ; preds = %408
  %411 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %411, ptr noundef nonnull @.str.44) #18
          to label %443 unwind label %404

412:                                              ; preds = %406, %408, %396, %398
  %413 = phi i32 [ 1, %398 ], [ 1, %396 ], [ 0, %408 ], [ 0, %406 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #19
  %414 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %415 unwind label %425

415:                                              ; preds = %412
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %414, ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %416 unwind label %427

416:                                              ; preds = %415
  call void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %414) #20
  %417 = call noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %27) #20
  %418 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %417, i32 noundef %413, i32 noundef 0) #18
          to label %419 unwind label %429

419:                                              ; preds = %416
  invoke void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %413, i32 noundef %418) #18
          to label %420 unwind label %429

420:                                              ; preds = %419
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %28) #19
  invoke void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %418) #18
          to label %421 unwind label %431

421:                                              ; preds = %420
  %422 = load i32, ptr %5, align 4, !tbaa !230
  %423 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %28) #20
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %422, ptr noundef nonnull @.str.45, ptr noundef %423) #18
          to label %424 unwind label %433

424:                                              ; preds = %421
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %28) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #19
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #19
  br label %443

425:                                              ; preds = %412
  %426 = landingpad { ptr, i32 }
          cleanup
  br label %439

427:                                              ; preds = %415
  %428 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %414) #26
  br label %439

429:                                              ; preds = %419, %416
  %430 = landingpad { ptr, i32 }
          cleanup
  br label %437

431:                                              ; preds = %420
  %432 = landingpad { ptr, i32 }
          cleanup
  br label %435

433:                                              ; preds = %421
  %434 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %28) #20
  br label %435

435:                                              ; preds = %433, %431
  %436 = phi { ptr, i32 } [ %434, %433 ], [ %432, %431 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #19
  br label %437

437:                                              ; preds = %435, %429
  %438 = phi { ptr, i32 } [ %436, %435 ], [ %430, %429 ]
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #20
  br label %439

439:                                              ; preds = %437, %427, %425
  %440 = phi { ptr, i32 } [ %438, %437 ], [ %428, %427 ], [ %426, %425 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #19
  br label %444

441:                                              ; preds = %395
  %442 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %442, ptr noundef nonnull @.str.36) #18
          to label %443 unwind label %402

443:                                              ; preds = %441, %424, %410
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %25) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %25) #19
  br label %953

444:                                              ; preds = %404, %439, %402
  %445 = phi { ptr, i32 } [ %403, %402 ], [ %440, %439 ], [ %405, %404 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %25) #20
  br label %446

446:                                              ; preds = %444, %400
  %447 = phi { ptr, i32 } [ %445, %444 ], [ %401, %400 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %25) #19
  br label %954

448:                                              ; preds = %381
  %449 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.20, i64 noundef 0) #20
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %516

451:                                              ; preds = %448
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %29) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %29, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %452 unwind label %467

452:                                              ; preds = %451
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %30) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #20
  %453 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(32) %30) #18
          to label %454 unwind label %469

454:                                              ; preds = %452
  %455 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(32) %30) #18
          to label %456 unwind label %469

456:                                              ; preds = %454
  %457 = load ptr, ptr %29, align 8, !tbaa !236
  %458 = getelementptr i8, ptr %457, i64 -24
  %459 = load i64, ptr %458, align 8
  %460 = getelementptr inbounds i8, ptr %29, i64 %459
  %461 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %460) #18
          to label %462 unwind label %469

462:                                              ; preds = %456
  br i1 %461, label %509, label %463

463:                                              ; preds = %462
  %464 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.40) #18
  br i1 %464, label %479, label %465

465:                                              ; preds = %463
  %466 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.41) #18
  br i1 %466, label %479, label %473

467:                                              ; preds = %451
  %468 = landingpad { ptr, i32 }
          cleanup
  br label %514

469:                                              ; preds = %509, %456, %454, %452
  %470 = landingpad { ptr, i32 }
          cleanup
  br label %512

471:                                              ; preds = %479, %477
  %472 = landingpad { ptr, i32 }
          cleanup
  br label %512

473:                                              ; preds = %465
  %474 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.42) #18
  br i1 %474, label %479, label %475

475:                                              ; preds = %473
  %476 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull @.str.43) #18
  br i1 %476, label %479, label %477

477:                                              ; preds = %475
  %478 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %478, ptr noundef nonnull @.str.44) #18
          to label %511 unwind label %471

479:                                              ; preds = %473, %475, %463, %465
  %480 = phi i32 [ 1, %465 ], [ 1, %463 ], [ 0, %475 ], [ 0, %473 ]
  invoke void @_ZN9FastState10set_passesEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef 0) #18
          to label %481 unwind label %471

481:                                              ; preds = %479
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %31) #19
  %482 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %483 unwind label %493

483:                                              ; preds = %481
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %482, ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %484 unwind label %495

484:                                              ; preds = %483
  call void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %482) #20
  %485 = call noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %31) #20
  %486 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %485, i32 noundef %480, i32 noundef 1) #18
          to label %487 unwind label %497

487:                                              ; preds = %484
  invoke void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %480, i32 noundef %486) #18
          to label %488 unwind label %497

488:                                              ; preds = %487
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %32) #19
  invoke void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %486) #18
          to label %489 unwind label %499

489:                                              ; preds = %488
  %490 = load i32, ptr %5, align 4, !tbaa !230
  %491 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %32) #20
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %490, ptr noundef nonnull @.str.45, ptr noundef %491) #18
          to label %492 unwind label %501

492:                                              ; preds = %489
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %32) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #19
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %31) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #19
  br label %511

493:                                              ; preds = %481
  %494 = landingpad { ptr, i32 }
          cleanup
  br label %507

495:                                              ; preds = %483
  %496 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %482) #26
  br label %507

497:                                              ; preds = %487, %484
  %498 = landingpad { ptr, i32 }
          cleanup
  br label %505

499:                                              ; preds = %488
  %500 = landingpad { ptr, i32 }
          cleanup
  br label %503

501:                                              ; preds = %489
  %502 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %32) #20
  br label %503

503:                                              ; preds = %501, %499
  %504 = phi { ptr, i32 } [ %502, %501 ], [ %500, %499 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %32) #19
  br label %505

505:                                              ; preds = %503, %497
  %506 = phi { ptr, i32 } [ %504, %503 ], [ %498, %497 ]
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %31) #20
  br label %507

507:                                              ; preds = %505, %495, %493
  %508 = phi { ptr, i32 } [ %506, %505 ], [ %496, %495 ], [ %494, %493 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %31) #19
  br label %512

509:                                              ; preds = %462
  %510 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %510, ptr noundef nonnull @.str.36) #18
          to label %511 unwind label %469

511:                                              ; preds = %509, %492, %477
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %29) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %29) #19
  br label %953

512:                                              ; preds = %471, %507, %469
  %513 = phi { ptr, i32 } [ %470, %469 ], [ %508, %507 ], [ %472, %471 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %30) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %30) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %29) #20
  br label %514

514:                                              ; preds = %512, %467
  %515 = phi { ptr, i32 } [ %513, %512 ], [ %468, %467 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %29) #19
  br label %954

516:                                              ; preds = %448
  %517 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.13, i64 noundef 0) #20
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %519, label %526

519:                                              ; preds = %516
  %520 = invoke noundef zeroext i1 @_ZN9GameState9undo_moveEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %521 unwind label %141

521:                                              ; preds = %519
  %522 = load i32, ptr %5, align 4, !tbaa !230
  br i1 %520, label %180, label %523

523:                                              ; preds = %521, %951
  %524 = phi i32 [ %952, %951 ], [ %522, %521 ]
  %525 = phi ptr [ @.str.58, %951 ], [ @.str.46, %521 ]
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %524, ptr noundef nonnull %525) #18
          to label %953 unwind label %141

526:                                              ; preds = %516
  %527 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.12, i64 noundef 0) #20
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %526
  %530 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %530, ptr noundef nonnull @.str.25) #18
          to label %531 unwind label %141

531:                                              ; preds = %529
  invoke void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %953 unwind label %141

532:                                              ; preds = %526
  %533 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.19, i64 noundef 0) #20
  %534 = icmp eq i64 %533, 0
  br i1 %534, label %535, label %556

535:                                              ; preds = %532
  %536 = invoke noundef float @_ZN9FastState8get_komiEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #18
          to label %537 unwind label %546

537:                                              ; preds = %535
  %538 = invoke noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %536) #18
          to label %539 unwind label %546

539:                                              ; preds = %537
  %540 = fpext float %538 to double
  %541 = fcmp olt double %540, -1.000000e-01
  br i1 %541, label %542, label %548

542:                                              ; preds = %539
  %543 = load i32, ptr %5, align 4, !tbaa !230
  %544 = call noundef float @_ZSt4fabsf(float noundef %538) #18
  %545 = fpext float %544 to double
  br label %551

546:                                              ; preds = %551, %555, %537, %535
  %547 = landingpad { ptr, i32 }
          cleanup
  br label %954

548:                                              ; preds = %539
  %549 = fcmp ogt double %540, 1.000000e-01
  %550 = load i32, ptr %5, align 4, !tbaa !230
  br i1 %549, label %551, label %555

551:                                              ; preds = %548, %542
  %552 = phi i32 [ %543, %542 ], [ %550, %548 ]
  %553 = phi ptr [ @.str.47, %542 ], [ @.str.48, %548 ]
  %554 = phi double [ %545, %542 ], [ %540, %548 ]
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %552, ptr noundef nonnull %553, double noundef %554) #18
          to label %953 unwind label %546

555:                                              ; preds = %548
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %550, ptr noundef nonnull @.str.49) #18
          to label %953 unwind label %546

556:                                              ; preds = %532
  %557 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.14, i64 noundef 0) #20
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %559, label %578

559:                                              ; preds = %556
  %560 = invoke noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #18
          to label %561 unwind label %568

561:                                              ; preds = %559
  %562 = fpext float %560 to double
  %563 = fcmp olt double %562, -1.000000e-01
  br i1 %563, label %564, label %570

564:                                              ; preds = %561
  %565 = load i32, ptr %5, align 4, !tbaa !230
  %566 = call noundef float @_ZSt4fabsf(float noundef %560) #18
  %567 = fpext float %566 to double
  br label %573

568:                                              ; preds = %573, %577, %559
  %569 = landingpad { ptr, i32 }
          cleanup
  br label %954

570:                                              ; preds = %561
  %571 = fcmp ogt double %562, 1.000000e-01
  %572 = load i32, ptr %5, align 4, !tbaa !230
  br i1 %571, label %573, label %577

573:                                              ; preds = %570, %564
  %574 = phi i32 [ %565, %564 ], [ %572, %570 ]
  %575 = phi ptr [ @.str.47, %564 ], [ @.str.48, %570 ]
  %576 = phi double [ %567, %564 ], [ %562, %570 ]
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %574, ptr noundef nonnull %575, double noundef %576) #18
          to label %953 unwind label %568

577:                                              ; preds = %570
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %572, ptr noundef nonnull @.str.49) #18
          to label %953 unwind label %568

578:                                              ; preds = %556
  %579 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.15, i64 noundef 0) #20
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %611

581:                                              ; preds = %578
  %582 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.50, i64 noundef 0) #20
  %583 = icmp eq i64 %582, -1
  br i1 %583, label %595, label %584

584:                                              ; preds = %581
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %33) #19
  invoke void @_ZN3GTP13get_life_listB5cxx11ER9GameStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8508) %0, i1 noundef zeroext true) #18
          to label %585 unwind label %589

585:                                              ; preds = %584
  %586 = load i32, ptr %5, align 4, !tbaa !230
  %587 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %33) #20
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %586, ptr noundef %587) #18
          to label %588 unwind label %591

588:                                              ; preds = %585
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #19
  br label %953

589:                                              ; preds = %584
  %590 = landingpad { ptr, i32 }
          cleanup
  br label %593

591:                                              ; preds = %585
  %592 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #20
  br label %593

593:                                              ; preds = %591, %589
  %594 = phi { ptr, i32 } [ %592, %591 ], [ %590, %589 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %33) #19
  br label %954

595:                                              ; preds = %581
  %596 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.51, i64 noundef 0) #20
  %597 = icmp eq i64 %596, -1
  br i1 %597, label %609, label %598

598:                                              ; preds = %595
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %34) #19
  invoke void @_ZN3GTP13get_life_listB5cxx11ER9GameStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8508) %0, i1 noundef zeroext false) #18
          to label %599 unwind label %603

599:                                              ; preds = %598
  %600 = load i32, ptr %5, align 4, !tbaa !230
  %601 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %34) #20
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %600, ptr noundef %601) #18
          to label %602 unwind label %605

602:                                              ; preds = %599
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %34) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %34) #19
  br label %953

603:                                              ; preds = %598
  %604 = landingpad { ptr, i32 }
          cleanup
  br label %607

605:                                              ; preds = %599
  %606 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %34) #20
  br label %607

607:                                              ; preds = %605, %603
  %608 = phi { ptr, i32 } [ %606, %605 ], [ %604, %603 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %34) #19
  br label %954

609:                                              ; preds = %595
  %610 = load i32, ptr %5, align 4, !tbaa !230
  br label %180

611:                                              ; preds = %578
  %612 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.16, i64 noundef 0) #20
  %613 = icmp eq i64 %612, 0
  br i1 %613, label %614, label %647

614:                                              ; preds = %611
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %35) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %35, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %615 unwind label %638

615:                                              ; preds = %614
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %36) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #19
  %616 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(32) %36) #18
          to label %617 unwind label %640

617:                                              ; preds = %615
  %618 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %616, ptr noundef nonnull align 4 dereferenceable(4) %37) #18
          to label %619 unwind label %640

619:                                              ; preds = %617
  %620 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %618, ptr noundef nonnull align 4 dereferenceable(4) %38) #18
          to label %621 unwind label %640

621:                                              ; preds = %619
  %622 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %620, ptr noundef nonnull align 4 dereferenceable(4) %39) #18
          to label %623 unwind label %640

623:                                              ; preds = %621
  %624 = load ptr, ptr %35, align 8, !tbaa !236
  %625 = getelementptr i8, ptr %624, i64 -24
  %626 = load i64, ptr %625, align 8
  %627 = getelementptr inbounds i8, ptr %35, i64 %626
  %628 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %627) #18
          to label %629 unwind label %640

629:                                              ; preds = %623
  br i1 %628, label %642, label %630

630:                                              ; preds = %629
  %631 = load i32, ptr %37, align 4, !tbaa !230
  %632 = mul nsw i32 %631, 100
  %633 = load i32, ptr %38, align 4, !tbaa !230
  %634 = mul nsw i32 %633, 100
  %635 = load i32, ptr %39, align 4, !tbaa !230
  invoke void @_ZN9GameState15set_timecontrolEiii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %632, i32 noundef %634, i32 noundef %635) #18
          to label %636 unwind label %640

636:                                              ; preds = %630
  %637 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %637, ptr noundef nonnull @.str.25) #18
          to label %644 unwind label %640

638:                                              ; preds = %614
  %639 = landingpad { ptr, i32 }
          cleanup
  br label %645

640:                                              ; preds = %642, %636, %630, %623, %621, %619, %617, %615
  %641 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %35) #20
  br label %645

642:                                              ; preds = %629
  %643 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %643, ptr noundef nonnull @.str.36) #18
          to label %644 unwind label %640

644:                                              ; preds = %642, %636
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %36) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %36) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %35) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %35) #19
  br label %953

645:                                              ; preds = %640, %638
  %646 = phi { ptr, i32 } [ %641, %640 ], [ %639, %638 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %35) #19
  br label %954

647:                                              ; preds = %611
  %648 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.17, i64 noundef 0) #20
  %649 = icmp eq i64 %648, 0
  br i1 %649, label %650, label %696

650:                                              ; preds = %647
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %40) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %40, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %651 unwind label %670

651:                                              ; preds = %650
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %41) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %41) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %42) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %42) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #19
  %652 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(32) %41) #18
          to label %653 unwind label %672

653:                                              ; preds = %651
  %654 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %652, ptr noundef nonnull align 8 dereferenceable(32) %42) #18
          to label %655 unwind label %672

655:                                              ; preds = %653
  %656 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %654, ptr noundef nonnull align 4 dereferenceable(4) %43) #18
          to label %657 unwind label %672

657:                                              ; preds = %655
  %658 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %656, ptr noundef nonnull align 4 dereferenceable(4) %44) #18
          to label %659 unwind label %672

659:                                              ; preds = %657
  %660 = load ptr, ptr %40, align 8, !tbaa !236
  %661 = getelementptr i8, ptr %660, i64 -24
  %662 = load i64, ptr %661, align 8
  %663 = getelementptr inbounds i8, ptr %40, i64 %662
  %664 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %663) #18
          to label %665 unwind label %672

665:                                              ; preds = %659
  br i1 %664, label %689, label %666

666:                                              ; preds = %665
  %667 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.40) #18
  br i1 %667, label %682, label %668

668:                                              ; preds = %666
  %669 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.41) #18
  br i1 %669, label %682, label %676

670:                                              ; preds = %650
  %671 = landingpad { ptr, i32 }
          cleanup
  br label %694

672:                                              ; preds = %689, %659, %657, %655, %653, %651
  %673 = landingpad { ptr, i32 }
          cleanup
  br label %692

674:                                              ; preds = %687, %682, %680
  %675 = landingpad { ptr, i32 }
          cleanup
  br label %692

676:                                              ; preds = %668
  %677 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.42) #18
  br i1 %677, label %682, label %678

678:                                              ; preds = %676
  %679 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.43) #18
  br i1 %679, label %682, label %680

680:                                              ; preds = %678
  %681 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %681, ptr noundef nonnull @.str.52) #18
          to label %691 unwind label %674

682:                                              ; preds = %676, %678, %666, %668
  %683 = phi i32 [ 1, %668 ], [ 1, %666 ], [ 0, %678 ], [ 0, %676 ]
  %684 = load i32, ptr %43, align 4, !tbaa !230
  %685 = mul nsw i32 %684, 100
  %686 = load i32, ptr %44, align 4, !tbaa !230
  invoke void @_ZN9GameState11adjust_timeEiii(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %683, i32 noundef %685, i32 noundef %686) #18
          to label %687 unwind label %674

687:                                              ; preds = %682
  %688 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %688, ptr noundef nonnull @.str.25) #18
          to label %691 unwind label %674

689:                                              ; preds = %665
  %690 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %690, ptr noundef nonnull @.str.36) #18
          to label %691 unwind label %672

691:                                              ; preds = %680, %689, %687
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %42) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %42) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %41) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %40) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %40) #19
  br label %953

692:                                              ; preds = %674, %672
  %693 = phi { ptr, i32 } [ %673, %672 ], [ %675, %674 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %42) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %42) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %41) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %40) #20
  br label %694

694:                                              ; preds = %692, %670
  %695 = phi { ptr, i32 } [ %693, %692 ], [ %671, %670 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %40) #19
  br label %954

696:                                              ; preds = %647
  %697 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.53, i64 noundef 0) #20
  %698 = icmp eq i64 %697, 0
  br i1 %698, label %699, label %721

699:                                              ; preds = %696, %711
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #19
  %700 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %701 unwind label %713

701:                                              ; preds = %699
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %700, ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %702 unwind label %715

702:                                              ; preds = %701
  call void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull %700) #20
  %703 = call noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #20
  %704 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #18
          to label %705 unwind label %717

705:                                              ; preds = %702
  %706 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %703, i32 noundef %704, i32 noundef 0) #18
          to label %707 unwind label %717

707:                                              ; preds = %705
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %706) #18
          to label %708 unwind label %717

708:                                              ; preds = %707
  invoke void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %709 unwind label %717

709:                                              ; preds = %708
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %45) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #19
  %710 = invoke noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #18
          to label %711 unwind label %139

711:                                              ; preds = %709
  %712 = icmp slt i32 %710, 2
  br i1 %712, label %699, label %953, !llvm.loop !240

713:                                              ; preds = %699
  %714 = landingpad { ptr, i32 }
          cleanup
  br label %719

715:                                              ; preds = %701
  %716 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %700) #26
  br label %719

717:                                              ; preds = %708, %707, %705, %702
  %718 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %45) #20
  br label %719

719:                                              ; preds = %717, %715, %713
  %720 = phi { ptr, i32 } [ %718, %717 ], [ %716, %715 ], [ %714, %713 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #19
  br label %954

721:                                              ; preds = %696
  %722 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.54, i64 noundef 0) #20
  %723 = icmp eq i64 %722, 0
  br i1 %723, label %724, label %725

724:                                              ; preds = %721
  invoke void @_ZN7Playout20do_playout_benchmarkER9GameState(ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %953 unwind label %141

725:                                              ; preds = %721
  %726 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.55, i64 noundef 0) #20
  %727 = icmp eq i64 %726, 0
  br i1 %727, label %728, label %757

728:                                              ; preds = %725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %46) #19
  %729 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25
          to label %730 unwind label %741

730:                                              ; preds = %728
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %729, ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
          to label %731 unwind label %743

731:                                              ; preds = %730
  call void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull %729) #20
  %732 = call noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %46) #20
  %733 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #18
          to label %734 unwind label %745

734:                                              ; preds = %731
  %735 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %732, i32 noundef %733, i32 noundef 0) #18
          to label %736 unwind label %745

736:                                              ; preds = %734
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %735) #18
          to label %737 unwind label %745

737:                                              ; preds = %736
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %47) #19
  invoke void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %735) #18
          to label %738 unwind label %747

738:                                              ; preds = %737
  %739 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %47) #20
  invoke void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.56, ptr noundef %739) #18
          to label %740 unwind label %749

740:                                              ; preds = %738
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %47) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %47) #19
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %46) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #19
  br label %953

741:                                              ; preds = %728
  %742 = landingpad { ptr, i32 }
          cleanup
  br label %755

743:                                              ; preds = %730
  %744 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %729) #26
  br label %755

745:                                              ; preds = %736, %734, %731
  %746 = landingpad { ptr, i32 }
          cleanup
  br label %753

747:                                              ; preds = %737
  %748 = landingpad { ptr, i32 }
          cleanup
  br label %751

749:                                              ; preds = %738
  %750 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %47) #20
  br label %751

751:                                              ; preds = %749, %747
  %752 = phi { ptr, i32 } [ %750, %749 ], [ %748, %747 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %47) #19
  br label %753

753:                                              ; preds = %751, %745
  %754 = phi { ptr, i32 } [ %752, %751 ], [ %746, %745 ]
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %46) #20
  br label %755

755:                                              ; preds = %753, %743, %741
  %756 = phi { ptr, i32 } [ %754, %753 ], [ %744, %743 ], [ %742, %741 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %46) #19
  br label %954

757:                                              ; preds = %725
  %758 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.18, i64 noundef 0) #20
  %759 = icmp eq i64 %758, 0
  br i1 %759, label %760, label %767

760:                                              ; preds = %757
  %761 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %761, ptr noundef nonnull @.str.25) #18
          to label %762 unwind label %141

762:                                              ; preds = %760
  invoke void @_ZN9FastBoard9influenceEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %48, ptr noundef nonnull align 8 dereferenceable(8052) %0) #18
          to label %763 unwind label %141

763:                                              ; preds = %762
  invoke void @_ZN9FastBoard11display_mapESt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull %48) #18
          to label %764 unwind label %765

764:                                              ; preds = %763
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #20
  br label %953

765:                                              ; preds = %763
  %766 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %48) #20
  br label %954

767:                                              ; preds = %757
  %768 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.21, i64 noundef 0) #20
  %769 = icmp eq i64 %768, 0
  br i1 %769, label %770, label %801

770:                                              ; preds = %767
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %49) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %49, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %771 unwind label %784

771:                                              ; preds = %770
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %50) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %50) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51) #19
  %772 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(32) %50) #18
          to label %773 unwind label %786

773:                                              ; preds = %771
  %774 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 4 dereferenceable(4) %51) #18
          to label %775 unwind label %786

775:                                              ; preds = %773
  %776 = load i32, ptr %51, align 4, !tbaa !230
  %777 = invoke noundef zeroext i1 @_ZN9GameState18set_fixed_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %776) #18
          to label %778 unwind label %786

778:                                              ; preds = %775
  br i1 %777, label %779, label %794

779:                                              ; preds = %778
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %52) #19
  invoke void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, ptr noundef nonnull align 8 dereferenceable(8052) %0) #18
          to label %780 unwind label %788

780:                                              ; preds = %779
  %781 = load i32, ptr %5, align 4, !tbaa !230
  %782 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %52) #20
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %781, ptr noundef nonnull @.str.45, ptr noundef %782) #18
          to label %783 unwind label %790

783:                                              ; preds = %780
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %52) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %52) #19
  br label %796

784:                                              ; preds = %770
  %785 = landingpad { ptr, i32 }
          cleanup
  br label %799

786:                                              ; preds = %794, %775, %773, %771
  %787 = landingpad { ptr, i32 }
          cleanup
  br label %797

788:                                              ; preds = %779
  %789 = landingpad { ptr, i32 }
          cleanup
  br label %792

790:                                              ; preds = %780
  %791 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %52) #20
  br label %792

792:                                              ; preds = %790, %788
  %793 = phi { ptr, i32 } [ %791, %790 ], [ %789, %788 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %52) #19
  br label %797

794:                                              ; preds = %778
  %795 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %795, ptr noundef nonnull @.str.57) #18
          to label %796 unwind label %786

796:                                              ; preds = %794, %783
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %50) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %50) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %49) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %49) #19
  br label %953

797:                                              ; preds = %792, %786
  %798 = phi { ptr, i32 } [ %793, %792 ], [ %787, %786 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %50) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %50) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %49) #20
  br label %799

799:                                              ; preds = %797, %784
  %800 = phi { ptr, i32 } [ %798, %797 ], [ %785, %784 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %49) #19
  br label %954

801:                                              ; preds = %767
  %802 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.22, i64 noundef 0) #20
  %803 = icmp eq i64 %802, 0
  br i1 %803, label %804, label %830

804:                                              ; preds = %801
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %53) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %53, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %805 unwind label %816

805:                                              ; preds = %804
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %54) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %54) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %55) #19
  %806 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(32) %54) #18
          to label %807 unwind label %818

807:                                              ; preds = %805
  %808 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 4 dereferenceable(4) %55) #18
          to label %809 unwind label %818

809:                                              ; preds = %807
  %810 = load i32, ptr %55, align 4, !tbaa !230
  invoke void @_ZN9GameState19place_free_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %810) #18
          to label %811 unwind label %818

811:                                              ; preds = %809
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %56) #19
  invoke void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr noundef nonnull align 8 dereferenceable(8052) %0) #18
          to label %812 unwind label %820

812:                                              ; preds = %811
  %813 = load i32, ptr %5, align 4, !tbaa !230
  %814 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %56) #20
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %813, ptr noundef nonnull @.str.45, ptr noundef %814) #18
          to label %815 unwind label %822

815:                                              ; preds = %812
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %56) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %56) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %55) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %54) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %54) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %53) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %53) #19
  br label %953

816:                                              ; preds = %804
  %817 = landingpad { ptr, i32 }
          cleanup
  br label %828

818:                                              ; preds = %809, %807, %805
  %819 = landingpad { ptr, i32 }
          cleanup
  br label %826

820:                                              ; preds = %811
  %821 = landingpad { ptr, i32 }
          cleanup
  br label %824

822:                                              ; preds = %812
  %823 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %56) #20
  br label %824

824:                                              ; preds = %822, %820
  %825 = phi { ptr, i32 } [ %823, %822 ], [ %821, %820 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %56) #19
  br label %826

826:                                              ; preds = %824, %818
  %827 = phi { ptr, i32 } [ %825, %824 ], [ %819, %818 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %55) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %54) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %54) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %53) #20
  br label %828

828:                                              ; preds = %826, %816
  %829 = phi { ptr, i32 } [ %827, %826 ], [ %817, %816 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %53) #19
  br label %954

830:                                              ; preds = %801
  %831 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.23, i64 noundef 0) #20
  %832 = icmp eq i64 %831, 0
  br i1 %832, label %833, label %898

833:                                              ; preds = %830
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %57) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %57, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %834 unwind label %852

834:                                              ; preds = %833
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %58) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %58) #20
  %835 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(32) %58) #18
          to label %836 unwind label %856

836:                                              ; preds = %834, %880
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %59) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %59) #20
  %837 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(32) %59) #18
          to label %838 unwind label %858

838:                                              ; preds = %836
  %839 = load ptr, ptr %57, align 8, !tbaa !236
  %840 = getelementptr i8, ptr %839, i64 -24
  %841 = load i64, ptr %840, align 8
  %842 = getelementptr inbounds i8, ptr %57, i64 %841
  %843 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %842) #18
          to label %844 unwind label %858

844:                                              ; preds = %838
  br i1 %843, label %874, label %845

845:                                              ; preds = %844
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %61) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %61) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %61) #18
          to label %846 unwind label %860

846:                                              ; preds = %845
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(32) %59) #18
          to label %847 unwind label %862

847:                                              ; preds = %846
  %848 = invoke noundef zeroext i1 @_ZN9GameState13play_textmoveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull %60, ptr noundef nonnull %62) #18
          to label %849 unwind label %864

849:                                              ; preds = %847
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %62) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %60) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %61) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %61) #19
  br i1 %848, label %870, label %850

850:                                              ; preds = %849
  %851 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef %851, ptr noundef nonnull @.str.39) #18
          to label %874 unwind label %858

852:                                              ; preds = %833
  %853 = landingpad { ptr, i32 }
          cleanup
  br label %896

854:                                              ; preds = %874
  %855 = landingpad { ptr, i32 }
          cleanup
  br label %894

856:                                              ; preds = %834
  %857 = landingpad { ptr, i32 }
          cleanup
  br label %894

858:                                              ; preds = %872, %870, %850, %838, %836
  %859 = landingpad { ptr, i32 }
          cleanup
  br label %886

860:                                              ; preds = %845
  %861 = landingpad { ptr, i32 }
          cleanup
  br label %868

862:                                              ; preds = %846
  %863 = landingpad { ptr, i32 }
          cleanup
  br label %866

864:                                              ; preds = %847
  %865 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %62) #20
  br label %866

866:                                              ; preds = %864, %862
  %867 = phi { ptr, i32 } [ %865, %864 ], [ %863, %862 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %60) #20
  br label %868

868:                                              ; preds = %866, %860
  %869 = phi { ptr, i32 } [ %867, %866 ], [ %861, %860 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %61) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %61) #19
  br label %886

870:                                              ; preds = %849
  %871 = invoke noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #18
          to label %872 unwind label %858

872:                                              ; preds = %870
  %873 = add nsw i32 %871, 1
  invoke void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %873) #18
          to label %874 unwind label %858

874:                                              ; preds = %850, %872, %844
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %59) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %59) #19
  %875 = load ptr, ptr %57, align 8, !tbaa !236
  %876 = getelementptr i8, ptr %875, i64 -24
  %877 = load i64, ptr %876, align 8
  %878 = getelementptr inbounds i8, ptr %57, i64 %877
  %879 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %878) #18
          to label %880 unwind label %854

880:                                              ; preds = %874
  br i1 %879, label %881, label %836, !llvm.loop !241

881:                                              ; preds = %880
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %63) #19
  invoke void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, ptr noundef nonnull align 8 dereferenceable(8052) %0) #18
          to label %882 unwind label %888

882:                                              ; preds = %881
  %883 = load i32, ptr %5, align 4, !tbaa !230
  %884 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %63) #20
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %883, ptr noundef nonnull @.str.45, ptr noundef %884) #18
          to label %885 unwind label %890

885:                                              ; preds = %882
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %63) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %63) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %58) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %58) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %57) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %57) #19
  br label %953

886:                                              ; preds = %868, %858
  %887 = phi { ptr, i32 } [ %859, %858 ], [ %869, %868 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %59) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %59) #19
  br label %894

888:                                              ; preds = %881
  %889 = landingpad { ptr, i32 }
          cleanup
  br label %892

890:                                              ; preds = %882
  %891 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %63) #20
  br label %892

892:                                              ; preds = %890, %888
  %893 = phi { ptr, i32 } [ %891, %890 ], [ %889, %888 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %63) #19
  br label %894

894:                                              ; preds = %854, %856, %892, %886
  %895 = phi { ptr, i32 } [ %893, %892 ], [ %887, %886 ], [ %855, %854 ], [ %857, %856 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %58) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %58) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %57) #20
  br label %896

896:                                              ; preds = %894, %852
  %897 = phi { ptr, i32 } [ %895, %894 ], [ %853, %852 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %57) #19
  br label %954

898:                                              ; preds = %830
  %899 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.24, i64 noundef 0) #20
  %900 = icmp eq i64 %899, 0
  br i1 %900, label %901, label %951

901:                                              ; preds = %898
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %64) #19
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %64, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 8) #18
          to label %902 unwind label %916

902:                                              ; preds = %901
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %65) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %65) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %66) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %66) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %67) #19
  %903 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(32) %65) #18
          to label %904 unwind label %918

904:                                              ; preds = %902
  %905 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(32) %66) #18
          to label %906 unwind label %918

906:                                              ; preds = %904
  %907 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 4 dereferenceable(4) %67) #18
          to label %908 unwind label %918

908:                                              ; preds = %906
  %909 = load ptr, ptr %64, align 8, !tbaa !236
  %910 = getelementptr i8, ptr %909, i64 -24
  %911 = load i64, ptr %910, align 8
  %912 = getelementptr inbounds i8, ptr %64, i64 %911
  %913 = invoke noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264) %912) #18
          to label %914 unwind label %918

914:                                              ; preds = %908
  br i1 %913, label %915, label %920

915:                                              ; preds = %914
  store i32 999, ptr %67, align 4, !tbaa !230
  br label %920

916:                                              ; preds = %901
  %917 = landingpad { ptr, i32 }
          cleanup
  br label %949

918:                                              ; preds = %908, %906, %904, %902
  %919 = landingpad { ptr, i32 }
          cleanup
  br label %947

920:                                              ; preds = %915, %914
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %68) #19
  %921 = invoke noalias noundef nonnull dereferenceable(8512) ptr @_Znwm(i64 noundef 8512) #25
          to label %922 unwind label %933

922:                                              ; preds = %920
  invoke void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512) %921) #18
          to label %923 unwind label %935

923:                                              ; preds = %922
  call void @_ZNSt8auto_ptrI7SGFTreeEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef nonnull %921) #20
  %924 = call noundef ptr @_ZNKSt8auto_ptrI7SGFTreeEptEv(ptr noundef nonnull align 8 dereferenceable(8) %68) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(32) %66) #18
          to label %925 unwind label %937

925:                                              ; preds = %923
  invoke void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512) %924, ptr noundef nonnull %69, i32 noundef 0) #18
          to label %926 unwind label %939

926:                                              ; preds = %925
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %69) #20
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %70) #19
  %927 = call noundef ptr @_ZNKSt8auto_ptrI7SGFTreeEptEv(ptr noundef nonnull align 8 dereferenceable(8) %68) #20
  %928 = load i32, ptr %67, align 4, !tbaa !230
  invoke void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind nonnull writable sret(%class.GameState) align 8 %70, ptr noundef nonnull align 8 dereferenceable(8512) %927, i32 noundef %928) #18
          to label %929 unwind label %941

929:                                              ; preds = %926
  %930 = call noundef nonnull align 8 dereferenceable(8508) ptr @_ZN9GameStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull align 8 dereferenceable(8508) %70) #20
  call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %70) #20
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %70) #19
  %931 = load i32, ptr %5, align 4, !tbaa !230
  invoke void (i32, ptr, ...) @_ZN5Utils10gtp_printfEiPKcz(i32 noundef %931, ptr noundef nonnull @.str.25) #18
          to label %932 unwind label %937

932:                                              ; preds = %929
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %68) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %68) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %67) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %66) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %66) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %65) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %65) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %64) #20
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %64) #19
  br label %953

933:                                              ; preds = %920
  %934 = landingpad { ptr, i32 }
          cleanup
  br label %945

935:                                              ; preds = %922
  %936 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %921) #26
  br label %945

937:                                              ; preds = %929, %923
  %938 = landingpad { ptr, i32 }
          cleanup
  br label %943

939:                                              ; preds = %925
  %940 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %69) #20
  br label %943

941:                                              ; preds = %926
  %942 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %70) #19
  br label %943

943:                                              ; preds = %941, %939, %937
  %944 = phi { ptr, i32 } [ %938, %937 ], [ %942, %941 ], [ %940, %939 ]
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %68) #20
  br label %945

945:                                              ; preds = %943, %935, %933
  %946 = phi { ptr, i32 } [ %944, %943 ], [ %936, %935 ], [ %934, %933 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %68) #19
  br label %947

947:                                              ; preds = %945, %918
  %948 = phi { ptr, i32 } [ %946, %945 ], [ %919, %918 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %67) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %66) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %66) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %65) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %65) #19
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %64) #20
  br label %949

949:                                              ; preds = %947, %916
  %950 = phi { ptr, i32 } [ %948, %947 ], [ %917, %916 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %64) #19
  br label %954

951:                                              ; preds = %898
  %952 = load i32, ptr %5, align 4, !tbaa !230
  br label %523

953:                                              ; preds = %711, %573, %551, %523, %180, %724, %588, %602, %577, %555, %531, %376, %174, %146, %73, %932, %885, %815, %796, %764, %740, %691, %644, %511, %443, %325, %291, %255, %222
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret i1 true

954:                                              ; preds = %139, %141, %949, %896, %828, %799, %765, %755, %719, %694, %645, %607, %593, %568, %546, %514, %446, %379, %326, %292, %260, %225, %168
  %955 = phi { ptr, i32 } [ %226, %225 ], [ %261, %260 ], [ %293, %292 ], [ %327, %326 ], [ %380, %379 ], [ %447, %446 ], [ %515, %514 ], [ %547, %546 ], [ %569, %568 ], [ %594, %593 ], [ %608, %607 ], [ %646, %645 ], [ %695, %694 ], [ %720, %719 ], [ %756, %755 ], [ %766, %765 ], [ %800, %799 ], [ %829, %828 ], [ %897, %896 ], [ %950, %949 ], [ %169, %168 ], [ %140, %139 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  br label %956

956:                                              ; preds = %954, %83
  %957 = phi { ptr, i32 } [ %84, %83 ], [ %955, %954 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %957
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !242 {
  %3 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #20
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #6 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsEPFRSt8ios_baseS0_E(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(216) ptr @_ZSt8noskipwsRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %0) #6 comdat !prof !243 {
  tail call void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 4096) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: optsize
declare void @_ZN5Utils10gtp_printfEiPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat !prof !208 {
  %3 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %4 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %8 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  %9 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %10 = tail call noundef i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(ptr noundef %7, ptr noundef %8, i64 noundef %9) #18
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i1 [ false, %2 ], [ %11, %6 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !208 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %4 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #18
          to label %7 unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  resume { ptr, i32 } %6

7:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #6 align 2

; Function Attrs: optsize
declare void @_ZN5Utils15gtp_fail_printfEiPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6 align 2

; Function Attrs: optsize
declare void @_ZN9FastState8set_komiEf(ptr noundef nonnull align 8 dereferenceable(8388), float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9GameState13play_textmoveENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8508), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90), ptr noundef nonnull align 8 dereferenceable(8508)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !244 {
  store ptr %1, ptr %0, align 8, !tbaa !245
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !244 {
  %2 = load ptr, ptr %0, align 8, !tbaa !245
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !244 {
  %2 = load ptr, ptr %0, align 8, !tbaa !245
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN9UCTSearchD2Ev(ptr noundef nonnull align 8 dereferenceable(90) %2) #20
  tail call void @_ZdlPv(ptr noundef nonnull %2) #26
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastState10set_passesEi(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9GameState9undo_moveEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef float @_ZN9FastState8get_komiEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt4fabsf(float noundef %0) local_unnamed_addr #5 comdat !prof !208 {
  %2 = tail call float @llvm.fabs.f32(float %0)
  ret float %2
}

; Function Attrs: optsize
declare noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState15set_timecontrolEiii(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState11adjust_timeEiii(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7Playout20do_playout_benchmarkER9GameState(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastBoard11display_mapESt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8052), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastBoard9influenceEv(ptr dead_on_unwind writable sret(%"class.std::vector.8") align 8, ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %2 = load ptr, ptr %0, align 8, !tbaa !248
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !250
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9GameState18set_fixed_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState19place_free_handicapEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastState12set_handicapEi(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI7SGFTreeEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !251 {
  store ptr %1, ptr %0, align 8, !tbaa !252
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8auto_ptrI7SGFTreeEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !252
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind writable sret(%class.GameState) align 8, ptr noundef nonnull align 8 dereferenceable(8512), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8508) ptr @_ZN9GameStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull align 8 dereferenceable(8508) %1) local_unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #20
  %4 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.GameState, ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI7KoStateSaIS0_EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  %7 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.GameState, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %7, ptr noundef nonnull align 8 dereferenceable(44) %8, i64 44, i1 false), !tbaa.struct !255
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !251 {
  %2 = load ptr, ptr %0, align 8, !tbaa !252
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %2) #20
  tail call void @_ZdlPv(ptr noundef nonnull %2) #26
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !243 {
  %3 = tail call noundef i32 @_ZStcoSt13_Ios_Fmtflags(i32 noundef %1) #18
  %4 = getelementptr inbounds %"class.std::ios_base", ptr %0, i64 0, i32 3
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZStaNRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZStaNRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #6 comdat !prof !243 {
  %3 = load i32, ptr %0, align 4, !tbaa !256
  %4 = tail call noundef i32 @_ZStanSt13_Ios_FmtflagsS_(i32 noundef %3, i32 noundef %1) #18
  store i32 %4, ptr %0, align 4, !tbaa !256
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZStcoSt13_Ios_Fmtflags(i32 noundef %0) local_unnamed_addr #5 comdat !prof !243 {
  %2 = xor i32 %0, -1
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZStanSt13_Ios_FmtflagsS_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 comdat !prof !243 {
  %3 = and i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8388) ptr @_ZN9FastStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #20
  %4 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #20
  %7 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #20
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI7KoStateSaIS0_EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !258 {
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8388) ptr @_ZN9FastStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) local_unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8072) ptr @_ZN9FullBoardaSEOS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #20
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(124) %5, i64 124, i1 false)
  %6 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 9
  %8 = tail call noundef nonnull align 4 dereferenceable(192) ptr @_ZN5boost5arrayISt4pairIiiELm24EEaSEOS3_(ptr noundef nonnull align 4 dereferenceable(192) %6, ptr noundef nonnull align 4 dereferenceable(192) %7) #20
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !259 {
  tail call void @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8072) ptr @_ZN9FullBoardaSEOS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) local_unnamed_addr #5 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSEOS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #20
  %4 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(192) ptr @_ZN5boost5arrayISt4pairIiiELm24EEaSEOS3_(ptr noundef nonnull align 4 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(192) %1) local_unnamed_addr #5 comdat align 2 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %0, i64 0, i64 %5
  %7 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %1, i64 0, i64 %5
  %8 = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSEOS0_(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) #20
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %3, label %4, !llvm.loop !260
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSEOS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #5 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !261
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %7, ptr %8, align 8, !tbaa !261
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !258 {
  tail call void @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !258 {
  %3 = alloca %"class.std::vector.8", align 8
  %4 = alloca %"class.std::allocator.10", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.10") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @_ZNSt6vectorIiSaIiEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZSt15__alloc_on_moveISaIiEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.10") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !258 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !258 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !259 {
  %3 = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaIiEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat !prof !258 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !272 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !273 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !274 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !274 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !258 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !275 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !276 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !277 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !223
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !223
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !278
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !278
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSEOS0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !279 {
  %3 = load i32, ptr %1, align 4, !tbaa !230
  store i32 %3, ptr %0, align 4, !tbaa !280
  %4 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !230
  %6 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !282
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !259 {
  %3 = alloca %"class.std::vector.15", align 8
  %4 = alloca %"class.std::allocator.17", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.17") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @_ZNSt6vectorIySaIyEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZSt15__alloc_on_moveISaIyEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.17") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !259 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !259 {
  tail call void @_ZNSt12_Vector_baseIySaIyEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !283 {
  %3 = alloca %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaIyEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat !prof !259 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !284 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !289 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !290 {
  tail call void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !290 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !259 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !291 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !292 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !293 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !223
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !223
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !294
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !294
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !295 {
  tail call void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !294
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !295 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !295 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !296 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !297

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !298 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !299 {
  tail call void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !299 {
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !258 {
  %3 = alloca %"class.std::vector.20", align 8
  %4 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.22") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZSt15__alloc_on_moveISaI7KoStateEEvRT_S3_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.22") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !258 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  tail call void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !258 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !259 {
  %3 = alloca %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaI7KoStateEEvRT_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat !prof !258 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !300 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !304
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !305 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !306 {
  tail call void @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !306 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !258 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !307 {
  tail call void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !308 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 !prof !277 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !223
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !223
  %4 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !309
  %6 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !309
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !301 {
  tail call void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !301 {
  %2 = load ptr, ptr %0, align 8, !tbaa !302
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !309
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8440
  invoke void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !301 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !301 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !310

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %class.KoState, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !311, !llvm.loop !312

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !313 {
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !314 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !315

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !316 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !317 {
  tail call void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !317 {
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !206 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !206 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat align 2 !prof !208 {
  tail call void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSaIcEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !206 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard.41, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #18
  store i64 %6, ptr %4, align 8, !tbaa !221
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !318

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #18
  %10 = load i64, ptr %4, align 8, !tbaa !221
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #18
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #20
  store ptr null, ptr %5, align 8, !tbaa !319
  %15 = load i64, ptr %4, align 8, !tbaa !221
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #18
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !206 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !223
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !206 {
  store ptr %1, ptr %0, align 8, !tbaa !319
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !206 {
  %2 = load ptr, ptr %0, align 8, !tbaa !319
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !321

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !206 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !206 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !208 {
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !322
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  invoke void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !208 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !323

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !208 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !208 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %2 = load ptr, ptr %0, align 8, !tbaa !324
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !326

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  %6 = load ptr, ptr %0, align 8, !tbaa !324
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !327
  %13 = sub nsw i64 0, %10
  %14 = getelementptr inbounds i64, ptr %12, i64 %13
  tail call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %14, i64 noundef %10) #18
  tail call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #20
  br label %15

15:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !330 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !331 {
  %2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !229 {
  tail call void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !229 {
  %2 = alloca %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #19
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !229 {
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !330 {
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #18
          to label %2 unwind label %6

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #18
          to label %4 unwind label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !327
  ret void

6:                                                ; preds = %2, %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #6 comdat align 2 !prof !332 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef null, i32 noundef 0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !prof !333 {
  store ptr %1, ptr %0, align 8, !tbaa !324
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !334
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !335 {
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !324
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, i32 noundef 0) #18
  %4 = load ptr, ptr %2, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %4, 0
  %6 = getelementptr inbounds { ptr, i32 }, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = insertvalue { ptr, i32 } %5, i32 %7, 1
  ret { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !213 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = tail call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #18
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  %8 = call { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 !prof !336 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #6 comdat !prof !337 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %4 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #18
  %5 = load ptr, ptr %3, align 8
  %6 = insertvalue { ptr, i32 } poison, ptr %5, 0
  %7 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } %6, i32 %8, 1
  ret { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #6 comdat align 2 !prof !338 {
  %2 = alloca %"struct.std::_Bit_reference", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !324
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !334
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw i64 1, %6
  call void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i64 noundef %7) #18
  %8 = load ptr, ptr %2, align 8
  %9 = insertvalue { ptr, i64 } poison, ptr %8, 0
  %10 = getelementptr inbounds { ptr, i64 }, ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = insertvalue { ptr, i64 } %9, i64 %11, 1
  ret { ptr, i64 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !337 {
  tail call void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !337 {
  %3 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !334
  %5 = zext i32 %4 to i64
  %6 = add nsw i64 %5, %1
  %7 = sdiv i64 %6, 64
  %8 = load ptr, ptr %0, align 8, !tbaa !324
  %9 = getelementptr inbounds i64, ptr %8, i64 %7
  %10 = srem i64 %6, 64
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15, !prof !339

12:                                               ; preds = %2
  %13 = add nsw i64 %10, 64
  %14 = getelementptr inbounds i64, ptr %9, i64 -1
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ %9, %2 ]
  %17 = phi i64 [ %13, %12 ], [ %10, %2 ]
  store ptr %16, ptr %0, align 8, !tbaa !324
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %3, align 8, !tbaa !334
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 comdat align 2 !prof !340 {
  store ptr %1, ptr %0, align 8, !tbaa !215
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !222
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !322
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  %9 = load ptr, ptr %3, align 8, !tbaa !226
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !226
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.61) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !228
  %8 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %12 = call noundef ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #18
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %15 = load ptr, ptr %14, align 8, !tbaa !223
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %17 = call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #20
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %20 = load ptr, ptr %19, align 8, !tbaa !223
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %22 = call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #20
  %23 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !322
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 5
  call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #18
  store ptr %12, ptr %0, align 8, !tbaa !228
  store ptr %22, ptr %8, align 8, !tbaa !226
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !322
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #20
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !221
  %6 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %7 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #21
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store i64 %13, ptr %5, align 8, !tbaa !221
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %15 = load i64, ptr %14, align 8, !tbaa !221
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  %17 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !208 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 5
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %3 = tail call noundef i64 @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !341 {
  %3 = load i64, ptr %0, align 8, !tbaa !221
  %4 = load i64, ptr %1, align 8, !tbaa !221
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !342
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 288230376151711743, ptr %2, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !221
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !221
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !343 {
  %3 = load i64, ptr %1, align 8, !tbaa !221
  %4 = load i64, ptr %0, align 8, !tbaa !221
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !344
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  ret i64 288230376151711743
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !345

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 576460752303423487
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #25
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !208 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !208 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 1
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !llvm.loop !346

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S7_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !208 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat !prof !208 {
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !208 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !347
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !223
  call void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !347
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !208 {
  %3 = load ptr, ptr %1, align 8, !tbaa !223
  store ptr %3, ptr %0, align 8, !tbaa !347
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa.struct !349
  %8 = load ptr, ptr %4, align 8, !tbaa.struct !349
  %9 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %10 = call noundef i64 @_ZSt4__lgl(i64 noundef %9) #18
  %11 = shl nsw i64 %10, 1
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %7, ptr %8, i64 noundef %11) #18
  %12 = load ptr, ptr %3, align 8, !tbaa.struct !349
  %13 = load ptr, ptr %4, align 8, !tbaa.struct !349
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %12, ptr %13) #18
  br label %14

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() local_unnamed_addr #5 comdat !prof !208 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !208 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = icmp sgt i64 %6, 16
  br i1 %7, label %8, label %22

8:                                                ; preds = %3, %14
  %9 = phi i64 [ %15, %14 ], [ %2, %3 ]
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !tbaa.struct !349
  %13 = load ptr, ptr %5, align 8
  call void @_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_(ptr %12, ptr %13, ptr %13) #18
  br label %22

14:                                               ; preds = %8
  %15 = add nsw i64 %9, -1
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !349
  %17 = load ptr, ptr %5, align 8, !tbaa.struct !349
  %18 = call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_(ptr %16, ptr %17) #18
  %19 = load ptr, ptr %5, align 8, !tbaa.struct !349
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %18, ptr %19, i64 noundef %15) #18
  store ptr %18, ptr %5, align 8
  %20 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %8, label %22, !llvm.loop !350

22:                                               ; preds = %14, %3, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgl(i64 noundef %0) local_unnamed_addr #5 comdat !prof !208 {
  %2 = tail call i64 @llvm.ctlz.i64(i64 %0, i1 true), !range !351
  %3 = xor i64 %2, 63
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %6 = icmp sgt i64 %5, 16
  %7 = load ptr, ptr %3, align 8
  br i1 %6, label %8, label %12

8:                                                ; preds = %2
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 16) #20
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %7, ptr %9) #18
  %10 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 16) #20
  %11 = load ptr, ptr %4, align 8, !tbaa.struct !349
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %10, ptr %11) #18
  br label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !tbaa.struct !349
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %7, ptr %13) #18
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_(ptr %0, ptr %1, ptr %2) #18
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %6 = sdiv i64 %5, 2
  %7 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %6) #20
  %8 = load ptr, ptr %3, align 8, !tbaa.struct !349
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #20
  %10 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #20
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %8, ptr %9, ptr %7, ptr %10) #18
  %11 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #20
  %12 = load ptr, ptr %4, align 8, !tbaa.struct !349
  %13 = load ptr, ptr %3, align 8, !tbaa.struct !349
  %14 = call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_SF_T0_(ptr %11, ptr %12, ptr %13) #18
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %2, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr %1, ptr %6, align 8, !tbaa.struct !349
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %7, label %9, label %8

8:                                                ; preds = %14, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  ret void

9:                                                ; preds = %3, %14
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !349
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %10, ptr %0) #18
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 8, !tbaa.struct !349
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr %1, ptr %13, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  br label %14

14:                                               ; preds = %9, %12
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %16, label %9, label %8, !llvm.loop !352
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3, %8
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %10 = load ptr, ptr %4, align 8, !tbaa.struct !349
  %11 = load ptr, ptr %5, align 8
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %10, ptr %11, ptr %11, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  %12 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %8, label %14, !llvm.loop !353

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %10 = icmp slt i64 %9, 2
  br i1 %10, label %25, label %11

11:                                               ; preds = %3
  %12 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %13 = add nsw i64 %12, -2
  %14 = sdiv i64 %13, 2
  br label %15

15:                                               ; preds = %20, %11
  %16 = phi i64 [ %14, %11 ], [ %22, %20 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %17 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %16) #20
  store ptr %17, ptr %7, align 8
  %18 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %18) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %19 = load ptr, ptr %4, align 8, !tbaa.struct !349
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %19, i64 noundef %16, i64 noundef %12, ptr noundef nonnull %8) #18
          to label %20 unwind label %23

20:                                               ; preds = %15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  %21 = icmp eq i64 %16, 0
  %22 = add nsw i64 %16, -1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  br i1 %21, label %25, label %15, !llvm.loop !354

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  resume { ptr, i32 } %24

25:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxltIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !208 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = icmp ult ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %8 = call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !208 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  %10 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %10) #20
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %13 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %11) #20
  %14 = load ptr, ptr %5, align 8, !tbaa.struct !349
  %15 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %14, i64 noundef 0, i64 noundef %15, ptr noundef nonnull %9) #18
          to label %16 unwind label %17

16:                                               ; preds = %4
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  ret void

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !347
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !347
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %5 = load ptr, ptr %0, align 8, !tbaa !347
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !223
  call void @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !208 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %5, align 8
  %13 = add nsw i64 %2, -1
  %14 = sdiv i64 %13, 2
  %15 = icmp sgt i64 %14, %1
  br i1 %15, label %16, label %31

16:                                               ; preds = %4, %16
  %17 = phi i64 [ %24, %16 ], [ %1, %4 ]
  %18 = shl i64 %17, 1
  %19 = add i64 %18, 2
  %20 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %19) #20
  %21 = or disjoint i64 %18, 1
  %22 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %21) #20
  %23 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %20, ptr %22) #18
  %24 = select i1 %23, i64 %21, i64 %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %25 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %24) #20
  store ptr %25, ptr %7, align 8
  %26 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %27 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %17) #20
  store ptr %27, ptr %8, align 8
  %28 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %29 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %26) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %30 = icmp slt i64 %24, %14
  br i1 %30, label %16, label %31, !llvm.loop !355

31:                                               ; preds = %16, %4
  %32 = phi i64 [ %1, %4 ], [ %24, %16 ]
  %33 = and i64 %2, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = add nsw i64 %2, -2
  %37 = ashr exact i64 %36, 1
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = shl nsw i64 %32, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %41 = or disjoint i64 %40, 1
  %42 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %41) #20
  store ptr %42, ptr %9, align 8
  %43 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %44 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %32) #20
  store ptr %44, ptr %10, align 8
  %45 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  %46 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %43) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %47

47:                                               ; preds = %39, %35, %31
  %48 = phi i64 [ %41, %39 ], [ %32, %35 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #19
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %11) #18
  %49 = load ptr, ptr %5, align 8, !tbaa.struct !349
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  invoke void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_(ptr %49, i64 noundef %48, i64 noundef %1, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %11) #18
          to label %50 unwind label %51

50:                                               ; preds = %47
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #19
  ret void

51:                                               ; preds = %47
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #19
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !208 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #6 comdat !prof !208 {
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %6, align 8
  %10 = icmp sgt i64 %1, %2
  br i1 %10, label %11, label %24

11:                                               ; preds = %5, %17
  %12 = phi i64 [ %14, %17 ], [ %1, %5 ]
  %13 = add nsw i64 %12, -1
  %14 = sdiv i64 %13, 2
  %15 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %14) #20
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr %15, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %18 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %14) #20
  store ptr %18, ptr %7, align 8
  %19 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %20 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %12) #20
  store ptr %20, ptr %8, align 8
  %21 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %22 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %19) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  %23 = icmp sgt i64 %14, %2
  br i1 %23, label %11, label %24, !llvm.loop !356

24:                                               ; preds = %11, %17, %5
  %25 = phi i64 [ %1, %5 ], [ %14, %17 ], [ %12, %11 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %26 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %25) #20
  store ptr %26, ptr %9, align 8
  %27 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %28 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEES9_EEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %6 = call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !357 {
  %3 = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %4 unwind label %6

4:                                                ; preds = %2
  %5 = icmp slt i32 %3, 0
  ret i1 %5

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE7compareEPKcS2_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #20
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !347
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 -1
  store ptr %3, ptr %0, align 8, !tbaa !347
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #6 comdat !prof !208 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %1, ptr %2) #18
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %2, ptr %3) #18
  br i1 %8, label %15, label %11

9:                                                ; preds = %4
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %1, ptr %3) #18
  br i1 %10, label %15, label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %1, %7 ], [ %2, %9 ]
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %12, ptr %3) #18
  %14 = select i1 %13, ptr %3, ptr %12
  br label %15

15:                                               ; preds = %11, %9, %7
  %16 = phi ptr [ %2, %7 ], [ %1, %9 ], [ %14, %11 ]
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_(ptr %0, ptr %16) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  br label %7

7:                                                ; preds = %3, %26
  %8 = phi ptr [ %0, %3 ], [ %29, %26 ]
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %8, ptr %2) #18
  br i1 %9, label %10, label %14

10:                                               ; preds = %7, %10
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %12 = load ptr, ptr %4, align 8, !tbaa.struct !349
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %12, ptr %2) #18
  br i1 %13, label %10, label %14, !llvm.loop !358

14:                                               ; preds = %10, %7
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %16 = load ptr, ptr %5, align 8, !tbaa.struct !349
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %2, ptr %16) #18
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %18
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %20 = load ptr, ptr %5, align 8, !tbaa.struct !349
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %2, ptr %20) #18
  br i1 %21, label %18, label %22, !llvm.loop !359

22:                                               ; preds = %18, %14
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %24 = load ptr, ptr %4, align 8
  br i1 %23, label %26, label %25

25:                                               ; preds = %22
  ret ptr %24

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 8, !tbaa.struct !349
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_(ptr %24, ptr %27) #18
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %29 = load ptr, ptr %4, align 8, !tbaa.struct !349
  br label %7, !llvm.loop !360
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_EvT_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %6 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @_ZSt4swapIcSt11char_traitsIcESaIcEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIcSt11char_traitsIcESaIcEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat !prof !208 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %8, label %33, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %10 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #20
  store ptr %10, ptr %6, align 8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %11, label %13, label %12

12:                                               ; preds = %30, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %33

13:                                               ; preds = %9, %30
  %14 = load ptr, ptr %6, align 8, !tbaa.struct !349
  %15 = load ptr, ptr %3, align 8, !tbaa.struct !349
  %16 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %14, ptr %15) #18
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  %18 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %18) #20
  %19 = load ptr, ptr %3, align 8, !tbaa.struct !349
  %20 = load ptr, ptr %6, align 8, !tbaa.struct !349
  %21 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 1) #20
  %22 = invoke ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_(ptr %19, ptr %20, ptr %21) #18
          to label %23 unwind label %26

23:                                               ; preds = %17
  %24 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %25 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  br label %30

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  resume { ptr, i32 } %27

28:                                               ; preds = %13
  %29 = load ptr, ptr %6, align 8, !tbaa.struct !349
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #18
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %29) #18
  br label %30

30:                                               ; preds = %23, %28
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %32 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %32, label %13, label %12, !llvm.loop !361

33:                                               ; preds = %2, %12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr %0, ptr %4, align 8, !tbaa.struct !349
  %5 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  br i1 %5, label %7, label %6

6:                                                ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr %4, align 8, !tbaa.struct !349
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #18
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %8) #18
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  br i1 %10, label %7, label %6, !llvm.loop !362
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !208 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_(ptr %1) #18
  %6 = tail call ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET1_T0_SE_SD_(ptr %4, ptr %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !208 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %6 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %7 = load i64, ptr %2, align 8, !tbaa !223
  store i64 %7, ptr %5, align 8, !tbaa !223
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %9 = load ptr, ptr %5, align 8, !tbaa.struct !349
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %9) #18
  br i1 %10, label %11, label %19

11:                                               ; preds = %1, %11
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %13 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %14 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %12) #20
  %15 = load i64, ptr %5, align 8, !tbaa !223
  store i64 %15, ptr %2, align 8, !tbaa !223
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %17 = load ptr, ptr %5, align 8, !tbaa.struct !349
  %18 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %17) #18
  br i1 %18, label %11, label %19, !llvm.loop !363

19:                                               ; preds = %11, %1
  %20 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %21 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() local_unnamed_addr #5 comdat !prof !208 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET1_T0_SE_SD_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE(ptr %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE(ptr %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES8_ET_SD_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_(ptr %0) local_unnamed_addr #5 comdat !prof !208 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES8_ET_SD_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE(ptr %0) #20
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #20
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !208 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb0ESt26random_access_iterator_tagE13__copy_move_bIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %16, %9 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %13, %9 ], [ %1, %3 ]
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 -1
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 -1
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13) #20
  %16 = add nsw i64 %10, -1
  %17 = icmp ugt i64 %10, 1
  br i1 %17, label %9, label %18, !llvm.loop !364

18:                                               ; preds = %9, %3
  %19 = phi ptr [ %2, %3 ], [ %14, %9 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %2, ptr %4, align 8
  %5 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %6 = call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_equal_to_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %7 = tail call ptr @_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %0, ptr %1) #18
  store ptr %7, ptr %3, align 8, !tbaa.struct !349
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !tbaa.struct !349
  br label %31

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %12 = load i64, ptr %3, align 8, !tbaa !223
  store i64 %12, ptr %6, align 8, !tbaa !223
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %15, label %16, label %28

16:                                               ; preds = %11, %25
  %17 = load ptr, ptr %6, align 8, !tbaa.struct !349
  %18 = load ptr, ptr %3, align 8, !tbaa.struct !349
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %17, ptr %18) #18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %23 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #20
  %24 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %21) #20
  br label %25

25:                                               ; preds = %20, %16
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %27, label %16, label %28, !llvm.loop !365

28:                                               ; preds = %25, %11
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %30 = load ptr, ptr %29, align 8, !tbaa.struct !349
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %31

31:                                               ; preds = %28, %9
  %32 = phi ptr [ %10, %9 ], [ %30, %28 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv() local_unnamed_addr #5 comdat !prof !208 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !208 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_equal_to_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa.struct !349
  br label %25

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %11 = load i64, ptr %3, align 8, !tbaa !223
  store i64 %11, ptr %6, align 8, !tbaa !223
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %13, label %14, label %22

14:                                               ; preds = %10, %18
  %15 = load ptr, ptr %3, align 8, !tbaa.struct !349
  %16 = load ptr, ptr %6, align 8, !tbaa.struct !349
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %15, ptr %16) #18
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %6, align 8, !tbaa !223
  store i64 %19, ptr %3, align 8, !tbaa !223
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br i1 %21, label %14, label %22, !llvm.loop !366

22:                                               ; preds = %14, %18, %10
  %23 = phi ptr [ %4, %10 ], [ %4, %18 ], [ %3, %14 ]
  %24 = load ptr, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br label %25

25:                                               ; preds = %22, %8
  %26 = phi ptr [ %9, %8 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %7 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %8 = call noundef zeroext i1 @_ZSteqIcEN9__gnu_cxx11__enable_ifIXsr9__is_charIT_EE7__valueEbE6__typeERKNSt7__cxx1112basic_stringIS2_St11char_traitsIS2_ESaIS2_EEESC_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat align 2 !prof !208 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %10 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %10, ptr %6, align 8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !tbaa.struct !349
  %14 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  %15 = load ptr, ptr %4, align 8, !tbaa.struct !349
  %16 = call ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_(ptr %13, ptr %14, ptr %15) #18
  br label %17

17:                                               ; preds = %12, %9
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %19 = load ptr, ptr %18, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %20 = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  store ptr %20, ptr %7, align 8
  %21 = call noundef i64 @_ZN9__gnu_cxxmiIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSE_SH_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 %21
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %22) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %23

23:                                               ; preds = %17, %3
  %24 = load ptr, ptr %4, align 8, !tbaa.struct !349
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSF_SI_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !208 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !223
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 5
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !208 {
  %3 = load ptr, ptr %1, align 8, !tbaa !223
  store ptr %3, ptr %0, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_(ptr %0) #18
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_(ptr %1) #18
  %6 = tail call ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET1_T0_SE_SD_(ptr %4, ptr %5, ptr %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !226
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET1_T0_SE_SD_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE(ptr %0) #20
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE(ptr %1) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EEET_N9__gnu_cxx17__normal_iteratorISA_T0_EE(ptr %2) #20
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #18
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEES8_ET_SD_T0_(ptr %2, ptr noundef %7) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !208 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EET0_T_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %17, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %18, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %16, %11 ], [ %0, %3 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14) #20
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 1
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 1
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %9, !llvm.loop !367
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: optsize
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: nounwind optsize
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9UCTSearchD2Ev(ptr noundef nonnull align 8 dereferenceable(90) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  tail call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #20
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !368 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %2 = load ptr, ptr %0, align 8, !tbaa !248
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !278
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !368 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !368 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !369 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !370

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !371 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !372 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !372 {
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  tail call void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #20
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #20
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !373 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !373 {
  %2 = load ptr, ptr %0, align 8, !tbaa !374
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !376
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  invoke void @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !373 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #18
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !377 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !378

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #20
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #18
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #20
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !379, !llvm.loop !380

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !381 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !382 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !383 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !384
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !387 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !388
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !389 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #20
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !389 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #18
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !389 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #18
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !389 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !390 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !391 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !389 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair.42", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !391 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !391 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !389 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !389 {
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !381 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !392
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !373 {
  tail call void @_ZSt8_DestroyIP7SGFTreeEvT_S2_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !394 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !373 {
  %2 = load ptr, ptr %0, align 8, !tbaa !374
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8512
  invoke void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7SGFTreeEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !373 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !373 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !396

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %class.SGFTree, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !397, !llvm.loop !398

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !399 {
  tail call void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !400 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !401

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #18
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !382 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !399 {
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !399 {
  tail call void @_ZdlPv(ptr noundef %1) #26
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_GTP.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { noreturn optsize }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { builtin optsize allocsize(0) }
attributes #26 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!205}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 747867958256}
!4 = !{!"MaxCount", i64 115183010216}
!5 = !{!"MaxInternalCount", i64 7835753190}
!6 = !{!"MaxFunctionCount", i64 115183010216}
!7 = !{!"NumCounts", i64 2640}
!8 = !{!"NumFunctions", i64 1541}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 115183010216, i32 1}
!14 = !{i32 100000, i64 115183010216, i32 1}
!15 = !{i32 200000, i64 99995171483, i32 2}
!16 = !{i32 300000, i64 88073131441, i32 3}
!17 = !{i32 400000, i64 88073131441, i32 3}
!18 = !{i32 500000, i64 32030604394, i32 5}
!19 = !{i32 600000, i64 11128423850, i32 9}
!20 = !{i32 700000, i64 5564211925, i32 21}
!21 = !{i32 800000, i64 3688044421, i32 36}
!22 = !{i32 900000, i64 1979964940, i32 64}
!23 = !{i32 950000, i64 877932300, i32 88}
!24 = !{i32 990000, i64 97283944, i32 151}
!25 = !{i32 999000, i64 10252442, i32 368}
!26 = !{i32 999900, i64 1381009, i32 513}
!27 = !{i32 999990, i64 126015, i32 686}
!28 = !{i32 999999, i64 12002, i32 815}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!35 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 2708}
!36 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_, i64 2708}
!37 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZSt19__throw_logic_errorPKc, i64 1}
!38 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt11char_traitsIcE6lengthEPKc, i64 2707}
!39 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, i64 2707}
!40 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 1}
!41 = !{ptr @_ZNSt6vectorIbSaIbEEixEm, ptr @_ZNSt6vectorIbSaIbEE5beginEv, i64 14717977}
!42 = !{ptr @_ZNSt6vectorIbSaIbEEixEm, ptr @_ZNKSt13_Bit_iteratorixEl, i64 14717977}
!43 = !{ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, i64 126015}
!44 = !{ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, ptr @_ZNSt15__new_allocatorImED2Ev, i64 126015}
!45 = !{ptr @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc, i64 875}
!46 = !{ptr @_ZSt8noskipwsRSt8ios_base, ptr @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags, i64 1223}
!47 = !{ptr @_ZNSt8auto_ptrI9UCTSearchED2Ev, ptr @_ZN9UCTSearchD2Ev, i64 606}
!48 = !{ptr @_ZNSt8auto_ptrI9UCTSearchED2Ev, ptr @_ZdlPv, i64 606}
!49 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!50 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!51 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!52 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!53 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZN7SGFTreeD2Ev, i64 280}
!54 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZdlPv, i64 280}
!55 = !{ptr @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags, ptr @_ZStcoSt13_Ios_Fmtflags, i64 1223}
!56 = !{ptr @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags, ptr @_ZStaNRSt13_Ios_FmtflagsS_, i64 1223}
!57 = !{ptr @_ZStaNRSt13_Ios_FmtflagsS_, ptr @_ZStanSt13_Ios_FmtflagsS_, i64 1223}
!58 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEaSEOS2_, ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, i64 10}
!59 = !{ptr @_ZNSt6vectorIySaIyEEaSEOS1_, ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, i64 20}
!60 = !{ptr @_ZNSt6vectorIiSaIiEEaSEOS1_, ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, i64 10}
!61 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, i64 10}
!62 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorIiSaIiEEC2ERKS0_, i64 10}
!63 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 10}
!64 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_, i64 20}
!65 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20}
!66 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZSt15__alloc_on_moveISaIiEEvRT_S2_, i64 10}
!67 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorIiSaIiEED2Ev, i64 10}
!68 = !{ptr @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 10}
!69 = !{ptr @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, ptr @_ZNSaIiEC2ERKS_, i64 10}
!70 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, i64 10}
!71 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 20}
!72 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_, i64 60}
!73 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!74 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 10}
!75 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!76 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!77 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv, i64 20}
!78 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorIySaIyEEC2ERKS0_, i64 20}
!79 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 20}
!80 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_, i64 40}
!81 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 40}
!82 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZSt15__alloc_on_moveISaIyEEvRT_S2_, i64 20}
!83 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorIySaIyEED2Ev, i64 20}
!84 = !{ptr @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 20}
!85 = !{ptr @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv, ptr @_ZNSaIyEC2ERKS_, i64 20}
!86 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEEC2ERKS0_, i64 20}
!87 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 40}
!88 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_, i64 120}
!89 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 18212926}
!90 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 18212926}
!91 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 18212909}
!92 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!93 = !{ptr @_ZNSaIyEC2ERKS_, ptr @_ZNSt15__new_allocatorIyEC2ERKS0_, i64 33661998}
!94 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, i64 20}
!95 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449990}
!96 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 15449990}
!97 = !{ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPyEvT_S1_, i64 18213858}
!98 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 18212926}
!99 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 18212909}
!100 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!101 = !{ptr @_ZSt8_DestroyIPyEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, i64 18213858}
!102 = !{ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, i64 27873635}
!103 = !{ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, i64 27873636}
!104 = !{ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, ptr @_ZdlPv, i64 27873636}
!105 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv, i64 10}
!106 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_, i64 10}
!107 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt15__new_allocatorI7KoStateED2Ev, i64 10}
!108 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_, i64 20}
!109 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 20}
!110 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZSt15__alloc_on_moveISaI7KoStateEEvRT_S3_, i64 10}
!111 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, i64 10}
!112 = !{ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv, ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 10}
!113 = !{ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv, ptr @_ZNSaI7KoStateEC2ERKS0_, i64 10}
!114 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_, i64 10}
!115 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev, i64 20}
!116 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_, i64 60}
!117 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 12023}
!118 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, i64 12023}
!119 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, i64 12023}
!120 = !{ptr @_ZNSaI7KoStateEC2ERKS0_, ptr @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_, i64 24024}
!121 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, i64 10}
!122 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, ptr @_ZNSaI7KoStateEC2ERKS0_, i64 12012}
!123 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev, i64 12012}
!124 = !{ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, i64 12023}
!125 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, i64 12023}
!126 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, ptr @_ZNSt15__new_allocatorI7KoStateED2Ev, i64 12023}
!127 = !{ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, i64 12023}
!128 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, ptr @_ZSt8_DestroyI7KoStateEvPT_, i64 1513057}
!129 = !{ptr @_ZSt8_DestroyI7KoStateEvPT_, ptr @_ZN7KoStateD2Ev, i64 1513182}
!130 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, i64 23363}
!131 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, i64 23364}
!132 = !{ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, ptr @_ZdlPv, i64 23364}
!133 = !{ptr @_ZNSt11char_traitsIcE6lengthEPKc, ptr @strlen, i64 2708}
!134 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 2708}
!135 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 6}
!136 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 6}
!137 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 6}
!138 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 2702}
!139 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 2708}
!140 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 2708}
!141 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 2708}
!142 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 2708}
!143 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 2708}
!144 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 2708}
!145 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 2708}
!146 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!147 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, i64 126014}
!148 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, i64 126014}
!149 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, i64 126014}
!150 = !{ptr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, ptr @_ZNSt15__new_allocatorImE10deallocateEPmm, i64 126015}
!151 = !{ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, i64 126015}
!152 = !{ptr @_ZNSt15__new_allocatorImE10deallocateEPmm, ptr @_ZdlPv, i64 126015}
!153 = !{ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, ptr @_ZNSt13_Bit_iteratorC2Ev, i64 504060}
!154 = !{ptr @_ZNSt13_Bit_iteratorC2Ev, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 504060}
!155 = !{ptr @_ZNSt6vectorIbSaIbEE5beginEv, ptr @_ZNSt13_Bit_iteratorC2EPmj, i64 14973351}
!156 = !{ptr @_ZNKSt13_Bit_iteratorixEl, ptr @_ZStplRKSt13_Bit_iteratorl, i64 14717977}
!157 = !{ptr @_ZNKSt13_Bit_iteratorixEl, ptr @_ZNKSt13_Bit_iteratordeEv, i64 14717977}
!158 = !{ptr @_ZNSt13_Bit_iteratorC2EPmj, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 15228725}
!159 = !{ptr @_ZStplRKSt13_Bit_iteratorl, ptr @_ZNSt13_Bit_iteratorpLEl, i64 14843992}
!160 = !{ptr @_ZNKSt13_Bit_iteratordeEv, ptr @_ZNSt14_Bit_referenceC2EPmm, i64 22091440}
!161 = !{ptr @_ZNSt13_Bit_iteratorpLEl, ptr @_ZNSt18_Bit_iterator_base7_M_incrEl, i64 14843992}
!162 = !{ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_, i64 7028}
!163 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!164 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!165 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!166 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!167 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!168 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!169 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!170 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!171 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, i64 1322}
!172 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv, i64 1322}
!173 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E, i64 1322}
!174 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, i64 1322}
!175 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, i64 1322}
!176 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 1322}
!177 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev, i64 1322}
!178 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, i64 607}
!179 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 607}
!180 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, i64 607}
!181 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 607}
!182 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv, i64 5484}
!183 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!184 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!185 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 606}
!186 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, i64 606}
!187 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, i64 606}
!188 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 606}
!189 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, i64 606}
!190 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, i64 606}
!191 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, i64 2106}
!192 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, i64 606}
!193 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv, i64 2106}
!194 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m, i64 606}
!195 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m, ptr @_ZdlPv, i64 606}
!196 = !{ptr @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP7SGFTreeEvT_S2_, i64 1322}
!197 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m, i64 1322}
!198 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt15__new_allocatorI7SGFTreeED2Ev, i64 1322}
!199 = !{ptr @_ZSt8_DestroyIP7SGFTreeEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_, i64 1322}
!200 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_, ptr @_ZSt8_DestroyI7SGFTreeEvPT_, i64 438}
!201 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZN7SGFTreeD2Ev, i64 437}
!202 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m, i64 438}
!203 = !{ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m, i64 437}
!204 = !{ptr @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m, ptr @_ZdlPv, i64 437}
!205 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!206 = !{!"function_entry_count", i64 2708}
!207 = !{!"branch_weights", i32 1, i32 2709}
!208 = !{!"function_entry_count", i64 0}
!209 = distinct !{!209, !210}
!210 = !{!"llvm.loop.mustprogress"}
!211 = distinct !{!211, !210}
!212 = distinct !{!212, !210}
!213 = !{!"function_entry_count", i64 14717977}
!214 = !{!"function_entry_count", i64 33058621}
!215 = !{!216, !217, i64 0}
!216 = !{!"_ZTSSt14_Bit_reference", !217, i64 0, !220, i64 8}
!217 = !{!"any pointer", !218, i64 0}
!218 = !{!"omnipotent char", !219, i64 0}
!219 = !{!"Simple C++ TBAA"}
!220 = !{!"long", !218, i64 0}
!221 = !{!220, !220, i64 0}
!222 = !{!216, !220, i64 8}
!223 = !{!217, !217, i64 0}
!224 = !{!225, !217, i64 0}
!225 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE", !217, i64 0}
!226 = !{!227, !217, i64 8}
!227 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !217, i64 0, !217, i64 8, !217, i64 16}
!228 = !{!227, !217, i64 0}
!229 = !{!"function_entry_count", i64 126015}
!230 = !{!231, !231, i64 0}
!231 = !{!"int", !218, i64 0}
!232 = !{!218, !218, i64 0}
!233 = distinct !{!233, !210}
!234 = distinct !{!234, !210}
!235 = distinct !{!235, !210}
!236 = !{!237, !237, i64 0}
!237 = !{!"vtable pointer", !219, i64 0}
!238 = !{!239, !239, i64 0}
!239 = !{!"float", !218, i64 0}
!240 = distinct !{!240, !210}
!241 = distinct !{!241, !210}
!242 = !{!"function_entry_count", i64 875}
!243 = !{!"function_entry_count", i64 1223}
!244 = !{!"function_entry_count", i64 970}
!245 = !{!246, !217, i64 0}
!246 = !{!"_ZTSSt8auto_ptrI9UCTSearchE", !217, i64 0}
!247 = !{!"function_entry_count", i64 9372256}
!248 = !{!249, !217, i64 0}
!249 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !217, i64 0, !217, i64 8, !217, i64 16}
!250 = !{!249, !217, i64 8}
!251 = !{!"function_entry_count", i64 448}
!252 = !{!253, !217, i64 0}
!253 = !{!"_ZTSSt8auto_ptrI7SGFTreeE", !217, i64 0}
!254 = !{!"function_entry_count", i64 21}
!255 = !{i64 0, i64 4, !230, i64 4, i64 4, !230, i64 8, i64 4, !230, i64 12, i64 4, !230, i64 16, i64 8, !232, i64 24, i64 8, !232, i64 32, i64 2, !232, i64 36, i64 8, !232}
!256 = !{!257, !257, i64 0}
!257 = !{!"_ZTSSt13_Ios_Fmtflags", !218, i64 0}
!258 = !{!"function_entry_count", i64 10}
!259 = !{!"function_entry_count", i64 20}
!260 = distinct !{!260, !210}
!261 = !{!262, !231, i64 8048}
!262 = !{!"_ZTS9FastBoard", !263, i64 0, !263, i64 882, !231, i64 1764, !231, i64 1768, !231, i64 1772, !264, i64 1776, !265, i64 3540, !265, i64 4424, !265, i64 5308, !265, i64 6192, !263, i64 7076, !266, i64 7960, !267, i64 7976, !268, i64 8008, !268, i64 8016, !269, i64 8024, !231, i64 8048}
!263 = !{!"_ZTSN5boost5arrayItLm441EEE", !218, i64 0}
!264 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !218, i64 0}
!265 = !{!"_ZTSN5boost5arrayItLm442EEE", !218, i64 0}
!266 = !{!"_ZTSN5boost5arrayIiLm4EEE", !218, i64 0}
!267 = !{!"_ZTSN5boost5arrayIiLm8EEE", !218, i64 0}
!268 = !{!"_ZTSN5boost5arrayIiLm2EEE", !218, i64 0}
!269 = !{!"_ZTSSt6vectorIiSaIiEE", !270, i64 0}
!270 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !271, i64 0}
!271 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !249, i64 0}
!272 = !{!"function_entry_count", i64 97749716}
!273 = !{!"function_entry_count", i64 28293760}
!274 = !{!"function_entry_count", i64 16958771}
!275 = !{!"function_entry_count", i64 7788881}
!276 = !{!"function_entry_count", i64 7991268}
!277 = !{!"function_entry_count", i64 60}
!278 = !{!249, !217, i64 16}
!279 = !{!"function_entry_count", i64 2543899333}
!280 = !{!281, !231, i64 0}
!281 = !{!"_ZTSSt4pairIiiE", !231, i64 0, !231, i64 4}
!282 = !{!281, !231, i64 4}
!283 = !{!"function_entry_count", i64 40}
!284 = !{!"function_entry_count", i64 58513802}
!285 = !{!"function_entry_count", i64 18212926}
!286 = !{!287, !217, i64 0}
!287 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !217, i64 0, !217, i64 8, !217, i64 16}
!288 = !{!287, !217, i64 8}
!289 = !{!"function_entry_count", i64 40299030}
!290 = !{!"function_entry_count", i64 33661998}
!291 = !{!"function_entry_count", i64 15449990}
!292 = !{!"function_entry_count", i64 15450948}
!293 = !{!"function_entry_count", i64 120}
!294 = !{!287, !217, i64 16}
!295 = !{!"function_entry_count", i64 18213858}
!296 = !{!"function_entry_count", i64 30638340}
!297 = !{!"branch_weights", i32 2764705, i32 27873637}
!298 = !{!"function_entry_count", i64 33662916}
!299 = !{!"function_entry_count", i64 27873636}
!300 = !{!"function_entry_count", i64 46769}
!301 = !{!"function_entry_count", i64 12023}
!302 = !{!303, !217, i64 0}
!303 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !217, i64 0, !217, i64 8, !217, i64 16}
!304 = !{!303, !217, i64 8}
!305 = !{!"function_entry_count", i64 34736}
!306 = !{!"function_entry_count", i64 24024}
!307 = !{!"function_entry_count", i64 12012}
!308 = !{!"function_entry_count", i64 12043}
!309 = !{!303, !217, i64 16}
!310 = !{!"branch_weights", i32 1, i32 12023}
!311 = !{!"branch_weights", i32 12023, i32 1501160}
!312 = distinct !{!312, !210}
!313 = !{!"function_entry_count", i64 1513182}
!314 = !{!"function_entry_count", i64 23385}
!315 = !{!"branch_weights", i32 22, i32 23365}
!316 = !{!"function_entry_count", i64 24035}
!317 = !{!"function_entry_count", i64 23364}
!318 = !{!"branch_weights", i32 6, i32 2704}
!319 = !{!320, !217, i64 0}
!320 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !217, i64 0}
!321 = !{!"branch_weights", i32 2709, i32 1}
!322 = !{!227, !217, i64 16}
!323 = distinct !{!323, !210}
!324 = !{!325, !217, i64 0}
!325 = !{!"_ZTSSt18_Bit_iterator_base", !217, i64 0, !231, i64 8}
!326 = !{!"branch_weights", i32 1, i32 126016}
!327 = !{!328, !217, i64 32}
!328 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !329, i64 0, !329, i64 16, !217, i64 32}
!329 = !{!"_ZTSSt13_Bit_iterator", !325, i64 0}
!330 = !{!"function_entry_count", i64 252030}
!331 = !{!"function_entry_count", i64 381389}
!332 = !{!"function_entry_count", i64 504060}
!333 = !{!"function_entry_count", i64 17543811}
!334 = !{!325, !231, i64 8}
!335 = !{!"function_entry_count", i64 14973351}
!336 = !{!"function_entry_count", i64 15228725}
!337 = !{!"function_entry_count", i64 14843992}
!338 = !{!"function_entry_count", i64 22091440}
!339 = !{!"branch_weights", i32 1, i32 14843993}
!340 = !{!"function_entry_count", i64 47211283}
!341 = !{!"function_entry_count", i64 23031751}
!342 = !{!"branch_weights", i32 6217633, i32 16814120}
!343 = !{!"function_entry_count", i64 46063954}
!344 = !{!"branch_weights", i32 1, i32 46063955}
!345 = !{!"branch_weights", i32 1, i32 2000}
!346 = distinct !{!346, !210}
!347 = !{!348, !217, i64 0}
!348 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE", !217, i64 0}
!349 = !{i64 0, i64 8, !223}
!350 = distinct !{!350, !210}
!351 = !{i64 0, i64 65}
!352 = distinct !{!352, !210}
!353 = distinct !{!353, !210}
!354 = distinct !{!354, !210}
!355 = distinct !{!355, !210}
!356 = distinct !{!356, !210}
!357 = !{!"function_entry_count", i64 7028}
!358 = distinct !{!358, !210}
!359 = distinct !{!359, !210}
!360 = distinct !{!360, !210}
!361 = distinct !{!361, !210}
!362 = distinct !{!362, !210}
!363 = distinct !{!363, !210}
!364 = distinct !{!364, !210}
!365 = distinct !{!365, !210}
!366 = distinct !{!366, !210}
!367 = distinct !{!367, !210}
!368 = !{!"function_entry_count", i64 69455494}
!369 = !{!"function_entry_count", i64 19624698}
!370 = !{!"branch_weights", i32 9372251, i32 10252449}
!371 = !{!"function_entry_count", i64 17161144}
!372 = !{!"function_entry_count", i64 10252448}
!373 = !{!"function_entry_count", i64 1322}
!374 = !{!375, !217, i64 0}
!375 = !{!"_ZTSNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataE", !217, i64 0, !217, i64 8, !217, i64 16}
!376 = !{!375, !217, i64 8}
!377 = !{!"function_entry_count", i64 1928}
!378 = !{!"branch_weights", i32 1322, i32 607}
!379 = !{!"branch_weights", i32 607, i32 0}
!380 = distinct !{!380, !210}
!381 = !{!"function_entry_count", i64 5484}
!382 = !{!"function_entry_count", i64 2196}
!383 = !{!"function_entry_count", i64 1867}
!384 = !{!385, !217, i64 24}
!385 = !{!"_ZTSSt18_Rb_tree_node_base", !386, i64 0, !217, i64 8, !217, i64 16, !217, i64 24}
!386 = !{!"_ZTSSt14_Rb_tree_color", !218, i64 0}
!387 = !{!"function_entry_count", i64 3487}
!388 = !{!385, !217, i64 16}
!389 = !{!"function_entry_count", i64 606}
!390 = !{!"function_entry_count", i64 2424}
!391 = !{!"function_entry_count", i64 2106}
!392 = !{!393, !217, i64 8}
!393 = !{!"_ZTSSt15_Rb_tree_header", !385, i64 0, !220, i64 32}
!394 = !{!"function_entry_count", i64 2633}
!395 = !{!375, !217, i64 16}
!396 = !{!"branch_weights", i32 885, i32 438}
!397 = !{!"branch_weights", i32 438, i32 0}
!398 = distinct !{!398, !210}
!399 = !{!"function_entry_count", i64 437}
!400 = !{!"function_entry_count", i64 1759}
!401 = !{!"branch_weights", i32 1323, i32 438}
