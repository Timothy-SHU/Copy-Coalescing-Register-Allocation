; ModuleID = 'SGFTree.cpp'
source_filename = "SGFTree.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.SGFTree = type { %class.KoState, %"class.std::vector.12", %"class.std::multimap" }
%class.KoState = type { %class.FastState.base, %"class.std::vector.7", %"class.std::vector.7" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6" }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.boost::array.4" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.5" = type { [24 x i32] }
%"class.boost::array.6" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" }
%"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::multimap" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%class.GameState = type <{ %class.KoState, %"class.std::vector.20", %class.TimeControl, [4 x i8] }>
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.4", %"class.boost::array.4", %"class.boost::array.25", %"class.boost::array.26" }
%"class.boost::array.25" = type { [2 x i8] }
%"class.boost::array.26" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::pair.34" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.27" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.28" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.29" = type { ptr }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::allocator.30" = type { i8 }
%"struct.std::pair.36" = type { %"struct.std::_Rb_tree_iterator", %"struct.std::_Rb_tree_iterator" }
%"class.__gnu_cxx::__normal_iterator.38" = type { ptr }
%struct._Guard = type { ptr }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"struct.std::pair.39" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"struct.std::pair.41" = type { ptr, ptr }
%"class.std::allocator.14" = type { i8 }
%"class.std::allocator.9" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.43" = type { ptr }
%"class.std::allocator.17" = type { i8 }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }

$_ZN7KoStateC2Ev = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EEC2Ev = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2Ev = comdat any

$_ZN9FastStateC2Ev = comdat any

$_ZNSt6vectorIySaIyEEC2Ev = comdat any

$_ZN9FullBoardC2Ev = comdat any

$_ZN5boost5arrayISt4pairIiiELm24EEC2Ev = comdat any

$_ZN9FastBoardD2Ev = comdat any

$_ZN9FastBoardC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIiEC2Ev = comdat any

$_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2Ev = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev = comdat any

$_ZNSaIyEC2Ev = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIyEC2Ev = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI7SGFTreeEC2Ev = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorI7SGFTreeEC2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EEixEm = comdat any

$_ZN9GameStateC2Ev = comdat any

$_ZN7KoStateaSERKS_ = comdat any

$_ZN9GameStateD2Ev = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EEC2Ev = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EED2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI7KoStateEC2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorI7KoStateEC2Ev = comdat any

$_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP7KoStateEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_ = comdat any

$_ZSt8_DestroyI7KoStateEvPT_ = comdat any

$_ZN7KoStateD2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorI7KoStateED2Ev = comdat any

$_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m = comdat any

$_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m = comdat any

$_ZNSt6vectorIySaIyEED2Ev = comdat any

$_ZN9FastStateD2Ev = comdat any

$_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIySaIyEED2Ev = comdat any

$_ZSt8_DestroyIPyEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym = comdat any

$_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym = comdat any

$_ZNSt15__new_allocatorIyE10deallocateEPym = comdat any

$_ZN9FastStateaSERKS_ = comdat any

$_ZNSt6vectorIySaIyEEaSERKS1_ = comdat any

$_ZN9FullBoardaSERKS_ = comdat any

$_ZN5boost5arrayISt4pairIiiELm24EEaSERKS3_ = comdat any

$_ZN9FastBoardaSERKS_ = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNKSt6vectorIiSaIiEE8capacityEv = comdat any

$_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_ = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZSt4copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPiET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_ = comdat any

$_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_ = comdat any

$_ZNSt4pairIiiEaSERKS0_ = comdat any

$_ZNKSt6vectorIySaIyEE4sizeEv = comdat any

$_ZNKSt6vectorIySaIyEE8capacityEv = comdat any

$_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_ = comdat any

$_ZNKSt6vectorIySaIyEE5beginEv = comdat any

$_ZNKSt6vectorIySaIyEE3endEv = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEyEvT_S7_RSaIT0_E = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET0_T_SB_SA_ = comdat any

$_ZNSt6vectorIySaIyEE5beginEv = comdat any

$_ZNSt6vectorIySaIyEE3endEv = comdat any

$_ZSt4copyIPyS0_ET0_T_S2_S1_ = comdat any

$_ZSt22__uninitialized_copy_aIPyS0_yET0_T_S2_S1_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNSt16allocator_traitsISaIyEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIyE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIyE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPyET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt12__niter_baseIPyET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_ = comdat any

$_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEEvT_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEES2_ET_S7_T0_ = comdat any

$_ZSt12__niter_baseIPySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEplEl = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv = comdat any

$_ZSt13__copy_move_aILb0EPyS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPyET_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPyS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPyS0_ET1_T0_S2_S1_ = comdat any

$_ZSt18uninitialized_copyIPyS0_ET0_T_S2_S1_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPyS2_EET0_T_S4_S3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNSt9exceptionC2Ev = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2Ev = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_ = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv = comdat any

$_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11equal_rangeERS9_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv = comdat any

$_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2Ev = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE5beginEv = comdat any

$_ZN9__gnu_cxxneIP7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEptEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEppEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv = comdat any

$_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS8_ = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES9_EC2IS9_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE6insertIS8_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISA_T_EE5valueESt17_Rb_tree_iteratorISA_EE4typeEOSG_ = comdat any

$_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_ = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeC2IJS6_IS5_S5_EEEERSE_DpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node6_M_keyEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS6_IS5_S5_EEEEPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS6_IS5_S5_EEEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE8allocateERSB_m = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JS1_IS7_S7_EEEEvRSB_PT_DpOT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE9constructIS9_JS1_IS7_S7_EEEEvPT_DpOT0_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISI_SJ_EEEbE4typeELb1EEEOSI_OSJ_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev = comdat any

$_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE4backEv = comdat any

$_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv = comdat any

$_ZNKSt6vectorI7SGFTreeSaIS0_EE8capacityEv = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE11_M_allocateEm = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaI7SGFTreeEE8max_sizeERKS1_ = comdat any

$_ZNKSt15__new_allocatorI7SGFTreeE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorI7SGFTreeE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaI7SGFTreeEE8allocateERS1_m = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt14__relocate_a_1IP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt12__niter_baseIP7SGFTreeET_S2_ = comdat any

$_ZSt19__relocate_object_aI7SGFTreeS0_SaIS0_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt16allocator_traitsISaI7SGFTreeEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JS0_EEEvPT_DpOT0_ = comdat any

$_ZN7SGFTreeC2EOS_ = comdat any

$_ZN7KoStateC2EOS_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EEC2EOS2_ = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2EOSC_ = comdat any

$_ZN9FastStateC2EOS_ = comdat any

$_ZNSt6vectorIySaIyEEC2EOS1_ = comdat any

$_ZN9FullBoardC2EOS_ = comdat any

$_ZN9FastBoardC2EOS_ = comdat any

$_ZNSt6vectorIiSaIiEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_ = comdat any

$_ZNSt15__new_allocatorIiEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2EOS2_ = comdat any

$_ZNSt15__new_allocatorIyEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EOS2_ = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2EOS3_ = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2EOS3_ = comdat any

$_ZNSt15__new_allocatorI7SGFTreeEC2ERKS1_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2EOSE_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2EOSG_ = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ = comdat any

$_ZNSt15_Rb_tree_headerC2EOS_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEC2ERKSB_ = comdat any

$_ZNSt15_Rb_tree_header12_M_move_dataERS_ = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_ = comdat any

$_ZN7SGFTreeD2Ev = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP7SGFTreeEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_ = comdat any

$_ZSt8_DestroyI7SGFTreeEvPT_ = comdat any

$_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m = comdat any

$_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JRKS0_EEEvPT_DpOT0_ = comdat any

$_ZN7SGFTreeC2ERKS_ = comdat any

$_ZN7KoStateC2ERKS_ = comdat any

$_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_ = comdat any

$_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_ = comdat any

$_ZN9FastStateC2ERKS_ = comdat any

$_ZNSt6vectorIySaIyEEC2ERKS1_ = comdat any

$_ZN9FullBoardC2ERKS_ = comdat any

$_ZN9FastBoardC2ERKS_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_ = comdat any

$_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIyED2Ev = comdat any

$_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIyEC2ERKS_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaI7SGFTreeES1_E17_S_select_on_copyERKS2_ = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EmRKS1_ = comdat any

$_ZNSt15__new_allocatorI7SGFTreeED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E = comdat any

$_ZNKSt6vectorI7SGFTreeSaIS0_EE5beginEv = comdat any

$_ZNKSt6vectorI7SGFTreeSaIS0_EE3endEv = comdat any

$_ZNSt16allocator_traitsISaI7SGFTreeEE37select_on_container_copy_constructionERKS1_ = comdat any

$_ZNSaI7SGFTreeEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_M_create_storageEm = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_ = comdat any

$_ZN9__gnu_cxxneIPK7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_ = comdat any

$_ZSt10_ConstructI7SGFTreeJRKS0_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS3_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2ERKSE_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_rootEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_rootEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESB_E17_S_select_on_copyERKSC_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE37select_on_container_copy_constructionERKSB_ = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2ERKSA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeC2ERSE_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSE_RT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_maximumEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_M_clone_nodeILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_RT0_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKS8_EEEPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKS9_EEEvRSB_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE9constructIS9_JRKS9_EEEvPT_DpOT0_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_ = comdat any

$_ZNSt18_Rb_tree_node_base10_S_minimumEPS_ = comdat any

$_ZNSt18_Rb_tree_node_base10_S_maximumEPS_ = comdat any

$_ZNKSt6vectorI7SGFTreeSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIP7SGFTreeSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEdeEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt9exception = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"GM\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"PL\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SGFTree.cpp, ptr null }]

@_ZN7SGFTreeC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7SGFTreeC2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #16
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTreeC2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %0) unnamed_addr #4 align 2 !prof !524 {
  tail call void @_ZN7KoStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #16
  %2 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  tail call void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN9FastStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #16
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9FullBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #18
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  invoke void @_ZN5boost5arrayISt4pairIiiELm24EEC2Ev(ptr noundef nonnull align 4 dereferenceable(192) %2) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #18
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !525 {
  tail call void @_ZNSt12_Vector_baseIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN9FastBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost5arrayISt4pairIiiELm24EEC2Ev(ptr noundef nonnull align 4 dereferenceable(192) %0) unnamed_addr #4 comdat align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 4 dereferenceable(8) %4) #16
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp eq i64 %5, 192
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !526 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !526 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !526 {
  tail call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !527 {
  tail call void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !528 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !527 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !529 {
  store i32 0, ptr %0, align 4, !tbaa !530
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !535
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !536 {
  %2 = load ptr, ptr %0, align 8, !tbaa !537
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !540
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !541 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !542 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !536 {
  %2 = load ptr, ptr %0, align 8, !tbaa !537
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !543
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !541 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !541 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !544 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !545

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #16
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !546 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !546 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !525 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !525 {
  tail call void @_ZNSaIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !525 {
  tail call void @_ZNSt15__new_allocatorIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !547 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !525 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  tail call void @_ZNSaI7SGFTreeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI7SGFTreeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  tail call void @_ZNSt15__new_allocatorI7SGFTreeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !548 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  tail call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !549 {
  store i32 0, ptr %0, align 8, !tbaa !550
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !524 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !549 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !555
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !556
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !557
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !558
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN7SGFTree9get_stateEv(ptr noundef nonnull readnone returned align 8 dereferenceable(8512) %0) local_unnamed_addr #8 align 2 !prof !559 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN7SGFTree9get_childEj(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !560 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %5 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  %6 = icmp ugt i64 %5, %3
  br i1 %6, label %7, label %9, !prof !561

7:                                                ; preds = %2
  %8 = tail call noundef nonnull align 8 dereferenceable(8512) ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %3) #18
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !562 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !563
  %4 = load ptr, ptr %0, align 8, !tbaa !565
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8512
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8512) ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %3 = load ptr, ptr %0, align 8, !tbaa !565
  %4 = getelementptr inbounds %class.SGFTree, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind noalias nonnull writable sret(%class.GameState) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8512) %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !559 {
  tail call void @_ZN9GameStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %0) #16
  %4 = invoke noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #16
          to label %5 unwind label %8

5:                                                ; preds = %3
  invoke void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508) %0) #16
          to label %6 unwind label %8

6:                                                ; preds = %5
  %7 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #16
          to label %12 unwind label %10

8:                                                ; preds = %5, %3
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %34

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %34

12:                                               ; preds = %6, %27
  %13 = phi i32 [ %30, %27 ], [ 0, %6 ]
  %14 = phi i32 [ %28, %27 ], [ %7, %6 ]
  %15 = phi ptr [ %29, %27 ], [ %1, %6 ]
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %27, label %17, !prof !567

17:                                               ; preds = %12
  %18 = invoke noundef i32 @_ZN7SGFTree8get_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %15, i32 noundef %14) #16
          to label %19 unwind label %25

19:                                               ; preds = %17
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %27, label %21, !prof !568

21:                                               ; preds = %19
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %0, i32 noundef %18) #16
          to label %22 unwind label %25

22:                                               ; preds = %21
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i32
  br label %27

25:                                               ; preds = %21, %17
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %34

27:                                               ; preds = %19, %22, %12
  %28 = phi i32 [ %14, %12 ], [ %24, %22 ], [ %14, %19 ]
  %29 = tail call noundef ptr @_ZN7SGFTree9get_childEj(ptr noundef nonnull align 8 dereferenceable(8512) %15, i32 noundef 0) #16
  %30 = add i32 %13, 1
  %31 = icmp ule i32 %30, %2
  %32 = icmp ne ptr %29, null
  %33 = and i1 %32, %31
  br i1 %33, label %12, label %36, !prof !569, !llvm.loop !570

34:                                               ; preds = %10, %25, %8
  %35 = phi { ptr, i32 } [ %9, %8 ], [ %26, %25 ], [ %11, %10 ]
  tail call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %0) #18
  resume { ptr, i32 } %35

36:                                               ; preds = %27
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9GameStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN7KoStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #16
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  invoke void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %3, i32 noundef 9, i32 noundef 30000, i32 noundef 0, i32 noundef 25) #16
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #18
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8388) ptr @_ZN9FastStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #16
  %4 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %7 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN9GameState19anchor_game_historyEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN7SGFTree8get_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !572 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, ptr @.str.9, ptr @.str.8, !prof !573
  %10 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %9) #16
          to label %13 unwind label %11

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %42

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %14 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %15 = invoke ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
          to label %16 unwind label %26

16:                                               ; preds = %13
  store ptr %15, ptr %4, align 8, !tbaa.struct !574
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %17 = call ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %14) #18
  store ptr %17, ptr %5, align 8
  %18 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br i1 %18, label %19, label %38, !prof !576

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  %20 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %21 = getelementptr inbounds %"struct.std::pair.34", ptr %20, i64 0, i32 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %21) #16
          to label %22 unwind label %28

22:                                               ; preds = %19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6) #16
          to label %23 unwind label %30

23:                                               ; preds = %22
  %24 = invoke noundef i32 @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %7) #16
          to label %25 unwind label %32

25:                                               ; preds = %23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  br label %38

26:                                               ; preds = %13
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %40

28:                                               ; preds = %19
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %36

30:                                               ; preds = %22
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %23
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  br label %40

38:                                               ; preds = %16, %25
  %39 = phi i32 [ %24, %25 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret i32 %39

40:                                               ; preds = %36, %26
  %41 = phi { ptr, i32 } [ %37, %36 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %42

42:                                               ; preds = %40, %11
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %12, %11 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %43
}

; Function Attrs: optsize
declare void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !577 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !578 {
  %2 = load ptr, ptr %0, align 8, !tbaa !579
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !581
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  invoke void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !577 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !577 {
  tail call void @_ZNSaI7KoStateEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI7KoStateEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !577 {
  tail call void @_ZNSt15__new_allocatorI7KoStateEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !582 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !577 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !578 {
  tail call void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !583 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !578 {
  %2 = load ptr, ptr %0, align 8, !tbaa !579
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !584
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8440
  invoke void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !578 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !578 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !585

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %5) #16
  %6 = getelementptr inbounds %class.KoState, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !586, !llvm.loop !587

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !588 {
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !589 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !590

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #16
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !591 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !592 {
  tail call void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !592 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !593 {
  %2 = load ptr, ptr %0, align 8, !tbaa !594
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !596
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  invoke void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !597 {
  tail call void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !598 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !593 {
  %2 = load ptr, ptr %0, align 8, !tbaa !594
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !599
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !597 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !597 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !600 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !601

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #16
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !602 {
  tail call void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !602 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8388) ptr @_ZN9FastStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8072) ptr @_ZN9FullBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #16
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(124) %5, i64 124, i1 false)
  %6 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 9
  %8 = tail call noundef nonnull align 4 dereferenceable(192) ptr @_ZN5boost5arrayISt4pairIiiELm24EEaSERKS3_(ptr noundef nonnull align 4 dereferenceable(192) %6, ptr noundef nonnull align 4 dereferenceable(192) %7) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 !prof !603 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4, !prof !604

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %6 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24, !prof !605

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %10 = tail call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %11 = tail call noundef ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !594
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !596
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #16
  %16 = load ptr, ptr %0, align 8, !tbaa !594
  %17 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !599
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  tail call void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #16
  store ptr %11, ptr %0, align 8, !tbaa !594
  %23 = getelementptr inbounds i64, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !599
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %29 = tail call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %30 = tail call ptr @_ZNSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #16
  %32 = tail call ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEyEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #16
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !594
  %36 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %37 = getelementptr inbounds i64, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !594
  %39 = tail call noundef ptr @_ZSt4copyIPyS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #16
  %40 = load ptr, ptr %1, align 8, !tbaa !594
  %41 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %42 = getelementptr inbounds i64, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !596
  %45 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !596
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPyS0_yET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #16
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !594
  %51 = getelementptr inbounds i64, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !596
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8072) ptr @_ZN9FullBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #16
  %4 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(192) ptr @_ZN5boost5arrayISt4pairIiiELm24EEaSERKS3_(ptr noundef nonnull align 4 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(192) %1) local_unnamed_addr #4 comdat align 2 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %0, i64 0, i64 %5
  %7 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %1, i64 0, i64 %5
  %8 = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSERKS0_(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) #16
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %3, label %4, !llvm.loop !606
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #4 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !607
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %7, ptr %8, align 8, !tbaa !607
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 !prof !560 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4, !prof !618

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24, !prof !618

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %10 = tail call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %11 = tail call noundef ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !537
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !540
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #16
  %16 = load ptr, ptr %0, align 8, !tbaa !537
  %17 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !543
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  tail call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #16
  store ptr %11, ptr %0, align 8, !tbaa !537
  %23 = getelementptr inbounds i32, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !543
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27, !prof !618

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %29 = tail call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %30 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #16
  %32 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #16
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !537
  %36 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %37 = getelementptr inbounds i32, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !537
  %39 = tail call noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #16
  %40 = load ptr, ptr %1, align 8, !tbaa !537
  %41 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %42 = getelementptr inbounds i32, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !540
  %45 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !540
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #16
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !537
  %51 = getelementptr inbounds i32, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !540
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !619 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !540
  %4 = load ptr, ptr %0, align 8, !tbaa !537
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !560 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !543
  %4 = load ptr, ptr %0, align 8, !tbaa !537
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !620 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #16
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #17
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #16
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #21
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
  tail call void @__clang_call_terminate(ptr %19) #19
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !621 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !621 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !560 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(ptr %0, ptr %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat !prof !560 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #16
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #16
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !622 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.27", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !623 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.27", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !620 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !624 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !625

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !626 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %5
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !627 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !627 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !628

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
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !629 {
  ret i64 2305843009213693951
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !626 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !626 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !626 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #16
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !626 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !575
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #18
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #18
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #18
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #5 comdat !prof !630 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !626 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !621 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !630 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !575
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !631 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !621 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !621 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !632

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !633 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !630 {
  %3 = load ptr, ptr %1, align 8, !tbaa !575
  store ptr %3, ptr %0, align 8, !tbaa !634
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #4 comdat !prof !560 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_(ptr %0, ptr %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #5 comdat align 2 !prof !560 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat !prof !560 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #18
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #18
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #16
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !560 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.27", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #18
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !603 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.27", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !575
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !560 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.27", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !636
  %6 = getelementptr inbounds i32, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !575
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !638 {
  %3 = load ptr, ptr %1, align 8, !tbaa !575
  store ptr %3, ptr %0, align 8, !tbaa !636
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !639 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !575
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #18
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #18
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !620 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %4 = tail call noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSERKS0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 !prof !640 {
  %3 = load <2 x i32>, ptr %1, align 4, !tbaa !641
  store <2 x i32> %3, ptr %0, align 4, !tbaa !641
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !642 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !596
  %4 = load ptr, ptr %0, align 8, !tbaa !594
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !603 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !599
  %4 = load ptr, ptr %0, align 8, !tbaa !594
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !603 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #16
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #17
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #16
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #21
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
  tail call void @__clang_call_terminate(ptr %19) #19
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !643 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !643 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEyEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !620 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEvT_S7_(ptr %0, ptr %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) #16
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %1) #16
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !644 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !645 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPyS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPyET_S1_(ptr noundef %0) #16
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPyET_S1_(ptr noundef %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPyS0_yET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !620 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPyS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !646 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !647

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !643 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !602 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !602 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !628

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !648 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !643 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !643 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !643 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) #16
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %1) #16
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #16
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !643 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !575
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #18
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #18
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #18
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) local_unnamed_addr #5 comdat !prof !649 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !643 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !643 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !649 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.28", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !575
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !650 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !643 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !643 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !651

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !652 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !649 {
  %3 = load ptr, ptr %1, align 8, !tbaa !575
  store ptr %3, ptr %0, align 8, !tbaa !653
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #4 comdat !prof !620 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEEvT_S9_(ptr %0, ptr %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #5 comdat align 2 !prof !620 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEENS1_IPyS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #18
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #18
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #18
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #16
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !620 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #18
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #5 comdat !prof !620 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !575
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !655
  %6 = getelementptr inbounds i64, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !575
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !657 {
  %3 = load ptr, ptr %1, align 8, !tbaa !575
  store ptr %3, ptr %0, align 8, !tbaa !655
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !658 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !575
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) #18
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #18
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  %9 = call noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #16
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPyET_S1_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !620 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPyS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPyS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !620 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPyS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPyS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %4 = tail call noundef ptr @_ZSt4copyIPyS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN7SGFTree23get_state_from_mainlineEj(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !620 {
  br label %6

3:                                                ; preds = %6
  %4 = add i32 %7, 1
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %11, label %6, !llvm.loop !659

6:                                                ; preds = %2, %3
  %7 = phi i32 [ 0, %2 ], [ %4, %3 ]
  %8 = phi ptr [ %0, %2 ], [ %9, %3 ]
  %9 = tail call noundef ptr @_ZN7SGFTree9get_childEj(ptr noundef nonnull align 8 dereferenceable(8512) %8, i32 noundef 0) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3

11:                                               ; preds = %3, %6
  %12 = phi ptr [ %9, %3 ], [ %8, %6 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN7SGFTree20count_mainline_movesEv(ptr noundef nonnull align 8 dereferenceable(8512) %0) local_unnamed_addr #5 align 2 !prof !620 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ -1, %1 ], [ %6, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %5 = tail call noundef ptr @_ZN7SGFTree9get_childEj(ptr noundef nonnull align 8 dereferenceable(8512) %4, i32 noundef 0) #16
  %6 = add nsw i32 %3, 1
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %2, !llvm.loop !660

8:                                                ; preds = %2
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !559 {
  %3 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %3) #17
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 8) #16
  invoke void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef 19, float noundef 7.500000e+00) #16
          to label %4 unwind label %7

4:                                                ; preds = %2
  invoke void @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull %0) #16
          to label %5 unwind label %7

5:                                                ; preds = %4
  invoke void @_ZN7SGFTree15populate_statesEv(ptr noundef nonnull align 8 dereferenceable(8512) %0) #16
          to label %6 unwind label %7

6:                                                ; preds = %5
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #17
  ret void

7:                                                ; preds = %5, %4, %2
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #17
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

; Function Attrs: optsize
declare void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTree15populate_statesEv(ptr noundef nonnull align 8 dereferenceable(8512) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !560 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::allocator.30", align 1
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::allocator.30", align 1
  %8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %11 = alloca i32, align 4
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::allocator.30", align 1
  %14 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_istringstream", align 8
  %17 = alloca float, align 4
  %18 = alloca %"struct.std::pair.36", align 8
  %19 = alloca %"class.std::__cxx11::basic_string", align 8
  %20 = alloca %"class.std::allocator.30", align 1
  %21 = alloca %"class.std::__cxx11::basic_string", align 8
  %22 = alloca %"class.std::__cxx11::basic_string", align 8
  %23 = alloca %"struct.std::pair.36", align 8
  %24 = alloca %"class.std::__cxx11::basic_string", align 8
  %25 = alloca %"class.std::allocator.30", align 1
  %26 = alloca %"class.std::__cxx11::basic_string", align 8
  %27 = alloca %"class.std::__cxx11::basic_string", align 8
  %28 = alloca %"class.std::__cxx11::basic_string", align 8
  %29 = alloca %"class.std::allocator.30", align 1
  %30 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %31 = alloca %"class.std::__cxx11::basic_string", align 8
  %32 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  %33 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %34 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #17
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %4) #16
          to label %35 unwind label %46

35:                                               ; preds = %1
  %36 = invoke ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
          to label %37 unwind label %48

37:                                               ; preds = %35
  store ptr %36, ptr %2, align 8, !tbaa.struct !574
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %38 = call ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #18
  store ptr %38, ptr %5, align 8
  %39 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  br i1 %39, label %40, label %52, !prof !661

40:                                               ; preds = %37
  %41 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %42 = getelementptr inbounds %"struct.std::pair.34", ptr %41, i64 0, i32 1
  %43 = call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.2) #16
  br i1 %43, label %44, label %52, !prof !662

44:                                               ; preds = %40
  %45 = call ptr @__cxa_allocate_exception(i64 8) #17
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %45) #18
  call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #21
  unreachable

46:                                               ; preds = %1
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %50

48:                                               ; preds = %35
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %47, %46 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %216

52:                                               ; preds = %40, %37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #17
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %7) #16
          to label %53 unwind label %67

53:                                               ; preds = %52
  %54 = invoke ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(32) %6) #16
          to label %55 unwind label %69

55:                                               ; preds = %53
  store ptr %54, ptr %2, align 8, !tbaa.struct !574
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %56 = call ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #18
  store ptr %56, ptr %8, align 8
  %57 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br i1 %57, label %58, label %82, !prof !663

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #17
  %59 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %60 = getelementptr inbounds %"struct.std::pair.34", ptr %59, i64 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %60) #16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %10) #17
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %10, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 8) #16
          to label %61 unwind label %73

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  %62 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(4) %11) #16
          to label %63 unwind label %75

63:                                               ; preds = %61
  %64 = load i32, ptr %11, align 4, !tbaa !641
  %65 = icmp slt i32 %64, 20
  br i1 %65, label %66, label %77, !prof !664

66:                                               ; preds = %63
  invoke void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %64, float noundef 7.500000e+00) #16
          to label %79 unwind label %75

67:                                               ; preds = %52
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %71

69:                                               ; preds = %53
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi { ptr, i32 } [ %70, %69 ], [ %68, %67 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  br label %216

73:                                               ; preds = %58
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %80

75:                                               ; preds = %77, %66, %61
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %10) #18
  br label %80

77:                                               ; preds = %63
  %78 = call ptr @__cxa_allocate_exception(i64 8) #17
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %78) #18
  invoke void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #21
          to label %218 unwind label %75

79:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %10) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #17
  br label %82

80:                                               ; preds = %75, %73
  %81 = phi { ptr, i32 } [ %76, %75 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #17
  br label %216

82:                                               ; preds = %79, %55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #17
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %13) #16
          to label %83 unwind label %98

83:                                               ; preds = %82
  %84 = invoke ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
          to label %85 unwind label %100

85:                                               ; preds = %83
  store ptr %84, ptr %2, align 8, !tbaa.struct !574
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  %86 = call ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #18
  store ptr %86, ptr %14, align 8
  %87 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  br i1 %87, label %88, label %110, !prof !567

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #17
  %89 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %90 = getelementptr inbounds %"struct.std::pair.34", ptr %89, i64 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %90) #16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %16) #17
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %16, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 8) #16
          to label %91 unwind label %104

91:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #17
  %92 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 4 dereferenceable(4) %17) #16
          to label %93 unwind label %106

93:                                               ; preds = %91
  %94 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #16
          to label %95 unwind label %106

95:                                               ; preds = %93
  %96 = load float, ptr %17, align 4, !tbaa !665
  invoke void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %94, float noundef %96) #16
          to label %97 unwind label %106

97:                                               ; preds = %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #17
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %16) #18
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %16) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #17
  br label %110

98:                                               ; preds = %82
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %102

100:                                              ; preds = %83
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #18
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %99, %98 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #17
  br label %216

104:                                              ; preds = %88
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %108

106:                                              ; preds = %95, %93, %91
  %107 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #17
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %16) #18
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %105, %104 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %16) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #17
  br label %216

110:                                              ; preds = %97, %85
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #17
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %20) #16
          to label %111 unwind label %128

111:                                              ; preds = %110
  %112 = invoke { ptr, ptr } @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11equal_rangeERS9_(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(32) %19) #16
          to label %113 unwind label %130

113:                                              ; preds = %111
  %114 = extractvalue { ptr, ptr } %112, 0
  store ptr %114, ptr %18, align 8
  %115 = getelementptr inbounds { ptr, ptr }, ptr %18, i64 0, i32 1
  %116 = extractvalue { ptr, ptr } %112, 1
  store ptr %116, ptr %115, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %19) #18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #17
  %117 = load i64, ptr %18, align 8, !tbaa !575
  store i64 %117, ptr %2, align 8, !tbaa !575
  %118 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %115) #18
  br i1 %118, label %119, label %140, !prof !667

119:                                              ; preds = %113, %125
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #17
  %120 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %121 = getelementptr inbounds %"struct.std::pair.34", ptr %120, i64 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %121) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %21) #16
          to label %122 unwind label %134

122:                                              ; preds = %119
  %123 = invoke noundef i32 @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %22) #16
          to label %124 unwind label %136

124:                                              ; preds = %122
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #18
  invoke void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef 0, i32 noundef %123) #16
          to label %125 unwind label %134

125:                                              ; preds = %124
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #17
  %126 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %127 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %115) #18
  br i1 %127, label %119, label %140, !prof !668, !llvm.loop !669

128:                                              ; preds = %110
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %132

130:                                              ; preds = %111
  %131 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %19) #18
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi { ptr, i32 } [ %131, %130 ], [ %129, %128 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %20) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %19) #17
  br label %214

134:                                              ; preds = %124, %119
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %138

136:                                              ; preds = %122
  %137 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #18
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { ptr, i32 } [ %135, %134 ], [ %137, %136 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #17
  br label %214

140:                                              ; preds = %125, %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #17
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %25) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %25) #16
          to label %141 unwind label %158

141:                                              ; preds = %140
  %142 = invoke { ptr, ptr } @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11equal_rangeERS9_(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(32) %24) #16
          to label %143 unwind label %160

143:                                              ; preds = %141
  %144 = extractvalue { ptr, ptr } %142, 0
  store ptr %144, ptr %23, align 8
  %145 = getelementptr inbounds { ptr, ptr }, ptr %23, i64 0, i32 1
  %146 = extractvalue { ptr, ptr } %142, 1
  store ptr %146, ptr %145, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %25) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #17
  %147 = ptrtoint ptr %144 to i64
  store i64 %147, ptr %2, align 8, !tbaa !575
  %148 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %145) #18
  br i1 %148, label %149, label %170, !prof !667

149:                                              ; preds = %143, %155
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %26) #17
  %150 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %151 = getelementptr inbounds %"struct.std::pair.34", ptr %150, i64 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %151) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %26) #16
          to label %152 unwind label %164

152:                                              ; preds = %149
  %153 = invoke noundef i32 @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %27) #16
          to label %154 unwind label %166

154:                                              ; preds = %152
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #18
  invoke void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef 1, i32 noundef %153) #16
          to label %155 unwind label %164

155:                                              ; preds = %154
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #17
  %156 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %157 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %145) #18
  br i1 %157, label %149, label %170, !prof !668, !llvm.loop !670

158:                                              ; preds = %140
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %162

160:                                              ; preds = %141
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #18
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %159, %158 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %25) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #17
  br label %212

164:                                              ; preds = %154, %149
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %168

166:                                              ; preds = %152
  %167 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #18
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi { ptr, i32 } [ %165, %164 ], [ %167, %166 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %26) #17
  br label %212

170:                                              ; preds = %155, %143
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %28) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #17
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %29) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %29) #16
          to label %171 unwind label %180

171:                                              ; preds = %170
  %172 = invoke ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull align 8 dereferenceable(32) %28) #16
          to label %173 unwind label %182

173:                                              ; preds = %171
  store ptr %172, ptr %2, align 8, !tbaa.struct !574
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %28) #18
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %29) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #17
  %174 = call ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %34) #18
  store ptr %174, ptr %30, align 8
  %175 = call noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %30) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #17
  br i1 %175, label %176, label %193, !prof !618

176:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %31) #17
  %177 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %178 = getelementptr inbounds %"struct.std::pair.34", ptr %177, i64 0, i32 1
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %178) #16
  %179 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.8) #16
  br i1 %179, label %190, label %188

180:                                              ; preds = %170
  %181 = landingpad { ptr, i32 }
          cleanup
  br label %184

182:                                              ; preds = %171
  %183 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %28) #18
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi { ptr, i32 } [ %183, %182 ], [ %181, %180 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %29) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %28) #17
  br label %212

186:                                              ; preds = %190
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #17
  br label %212

188:                                              ; preds = %176
  %189 = call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.9) #16
  br i1 %189, label %190, label %192

190:                                              ; preds = %176, %188
  %191 = phi i32 [ 0, %188 ], [ 1, %176 ]
  invoke void @_ZN9FastState11set_to_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %191) #16
          to label %192 unwind label %186

192:                                              ; preds = %190, %188
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %31) #17
  br label %193

193:                                              ; preds = %192, %173
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #17
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %32) #18
  %194 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %195 = call ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %194) #18
  store ptr %195, ptr %32, align 8, !tbaa.struct !574
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #17
  %196 = call ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %194) #18
  store ptr %196, ptr %33, align 8
  %197 = call noundef zeroext i1 @_ZN9__gnu_cxxneIP7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %33) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #17
  br i1 %197, label %198, label %211, !prof !671

198:                                              ; preds = %193, %206
  %199 = call noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #18
  call void @_ZN7SGFTree9set_stateER7KoState(ptr noundef nonnull align 8 dereferenceable(8512) %199, ptr noundef nonnull align 8 dereferenceable(8440) %0) #16
  %200 = call noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #18
  %201 = call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #16
  %202 = call noundef i32 @_ZN7SGFTree8get_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %200, i32 noundef %201) #16
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204, !prof !568

204:                                              ; preds = %198
  %205 = call noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #18
  call void @_ZN7SGFTree10apply_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %205, i32 noundef %202) #16
  br label %206

206:                                              ; preds = %204, %198
  %207 = call noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #18
  call void @_ZN7SGFTree15populate_statesEv(ptr noundef nonnull align 8 dereferenceable(8512) %207) #16
  %208 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %33) #17
  %209 = call ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %194) #18
  store ptr %209, ptr %33, align 8
  %210 = call noundef zeroext i1 @_ZN9__gnu_cxxneIP7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %33) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %33) #17
  br i1 %210, label %198, label %211, !prof !672, !llvm.loop !673

211:                                              ; preds = %206, %193
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void

212:                                              ; preds = %186, %184, %168, %162
  %213 = phi { ptr, i32 } [ %169, %168 ], [ %187, %186 ], [ %185, %184 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %23) #17
  br label %214

214:                                              ; preds = %212, %138, %132
  %215 = phi { ptr, i32 } [ %139, %138 ], [ %213, %212 ], [ %133, %132 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #17
  br label %216

216:                                              ; preds = %214, %108, %102, %80, %71, %50
  %217 = phi { ptr, i32 } [ %215, %214 ], [ %109, %108 ], [ %103, %102 ], [ %81, %80 ], [ %72, %71 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  resume { ptr, i32 } %217

218:                                              ; preds = %77
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !674 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !674 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #16
  store i64 %6, ptr %4, align 8, !tbaa !675
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !676

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #16
  %10 = load i64, ptr %4, align 8, !tbaa !675
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #16
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #16
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #18
  store ptr null, ptr %5, align 8, !tbaa !677
  %15 = load i64, ptr %4, align 8, !tbaa !675
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #16
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !674 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !575
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #16
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !674 {
  store ptr %1, ptr %0, align 8, !tbaa !677
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !674 {
  %2 = load ptr, ptr %0, align 8, !tbaa !677
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !679

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !674 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !674 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !577 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  invoke void @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull %5, i32 noundef %2) #16
          to label %7 unwind label %11

7:                                                ; preds = %3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %8 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  br i1 %8, label %9, label %15, !prof !680

9:                                                ; preds = %7
  %10 = call ptr @__cxa_allocate_exception(i64 8) #17
  call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #21
          to label %23 unwind label %13

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %20

13:                                               ; preds = %15, %9
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %20

15:                                               ; preds = %7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
          to label %16 unwind label %13

16:                                               ; preds = %15
  invoke void @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %6) #16
          to label %17 unwind label %18

17:                                               ; preds = %16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  ret void

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  br label %20

20:                                               ; preds = %13, %18, %11
  %21 = phi ptr [ %5, %11 ], [ %4, %18 ], [ %4, %13 ]
  %22 = phi { ptr, i32 } [ %12, %11 ], [ %19, %18 ], [ %14, %13 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  resume { ptr, i32 } %22

23:                                               ; preds = %9
  unreachable
}

; Function Attrs: optsize
declare void @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !681 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !682
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !684 {
  store ptr null, ptr %0, align 8, !tbaa !685
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !687 {
  %3 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !674 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10, !prof !688

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #22
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #16
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #16
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !689 {
  %3 = load ptr, ptr %0, align 8, !tbaa !685
  %4 = load ptr, ptr %1, align 8, !tbaa !685
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !687 {
  %2 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !681 {
  %3 = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #16
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !603 {
  %2 = load ptr, ptr %0, align 8, !tbaa !685
  %3 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #16
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4 align 2

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11equal_rangeERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !603 {
  %3 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  ret { ptr, ptr } %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %1) local_unnamed_addr #4 align 2 !prof !572 {
  %3 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %32, label %5, !prof !690

5:                                                ; preds = %2
  %6 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #16
  %7 = icmp slt i32 %6, 20
  br i1 %7, label %8, label %10, !prof !576

8:                                                ; preds = %5
  %9 = tail call noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.12) #16
  br i1 %9, label %32, label %10, !prof !690

10:                                               ; preds = %8, %5
  %11 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #16
  %12 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0) #16
  %13 = load i8, ptr %12, align 1, !tbaa !691
  %14 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1) #16
  %15 = load i8, ptr %14, align 1, !tbaa !691
  %16 = sext i8 %13 to i32
  %17 = add nsw i32 %16, -97
  %18 = sext i8 %15 to i32
  %19 = sub i32 %11, %18
  %20 = add i32 %19, 96
  %21 = icmp slt i8 %13, 97
  br i1 %21, label %28, label %22, !prof !690

22:                                               ; preds = %10
  %23 = icmp slt i32 %17, %11
  %24 = icmp sgt i32 %20, -1
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp slt i32 %20, %11
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %30, label %28, !prof !692

28:                                               ; preds = %22, %10
  %29 = tail call ptr @__cxa_allocate_exception(i64 8) #17
  tail call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #18
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #21
  unreachable

30:                                               ; preds = %22
  %31 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %17, i32 noundef %20) #16
  br label %32

32:                                               ; preds = %8, %2, %30
  %33 = phi i32 [ %31, %30 ], [ -1, %2 ], [ -1, %8 ]
  ret i32 %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !566 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %10, label %5, !prof !568

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2) #16
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %10, label %8, !prof !693

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 8) #17
  tail call void @_ZNSt9exceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #21
  unreachable

10:                                               ; preds = %5, %3
  tail call void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %2 = load ptr, ptr %0, align 8, !tbaa !685
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %2) #24
  store ptr %3, ptr %0, align 8, !tbaa !685
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !694 {
  %3 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #18
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN9FastState11set_to_moveEi(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !560 {
  store ptr null, ptr %0, align 8, !tbaa !695
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !560 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIP7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !697 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !575
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !575
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !684 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !698 {
  %2 = load ptr, ptr %0, align 8, !tbaa !695
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTree9set_stateER7KoState(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #4 align 2 !prof !566 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTree10apply_moveEi(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !566 {
  %3 = tail call noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #16
  tail call void @_ZN7SGFTree10apply_moveEii(ptr noundef nonnull align 8 dereferenceable(8512) %0, i32 noundef %3, i32 noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %2 = load ptr, ptr %0, align 8, !tbaa !695
  %3 = getelementptr inbounds %class.SGFTree, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !695
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !687 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %7 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %8 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br i1 %9, label %14, label %10, !prof !699

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !685
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %11) #16
  %13 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  br i1 %13, label %14, label %16, !prof !700

14:                                               ; preds = %10, %2
  %15 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !574
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat align 2 !prof !687 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7, !prof !701

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull %8) #16
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  br i1 %11, label %14, label %12, !prof !702

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !703, !llvm.loop !704

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #18
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !705 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !706 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !687 {
  %3 = load ptr, ptr %0, align 8, !tbaa !685
  %4 = load ptr, ptr %1, align 8, !tbaa !685
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !707 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 comdat align 2 !prof !708 {
  %4 = tail call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !709 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !710 {
  %2 = alloca %"struct.std::_Select1st", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #17
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #16
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !711 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !712
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !713 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !714
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !715 {
  store ptr %1, ptr %0, align 8, !tbaa !685
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #5 comdat align 2 !prof !710 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !710 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !710 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !710 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !705 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !555
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 !prof !708 {
  %3 = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
          to label %4 unwind label %6

4:                                                ; preds = %2
  %5 = icmp slt i32 %3, 0
  ret i1 %5

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !716 {
  %3 = load i64, ptr %1, align 8, !tbaa !675
  %4 = load i64, ptr %0, align 8, !tbaa !675
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !717
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !674 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 comdat align 2 !prof !718 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !718 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !718 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !603 {
  %3 = alloca %"struct.std::pair.36", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %10 = icmp eq ptr %8, null
  br i1 %10, label %30, label %11, !prof !719

11:                                               ; preds = %2, %26
  %12 = phi ptr [ %28, %26 ], [ %8, %2 ]
  %13 = phi ptr [ %27, %26 ], [ %9, %2 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull %12) #16
  %15 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  br i1 %15, label %16, label %18, !prof !720

16:                                               ; preds = %11
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %12) #18
  br label %26

18:                                               ; preds = %11
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull %12) #16
  %20 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %19) #16
  %21 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %12) #18
  br i1 %20, label %26, label %22, !prof !721

22:                                               ; preds = %18
  %23 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %24 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %21, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  store ptr %24, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %25 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %23, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  store ptr %25, ptr %5, align 8
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES9_EC2IS9_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  br label %32

26:                                               ; preds = %18, %16
  %27 = phi ptr [ %13, %16 ], [ %12, %18 ]
  %28 = phi ptr [ %17, %16 ], [ %21, %18 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %11, !prof !722, !llvm.loop !723

30:                                               ; preds = %26, %2
  %31 = phi ptr [ %9, %2 ], [ %27, %26 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %31) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %31) #18
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES9_EC2IS9_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  br label %32

32:                                               ; preds = %30, %22
  %33 = load ptr, ptr %3, align 8
  %34 = insertvalue { ptr, ptr } poison, ptr %33, 0
  %35 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = insertvalue { ptr, ptr } %34, ptr %36, 1
  ret { ptr, ptr } %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull %8) #16
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %8, %12 ], [ %9, %14 ]
  %18 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !724

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #18
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES9_EC2IS9_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !603 {
  %4 = load i64, ptr %1, align 8, !tbaa !575
  store i64 %4, ptr %0, align 8, !tbaa !575
  %5 = getelementptr inbounds %"struct.std::pair.36", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %2, align 8, !tbaa !575
  store i64 %6, ptr %5, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !725 {
  %3 = load ptr, ptr %1, align 8, !tbaa !575
  store ptr %3, ptr %0, align 8, !tbaa !695
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !726 {
  ret ptr %0
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !727 {
  %4 = alloca %"struct.std::pair.39", align 8
  %5 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  call void @_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.39") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %6 = invoke ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE6insertIS8_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISA_T_EE5valueESt17_Rb_tree_iteratorISA_EE4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(64) %4) #16
          to label %7 unwind label %8

7:                                                ; preds = %3
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE6insertIS8_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISA_T_EE5valueESt17_Rb_tree_iteratorISA_EE4typeEOSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %3 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.39") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !727 {
  tail call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair.39", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !727 {
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeC2IJS6_IS5_S5_EEEERSE_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  %4 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
          to label %5 unwind label %12

5:                                                ; preds = %2
  %6 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
          to label %7 unwind label %12

7:                                                ; preds = %5
  %8 = extractvalue { ptr, ptr } %6, 0
  %9 = extractvalue { ptr, ptr } %6, 1
  %10 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %8, ptr %9) #16
          to label %11 unwind label %12

11:                                               ; preds = %7
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  ret ptr %10

12:                                               ; preds = %7, %5, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeC2IJS6_IS5_S5_EEEERSE_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #4 comdat align 2 !prof !727 {
  store ptr %1, ptr %0, align 8, !tbaa !575
  %4 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS6_IS5_S5_EEEEPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  store ptr %5, ptr %4, align 8, !tbaa !728
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %3 = alloca %"struct.std::pair.41", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %8 = icmp eq ptr %6, null
  br i1 %8, label %20, label %9, !prof !730

9:                                                ; preds = %2, %17
  %10 = phi ptr [ %18, %17 ], [ %6, %2 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull %10) #16
  %12 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  br i1 %12, label %13, label %15, !prof !731

13:                                               ; preds = %9
  %14 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %10) #18
  br label %17

15:                                               ; preds = %9
  %16 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %10) #18
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !prof !732, !llvm.loop !733

20:                                               ; preds = %17, %2
  %21 = phi ptr [ %7, %2 ], [ %10, %17 ]
  store ptr %21, ptr %5, align 8, !tbaa !575
  store ptr null, ptr %4, align 8, !tbaa !575
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISI_SJ_EEEbE4typeELb1EEEOSI_OSJ_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %22 = load ptr, ptr %3, align 8
  %23 = insertvalue { ptr, ptr } poison, ptr %22, 0
  %24 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = insertvalue { ptr, ptr } %23, ptr %25, 1
  ret { ptr, ptr } %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !728
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %4 = load ptr, ptr %0, align 8, !tbaa !734
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !728
  %7 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2, ptr noundef %6) #16
  store ptr null, ptr %5, align 8, !tbaa !728
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !727 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !728
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !735

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !734
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %3) #18
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS6_IS5_S5_EEEEPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS6_IS5_S5_EEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE8allocateERSB_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS6_IS5_S5_EEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !727 {
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %5 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #16
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JS1_IS7_S7_EEEEvRSB_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(64) %2) #16
          to label %12 unwind label %6

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = tail call ptr @__cxa_begin_catch(ptr %8) #17
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) #18
  invoke void @__cxa_rethrow() #21
          to label %17 unwind label %10

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %13 unwind label %14

12:                                               ; preds = %3
  ret void

13:                                               ; preds = %10
  resume { ptr, i32 } %11

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable

17:                                               ; preds = %6
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE8allocateERSB_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !736 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !628

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !727 {
  ret i64 96076792050570581
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JS1_IS7_S7_EEEEvRSB_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 !prof !727 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE9constructIS9_JS1_IS7_S7_EEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !727 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #16
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE9constructIS9_JS1_IS7_S7_EEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 !prof !727 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #5 comdat align 2 !prof !727 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %3 = getelementptr inbounds %"struct.std::pair.34", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::pair.39", ptr %1, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !727 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !727 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISI_SJ_EEEbE4typeELb1EEEOSI_OSJ_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !727 {
  %4 = load ptr, ptr %1, align 8, !tbaa !575
  store ptr %4, ptr %0, align 8, !tbaa !737
  %5 = getelementptr inbounds %"struct.std::pair.41", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !575
  store ptr %6, ptr %5, align 8, !tbaa !739
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 !prof !727 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %14, !prof !735

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %14, label %10, !prof !740

10:                                               ; preds = %7
  %11 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E(ptr noundef %3) #16
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #16
  %13 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  br label %14

14:                                               ; preds = %10, %7, %4
  %15 = phi i1 [ true, %7 ], [ true, %4 ], [ %13, %10 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %15, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %16) #18
  %17 = getelementptr inbounds i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !558
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !558
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %3) #18
  %20 = load ptr, ptr %5, align 8
  ret ptr %20
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !727 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #18
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !727 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #16
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !727 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !727 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair.34", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !727 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %4 = getelementptr inbounds %"struct.std::pair.39", ptr %0, i64 0, i32 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN7SGFTree9add_childES_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !566 {
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %4 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7, !prof !693

6:                                                ; preds = %2
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1) #16
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8512) %1) #16
  %8 = tail call noundef nonnull align 8 dereferenceable(8512) ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !566 {
  %3 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !568

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

6:                                                ; preds = %2
  %7 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %26, !prof !693

9:                                                ; preds = %6
  %10 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %11 = tail call noundef ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !565
  %13 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !563
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %16 = tail call noundef ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %12, ptr noundef %14, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %15) #18
  %17 = load ptr, ptr %0, align 8, !tbaa !565
  %18 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !741
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %17 to i64
  %22 = sub i64 %20, %21
  %23 = sdiv exact i64 %22, 8512
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %17, i64 noundef %23) #16
  store ptr %11, ptr %0, align 8, !tbaa !565
  %24 = getelementptr inbounds %class.SGFTree, ptr %11, i64 %10
  store ptr %24, ptr %13, align 8, !tbaa !563
  %25 = getelementptr inbounds %class.SGFTree, ptr %11, i64 %1
  store ptr %25, ptr %18, align 8, !tbaa !741
  br label %26

26:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) local_unnamed_addr #4 comdat align 2 !prof !566 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !563
  %5 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !741
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !568

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8512) %1) #16
  %9 = load ptr, ptr %3, align 8, !tbaa !563
  %10 = getelementptr inbounds %class.SGFTree, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !563
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8512) %1) #16
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8512) ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #18
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8512) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %3 = tail call noundef i64 @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !741
  %4 = load ptr, ptr %0, align 8, !tbaa !565
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8512
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !742 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !743

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #16
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !744 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !745 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !746

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #16
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 1083572842675608, ptr %2, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaI7SGFTreeEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store i64 %4, ptr %3, align 8, !tbaa !675
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %6 = load i64, ptr %5, align 8, !tbaa !675
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !742 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI7SGFTreeEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorI7SGFTreeE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI7SGFTreeE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorI7SGFTreeE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI7SGFTreeE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !572 {
  ret i64 1083572842675608
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !566 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !566 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorI7SGFTreeE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !628

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2167145685351216
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 8512
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !566 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIP7SGFTreeET_S2_(ptr noundef %0) #18
  %6 = tail call noundef ptr @_ZSt12__niter_baseIP7SGFTreeET_S2_(ptr noundef %1) #18
  %7 = tail call noundef ptr @_ZSt12__niter_baseIP7SGFTreeET_S2_(ptr noundef %2) #18
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !566 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6, !prof !747

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aI7SGFTreeS0_SaIS0_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  %9 = getelementptr inbounds %class.SGFTree, ptr %8, i64 1
  %10 = getelementptr inbounds %class.SGFTree, ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !prof !748, !llvm.loop !749

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIP7SGFTreeET_S2_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !742 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aI7SGFTreeS0_SaIS0_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat !prof !620 {
  tail call void @_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) #18
  tail call void @_ZNSt16allocator_traitsISaI7SGFTreeEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) local_unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7SGFTreeEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) local_unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZN7SGFTreeC2EOS_(ptr noundef nonnull align 8 dereferenceable(8512) %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SGFTreeC2EOS_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN7KoStateC2EOS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #18
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  %5 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2
  tail call void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2EOSC_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2EOS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN9FastStateC2EOS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #18
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  %5 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2EOSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2EOSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2EOS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN9FullBoardC2EOS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #18
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !750 {
  tail call void @_ZNSt12_Vector_baseIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2EOS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN9FastBoardC2EOS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #18
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2EOS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !607
  store i32 %7, ptr %5, align 8, !tbaa !607
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !751 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !751 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !751 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !751 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !575
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !575
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !543
  store ptr %6, ptr %4, align 8, !tbaa !543
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !752 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !750 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !750 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !750 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !575
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !575
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !599
  store ptr %6, ptr %4, align 8, !tbaa !599
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !753 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZNSaI7SGFTreeEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2EOS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !575
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !575
  %4 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !741
  store ptr %6, ptr %4, align 8, !tbaa !741
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !698 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2EOSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2EOSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2EOSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2ERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  tail call void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = getelementptr inbounds i8, ptr %1, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2EOS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2EOS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !620 {
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !555
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @_ZNSt15_Rb_tree_header12_M_move_dataERS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #16
  br label %8

7:                                                ; preds = %2
  store i32 0, ptr %0, align 8, !tbaa !550
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEC2ERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !698 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header12_M_move_dataERS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %3 = load i32, ptr %1, align 8, !tbaa !550
  store i32 %3, ptr %0, align 8, !tbaa !550
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !555
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !555
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %9 = load <2 x ptr>, ptr %7, align 8, !tbaa !575
  store <2 x ptr> %9, ptr %8, align 8, !tbaa !575
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !754
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !558
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 %12, ptr %13, align 8, !tbaa !558
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !620 {
  tail call void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  tail call void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #18
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !548 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !548 {
  %2 = load ptr, ptr %0, align 8, !tbaa !565
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !563
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  invoke void @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !548 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #16
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !755 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !756

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #18
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #16
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #18
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !757, !llvm.loop !758

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !548 {
  tail call void @_ZSt8_DestroyIP7SGFTreeEvT_S2_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !548 {
  %2 = load ptr, ptr %0, align 8, !tbaa !565
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !741
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8512
  invoke void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #16
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7SGFTreeEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !548 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !548 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !759

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %5) #16
  %6 = getelementptr inbounds %class.SGFTree, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !760, !llvm.loop !761

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !566 {
  tail call void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !566 {
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !566 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) local_unnamed_addr #4 comdat align 2 !prof !566 {
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JRKS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !620 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.11) #16
  %7 = load ptr, ptr %0, align 8, !tbaa !565
  %8 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !563
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %10 = tail call ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIP7SGFTreeSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %12 = call noundef ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #16
  %13 = getelementptr inbounds %class.SGFTree, ptr %12, i64 %11
  invoke void @_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8512) %2) #16
          to label %14 unwind label %31

14:                                               ; preds = %3
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %16 = load ptr, ptr %15, align 8, !tbaa !575
  %17 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %18 = call noundef ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %7, ptr noundef %16, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %17) #18
  %19 = getelementptr inbounds %class.SGFTree, ptr %18, i64 1
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %21 = load ptr, ptr %20, align 8, !tbaa !575
  %22 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %23 = call noundef ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %21, ptr noundef %9, ptr noundef nonnull %19, ptr noundef nonnull align 1 dereferenceable(1) %22) #18
  %24 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !741
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %7 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8512
  call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %29) #16
  store ptr %12, ptr %0, align 8, !tbaa !565
  store ptr %23, ptr %8, align 8, !tbaa !563
  %30 = getelementptr inbounds %class.SGFTree, ptr %12, i64 %6
  store ptr %30, ptr %24, align 8, !tbaa !741
  ret void

31:                                               ; preds = %3
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = call ptr @__cxa_begin_catch(ptr %33) #17
  %35 = icmp eq ptr %12, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @_ZNSt16allocator_traitsISaI7SGFTreeEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13) #18
  br label %41

37:                                               ; preds = %31
  %38 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  invoke void @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull align 1 dereferenceable(1) %38) #16
          to label %41 unwind label %39

39:                                               ; preds = %42, %41, %37
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %44

41:                                               ; preds = %37, %36
  invoke void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12, i64 noundef %6) #16
          to label %42 unwind label %39

42:                                               ; preds = %41
  invoke void @__cxa_rethrow() #21
          to label %47 unwind label %39

43:                                               ; preds = %39
  resume { ptr, i32 } %40

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  call void @__clang_call_terminate(ptr %46) #19
  unreachable

47:                                               ; preds = %42
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JRKS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) local_unnamed_addr #4 comdat align 2 !prof !566 {
  tail call void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %1, ptr noundef nonnull align 8 dereferenceable(8512) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #16
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
          to label %5 unwind label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.SGFTree, ptr %1, i64 0, i32 2
  invoke void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7) #16
          to label %8 unwind label %11

8:                                                ; preds = %5
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #18
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #16
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
          to label %5 unwind label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #16
          to label %8 unwind label %11

8:                                                ; preds = %5
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #18
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !572 {
  %3 = alloca %"class.std::allocator.14", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @_ZN9__gnu_cxx14__alloc_traitsISaI7SGFTreeES1_E17_S_select_on_copyERKS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.14") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  %7 = call ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %8 = call ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %9 = load ptr, ptr %0, align 8, !tbaa !565
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #16
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !563
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !572 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #16
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !762 {
  %3 = alloca %"class.std::allocator.9", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.9") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  %7 = call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %8 = call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %9 = load ptr, ptr %0, align 8, !tbaa !594
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #16
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !596
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #16
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !607
  store i32 %7, ptr %5, align 8, !tbaa !607
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !626 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  %7 = call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %8 = call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  %9 = load ptr, ptr %0, align 8, !tbaa !537
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #16
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !540
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !626 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !763 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !764 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !765 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !626 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !752 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !766 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !764 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !537
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !540
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !543
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !762 {
  tail call void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !767 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !762 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !768 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !762 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !753 {
  tail call void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !769 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !762 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !594
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !596
  %5 = getelementptr inbounds i64, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !599
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaI7SGFTreeES1_E17_S_select_on_copyERKS2_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !572 {
  tail call void @_ZNSt16allocator_traitsISaI7SGFTreeEE37select_on_container_copy_constructionERKS1_(ptr dead_on_unwind writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !572 {
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  invoke void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !770 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat !prof !572 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !572 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !572 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7SGFTreeEE37select_on_container_copy_constructionERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !572 {
  tail call void @_ZNSaI7SGFTreeEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI7SGFTreeEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !698 {
  tail call void @_ZNSt15__new_allocatorI7SGFTreeEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !572 {
  tail call void @_ZNSaI7SGFTreeEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !572 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !565
  %4 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !563
  %5 = getelementptr inbounds %class.SGFTree, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !741
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !572 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !572 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !572 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.43", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPK7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br i1 %6, label %7, label %19, !prof !771

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %12, %10 ], [ %2, %3 ]
  %9 = call noundef nonnull align 8 dereferenceable(8512) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  invoke void @_ZSt10_ConstructI7SGFTreeJRKS0_EEvPT_DpOT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8512) %9) #16
          to label %10 unwind label %14

10:                                               ; preds = %7
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %12 = getelementptr inbounds %class.SGFTree, ptr %8, i64 1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPK7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br i1 %13, label %7, label %19, !prof !668, !llvm.loop !772

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #17
  invoke void @_ZSt8_DestroyIP7SGFTreeEvT_S2_(ptr noundef %2, ptr noundef %8) #16
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
  call void @__clang_call_terminate(ptr %26) #19
  unreachable

27:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPK7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !572 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !575
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !575
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI7SGFTreeJRKS0_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) local_unnamed_addr #4 comdat !prof !620 {
  tail call void @_ZN7SGFTreeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8512) %0, ptr noundef nonnull align 8 dereferenceable(8512) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8512) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %2 = load ptr, ptr %0, align 8, !tbaa !773
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %2 = load ptr, ptr %0, align 8, !tbaa !773
  %3 = getelementptr inbounds %class.SGFTree, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !773
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !698 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !698 {
  %3 = load ptr, ptr %1, align 8, !tbaa !575
  store ptr %3, ptr %0, align 8, !tbaa !773
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !572 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  %3 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !576

5:                                                ; preds = %2
  %6 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
          to label %7 unwind label %9

7:                                                ; preds = %5
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %6, ptr %8, align 8, !tbaa !575
  br label %11

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %10

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !572 {
  %3 = alloca %"class.std::allocator.17", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  call void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESB_E17_S_select_on_copyERKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.17") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2ERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  call void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !572 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !555
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeC2ERSE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  %4 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSE_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESB_E17_S_select_on_copyERKSC_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.17") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !572 {
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE37select_on_container_copy_constructionERKSB_(ptr dead_on_unwind writable sret(%"class.std::allocator.17") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !770 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !572 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE37select_on_container_copy_constructionERKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.17") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #5 comdat align 2 !prof !572 {
  tail call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2ERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2ERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #5 comdat align 2 !prof !698 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEC2ERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeC2ERSE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !620 {
  store ptr %1, ptr %0, align 8, !tbaa !575
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ERKSE_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %4 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base(ptr noundef %6) #18
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %7, ptr %8, align 8, !tbaa !575
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_maximumEPSt18_Rb_tree_node_base(ptr noundef %6) #18
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %9, ptr %10, align 8, !tbaa !575
  %11 = getelementptr inbounds i8, ptr %1, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !558
  %13 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 %12, ptr %13, align 8, !tbaa !558
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !620 {
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_M_clone_nodeILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !754
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !714
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18
  %12 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
          to label %13 unwind label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  store ptr %12, ptr %14, align 8, !tbaa !714
  br label %17

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          catch ptr null
  br label %37

17:                                               ; preds = %13, %4
  %18 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %17, %42
  %21 = phi ptr [ %43, %42 ], [ %18, %17 ]
  %22 = phi ptr [ %23, %42 ], [ %5, %17 ]
  %23 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_M_clone_nodeILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
          to label %24 unwind label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %22, i64 0, i32 2
  store ptr %23, ptr %25, align 8, !tbaa !712
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %23, i64 0, i32 1
  store ptr %22, ptr %26, align 8, !tbaa !754
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !714
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %21) #18
  %32 = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %31, ptr noundef nonnull %23, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
          to label %33 unwind label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %23, i64 0, i32 3
  store ptr %32, ptr %34, align 8, !tbaa !714
  br label %42

35:                                               ; preds = %30, %20
  %36 = landingpad { ptr, i32 }
          catch ptr null
  br label %37

37:                                               ; preds = %35, %15
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %16, %15 ]
  %39 = extractvalue { ptr, i32 } %38, 0
  %40 = tail call ptr @__cxa_begin_catch(ptr %39) #17
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5) #16
          to label %41 unwind label %45

41:                                               ; preds = %37
  invoke void @__cxa_rethrow() #21
          to label %52 unwind label %45

42:                                               ; preds = %33, %24
  %43 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %21) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %20, !llvm.loop !775

45:                                               ; preds = %41, %37
  %46 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %47 unwind label %49

47:                                               ; preds = %45
  resume { ptr, i32 } %46

48:                                               ; preds = %42, %17
  ret ptr %5

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #19
  unreachable

52:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_minimumEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %2 = tail call noundef ptr @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_S_maximumEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %2 = tail call noundef ptr @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_M_clone_nodeILb0ENSE_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #16
  %5 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #16
  %6 = load i32, ptr %1, align 8, !tbaa !776
  store i32 %6, ptr %5, align 8, !tbaa !776
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %3 = load ptr, ptr %0, align 8, !tbaa !777
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKS8_EEEPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJRKS8_EEEPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !620 {
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %5 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #16
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKS9_EEEvRSB_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(64) %2) #16
          to label %12 unwind label %6

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = tail call ptr @__cxa_begin_catch(ptr %8) #17
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) #18
  invoke void @__cxa_rethrow() #21
          to label %17 unwind label %10

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %13 unwind label %14

12:                                               ; preds = %3
  ret void

13:                                               ; preds = %10
  resume { ptr, i32 } %11

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable

17:                                               ; preds = %6
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JRKS9_EEEvRSB_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 !prof !620 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE9constructIS9_JRKS9_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE9constructIS9_JRKS9_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 !prof !620 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !620 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #16
  %3 = getelementptr inbounds %"struct.std::pair.34", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.std::pair.34", ptr %1, i64 0, i32 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !712
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !779

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !620 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !714
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !780

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !620 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !675
  %6 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %7 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #22
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  store i64 %13, ptr %5, align 8, !tbaa !675
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %15 = load i64, ptr %14, align 8, !tbaa !675
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %17 = call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIP7SGFTreeSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !620 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !575
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !575
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = sdiv exact i64 %9, 8512
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !781 {
  %3 = load i64, ptr %0, align 8, !tbaa !675
  %4 = load i64, ptr %1, align 8, !tbaa !675
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !782
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.38", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = load ptr, ptr %0, align 8, !tbaa !695
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds %class.SGFTree, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !575
  call void @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8512) ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !566 {
  %2 = load ptr, ptr %0, align 8, !tbaa !695
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_SGFTree.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind optsize }
attributes #21 = { noreturn }
attributes #22 = { noreturn optsize }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!523}

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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522}
!36 = !{ptr @_ZN7SGFTreeC2Ev, ptr @_ZN7KoStateC2Ev, i64 448}
!37 = !{ptr @_ZN7SGFTreeC2Ev, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2Ev, i64 448}
!38 = !{ptr @_ZN7SGFTreeC2Ev, ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2Ev, i64 448}
!39 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2Ev, i64 448}
!40 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev, i64 448}
!41 = !{ptr @_ZNSt6vectorIySaIyEEC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEEC2Ev, i64 918}
!42 = !{ptr @_ZNSt6vectorIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, i64 202367}
!43 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, i64 202367}
!44 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSaIiEC2Ev, i64 202367}
!45 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 202367}
!46 = !{ptr @_ZNSaIiEC2Ev, ptr @_ZNSt15__new_allocatorIiEC2Ev, i64 202374}
!47 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!48 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!49 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!50 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!51 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!52 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!53 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!54 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!55 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!56 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!57 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!58 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!59 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, i64 918}
!60 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, ptr @_ZNSaIyEC2Ev, i64 918}
!61 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 918}
!62 = !{ptr @_ZNSaIyEC2Ev, ptr @_ZNSt15__new_allocatorIyEC2Ev, i64 918}
!63 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2Ev, i64 448}
!64 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2Ev, ptr @_ZNSaI7SGFTreeEC2Ev, i64 448}
!65 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2Ev, i64 448}
!66 = !{ptr @_ZNSaI7SGFTreeEC2Ev, ptr @_ZNSt15__new_allocatorI7SGFTreeEC2Ev, i64 448}
!67 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev, i64 448}
!68 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev, ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2Ev, i64 448}
!69 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev, ptr @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, i64 448}
!70 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2Ev, ptr @_ZNSt15_Rb_tree_headerC2Ev, i64 448}
!71 = !{ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEC2Ev, i64 448}
!72 = !{ptr @_ZNSt15_Rb_tree_headerC2Ev, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 1323}
!73 = !{ptr @_ZN7SGFTree9get_childEj, ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv, i64 447}
!74 = !{ptr @_ZN7SGFTree9get_childEj, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEixEm, i64 436}
!75 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN9GameStateC2Ev, i64 10}
!76 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN7KoStateaSERKS_, i64 10}
!77 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN9GameState19anchor_game_historyEv, i64 10}
!78 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN9FastState11get_to_moveEv, i64 10}
!79 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN7SGFTree8get_moveEi, i64 397}
!80 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN9GameState9play_moveEi, i64 396}
!81 = !{ptr @_ZN7SGFTree12get_mainlineEj, ptr @_ZN7SGFTree9get_childEj, i64 407}
!82 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 874}
!83 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 874}
!84 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2Ev, i64 874}
!85 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_, i64 874}
!86 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv, i64 874}
!87 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_, i64 874}
!88 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv, i64 873}
!89 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 1746}
!90 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 873}
!91 = !{ptr @_ZN7SGFTree8get_moveEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 2620}
!92 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev, i64 11}
!93 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 12023}
!94 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, i64 12023}
!95 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, i64 12023}
!96 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev, i64 11}
!97 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev, ptr @_ZNSaI7KoStateEC2Ev, i64 11}
!98 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev, i64 11}
!99 = !{ptr @_ZNSaI7KoStateEC2Ev, ptr @_ZNSt15__new_allocatorI7KoStateEC2Ev, i64 11}
!100 = !{ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, i64 12023}
!101 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, i64 12023}
!102 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, ptr @_ZNSt15__new_allocatorI7KoStateED2Ev, i64 12023}
!103 = !{ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, i64 12023}
!104 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, ptr @_ZSt8_DestroyI7KoStateEvPT_, i64 1513057}
!105 = !{ptr @_ZSt8_DestroyI7KoStateEvPT_, ptr @_ZN7KoStateD2Ev, i64 1513182}
!106 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, i64 23363}
!107 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, i64 23364}
!108 = !{ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, ptr @_ZdlPv, i64 23364}
!109 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 18212926}
!110 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 18212926}
!111 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 18212909}
!112 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!113 = !{ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPyEvT_S1_, i64 18213858}
!114 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 18212926}
!115 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 18212909}
!116 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!117 = !{ptr @_ZSt8_DestroyIPyEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, i64 18213858}
!118 = !{ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, i64 27873635}
!119 = !{ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, i64 27873636}
!120 = !{ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, ptr @_ZdlPv, i64 27873636}
!121 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 894}
!122 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNKSt6vectorIySaIyEE8capacityEv, i64 893}
!123 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNKSt6vectorIySaIyEE5beginEv, i64 892}
!124 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNKSt6vectorIySaIyEE3endEv, i64 892}
!125 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_, i64 892}
!126 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 892}
!127 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 892}
!128 = !{ptr @_ZNSt6vectorIySaIyEEaSERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 892}
!129 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 893}
!130 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE8capacityEv, i64 446}
!131 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 445}
!132 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 445}
!133 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_, i64 1}
!134 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 446}
!135 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 1}
!136 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 1}
!137 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 444}
!138 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, i64 444}
!139 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 444}
!140 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E, i64 444}
!141 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_, i64 1}
!142 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E, i64 1}
!143 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!144 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!145 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_, i64 447}
!146 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 894}
!147 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, i64 447}
!148 = !{ptr @_ZNSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 10455771}
!149 = !{ptr @_ZNSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 22957086}
!150 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!151 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!152 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!153 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!154 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!155 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!156 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!157 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!158 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!159 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!160 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!161 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!162 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!163 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!164 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!165 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!166 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!167 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!168 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_, i64 447}
!169 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 894}
!170 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 447}
!171 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 447}
!172 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, i64 447}
!173 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 447}
!174 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl, i64 447}
!175 = !{ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 894}
!176 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 447}
!177 = !{ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 894}
!178 = !{ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 894}
!179 = !{ptr @_ZNSt6vectorIySaIyEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKyS1_EEEEPymT_S9_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, i64 894}
!180 = !{ptr @_ZNKSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!181 = !{ptr @_ZNKSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!182 = !{ptr @_ZNSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_, i64 43356801}
!183 = !{ptr @_ZNSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_, i64 43356859}
!184 = !{ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, i64 27873635}
!185 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!186 = !{ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 27873636}
!187 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv, i64 27873636}
!188 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 6965}
!189 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 6965}
!190 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 27859706}
!191 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, i64 15450864}
!192 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!193 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_, i64 30901728}
!194 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, i64 15450864}
!195 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 30901728}
!196 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPyET_S1_, i64 15450864}
!197 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!198 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_, i64 15450864}
!199 = !{ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!200 = !{ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv, i64 30901728}
!201 = !{ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_, i64 15450864}
!202 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode, i64 10}
!203 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7KoState9init_gameEif, i64 10}
!204 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN9SGFParser5parseERNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEEP7SGFTree, i64 10}
!205 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7SGFTree15populate_statesEv, i64 10}
!206 = !{ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev, i64 10}
!207 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2Ev, i64 447}
!208 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSaIcEC2Ev, i64 2673}
!209 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 2673}
!210 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_, i64 1783}
!211 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 2699}
!212 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 2673}
!213 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv, i64 1783}
!214 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZStneRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_, i64 2675}
!215 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv, i64 26}
!216 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, i64 2}
!217 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @__cxa_allocate_exception, i64 2}
!218 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt9exceptionC2Ev, i64 2}
!219 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @__cxa_throw, i64 2}
!220 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 26}
!221 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode, i64 21}
!222 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSirsERi, i64 10}
!223 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7KoState9init_gameEif, i64 20}
!224 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev, i64 21}
!225 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSirsERf, i64 11}
!226 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN9FastBoard13get_boardsizeEv, i64 11}
!227 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11equal_rangeERS9_, i64 890}
!228 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 2}
!229 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree10apply_moveEii, i64 2}
!230 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEppEv, i64 2}
!231 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, i64 1}
!232 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN9FastState11set_to_moveEi, i64 1}
!233 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2Ev, i64 445}
!234 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE5beginEv, i64 445}
!235 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv, i64 880}
!236 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN9__gnu_cxxneIP7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, i64 880}
!237 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEptEv, i64 1739}
!238 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree9set_stateER7KoState, i64 435}
!239 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN9FastState11get_to_moveEv, i64 435}
!240 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree8get_moveEi, i64 435}
!241 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree10apply_moveEi, i64 434}
!242 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN7SGFTree15populate_statesEv, i64 435}
!243 = !{ptr @_ZN7SGFTree15populate_statesEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEppEv, i64 435}
!244 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 2708}
!245 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 6}
!246 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 6}
!247 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 6}
!248 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 2702}
!249 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 2708}
!250 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 2708}
!251 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 2708}
!252 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 2708}
!253 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 2708}
!254 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 2708}
!255 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 2708}
!256 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!257 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 20}
!258 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZN9SGFParser14chop_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, i64 11}
!259 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 31}
!260 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv, i64 11}
!261 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @__cxa_allocate_exception, i64 2}
!262 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZNSt9exceptionC2Ev, i64 2}
!263 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @__cxa_throw, i64 2}
!264 = !{ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, ptr @_ZN7SGFTree16load_from_stringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, i64 9}
!265 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, i64 2662}
!266 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 2708}
!267 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_, i64 2708}
!268 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZSt19__throw_logic_errorPKc, i64 1}
!269 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt11char_traitsIcE6lengthEPKc, i64 2707}
!270 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, i64 2707}
!271 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 1}
!272 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE3endEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv, i64 2662}
!273 = !{ptr @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, ptr @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, i64 1}
!274 = !{ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEptEv, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, i64 894}
!275 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11equal_rangeERS9_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, i64 894}
!276 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv, i64 874}
!277 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN9FastBoard13get_boardsizeEv, i64 1745}
!278 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, i64 872}
!279 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm, i64 1744}
!280 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @__cxa_allocate_exception, i64 4}
!281 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt9exceptionC2Ev, i64 4}
!282 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @__cxa_throw, i64 4}
!283 = !{ptr @_ZN7SGFTree16string_to_vertexENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN9FastBoard10get_vertexEii, i64 868}
!284 = !{ptr @_ZN7SGFTree10apply_moveEii, ptr @_ZN9FastBoard10get_squareEi, i64 436}
!285 = !{ptr @_ZN7SGFTree10apply_moveEii, ptr @__cxa_allocate_exception, i64 1}
!286 = !{ptr @_ZN7SGFTree10apply_moveEii, ptr @_ZNSt9exceptionC2Ev, i64 1}
!287 = !{ptr @_ZN7SGFTree10apply_moveEii, ptr @__cxa_throw, i64 1}
!288 = !{ptr @_ZN7SGFTree10apply_moveEii, ptr @_ZN7KoState9play_moveEii, i64 436}
!289 = !{ptr @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc, i64 875}
!290 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS2_, i64 447}
!291 = !{ptr @_ZN9__gnu_cxxneIP7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv, i64 1768}
!292 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS2_, i64 1321}
!293 = !{ptr @_ZN7SGFTree9set_stateER7KoState, ptr @_ZN7KoStateaSERKS_, i64 437}
!294 = !{ptr @_ZN7SGFTree10apply_moveEi, ptr @_ZN9FastState11get_to_moveEv, i64 437}
!295 = !{ptr @_ZN7SGFTree10apply_moveEi, ptr @_ZN7SGFTree10apply_moveEii, i64 437}
!296 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, i64 2662}
!297 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv, i64 2662}
!298 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, i64 2662}
!299 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv, i64 5324}
!300 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EESB_, i64 2662}
!301 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 1781}
!302 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE4findERS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 1781}
!303 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E, i64 2871}
!304 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 2871}
!305 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, i64 1818}
!306 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, i64 1053}
!307 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base, i64 2662}
!308 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv, i64 5484}
!309 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE3endEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base, i64 7092}
!310 = !{ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, i64 7028}
!311 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E, i64 1940}
!312 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E, ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, i64 7793}
!313 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E, ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEclERKS8_, i64 7793}
!314 = !{ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, i64 7793}
!315 = !{ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv, i64 7793}
!316 = !{ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_, i64 7028}
!317 = !{ptr @_ZNSt11char_traitsIcE6lengthEPKc, ptr @strlen, i64 2708}
!318 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, i64 2106}
!319 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv, i64 2106}
!320 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, i64 894}
!321 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv, i64 894}
!322 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E, i64 1891}
!323 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 1891}
!324 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, i64 2}
!325 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, i64 945}
!326 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, i64 1}
!327 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_, i64 1}
!328 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EES9_EC2IS9_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_, i64 894}
!329 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11equal_rangeERS7_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base, i64 1786}
!330 = !{ptr @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, ptr @_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_, i64 606}
!331 = !{ptr @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE6insertIS8_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISA_T_EE5valueESt17_Rb_tree_iteratorISA_EE4typeEOSG_, i64 606}
!332 = !{ptr @_ZN7SGFTree12add_propertyENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, i64 606}
!333 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE6insertIS8_IS5_S5_EEENSt9enable_ifIXsr16is_constructibleISA_T_EE5valueESt17_Rb_tree_iteratorISA_EE4typeEOSG_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, i64 606}
!334 = !{ptr @_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_, ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_, i64 606}
!335 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeC2IJS6_IS5_S5_EEEERSE_DpOT_, i64 606}
!336 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node6_M_keyEv, i64 606}
!337 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, i64 606}
!338 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E, i64 606}
!339 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_emplace_equalIJS6_IS5_S5_EEEESt17_Rb_tree_iteratorIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev, i64 606}
!340 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeC2IJS6_IS5_S5_EEEERSE_DpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS6_IS5_S5_EEEEPSt13_Rb_tree_nodeIS8_EDpOT_, i64 606}
!341 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, i64 606}
!342 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv, i64 606}
!343 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E, i64 325}
!344 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 325}
!345 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, i64 117}
!346 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, i64 208}
!347 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE23_M_get_insert_equal_posERS7_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISI_SJ_EEEbE4typeELb1EEEOSI_OSJ_, i64 606}
!348 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node6_M_keyEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E, i64 606}
!349 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, i64 606}
!350 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 1}
!351 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS6_IS5_S5_EEEEPSt13_Rb_tree_nodeIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv, i64 606}
!352 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS6_IS5_S5_EEEEPSt13_Rb_tree_nodeIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS6_IS5_S5_EEEEvPSt13_Rb_tree_nodeIS8_EDpOT_, i64 606}
!353 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 606}
!354 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_get_nodeEv, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE8allocateERSB_m, i64 606}
!355 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS6_IS5_S5_EEEEvPSt13_Rb_tree_nodeIS8_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 606}
!356 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS6_IS5_S5_EEEEvPSt13_Rb_tree_nodeIS8_EDpOT_, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, i64 606}
!357 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS6_IS5_S5_EEEEvPSt13_Rb_tree_nodeIS8_EDpOT_, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JS1_IS7_S7_EEEEvRSB_PT_DpOT0_, i64 606}
!358 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE8allocateERSB_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE8allocateEmPKv, i64 606}
!359 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE11_M_max_sizeEv, i64 606}
!360 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE8allocateEmPKv, ptr @_Znwm, i64 606}
!361 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE9constructIS9_JS1_IS7_S7_EEEEvRSB_PT_DpOT0_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE9constructIS9_JS1_IS7_S7_EEEEvPT_DpOT0_, i64 606}
!362 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 606}
!363 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, i64 606}
!364 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE9constructIS9_JS1_IS7_S7_EEEEvPT_DpOT0_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E, i64 606}
!365 = !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IS5_S5_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISA_SB_EEclsr6_PCCFPISA_SB_EE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOS_ISA_SB_E, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 1212}
!366 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m, i64 606}
!367 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m, ptr @_ZdlPv, i64 606}
!368 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_M_endEv, i64 605}
!369 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt13_Rb_tree_nodeIS8_E, i64 159}
!370 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 159}
!371 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 159}
!372 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 606}
!373 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEC2EPSt18_Rb_tree_node_base, i64 606}
!374 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!375 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!376 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 606}
!377 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, i64 606}
!378 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, i64 606}
!379 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, i64 606}
!380 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, i64 606}
!381 = !{ptr @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRS5_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISA_SB_EEEbE4typeELb1EEEOSA_OSB_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 1212}
!382 = !{ptr @_ZN7SGFTree9add_childES_, ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv, i64 437}
!383 = !{ptr @_ZN7SGFTree9add_childES_, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, i64 436}
!384 = !{ptr @_ZN7SGFTree9add_childES_, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_, i64 437}
!385 = !{ptr @_ZN7SGFTree9add_childES_, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE4backEv, i64 437}
!386 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv, i64 437}
!387 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!388 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE8capacityEv, i64 436}
!389 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv, i64 435}
!390 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE11_M_allocateEm, i64 435}
!391 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv, i64 435}
!392 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, i64 435}
!393 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE7reserveEm, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m, i64 435}
!394 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_, ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, i64 436}
!395 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv, i64 1}
!396 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE9push_backERKS0_, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_, i64 1}
!397 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE4backEv, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE3endEv, i64 437}
!398 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEmiEl, i64 437}
!399 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEdeEv, i64 437}
!400 = !{ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv, i64 437}
!401 = !{ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE8max_sizeEv, ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_max_sizeERKS1_, i64 437}
!402 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE8allocateERS1_m, i64 437}
!403 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, ptr @_ZSt12__relocate_aIP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_, i64 437}
!404 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m, i64 438}
!405 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_max_sizeERKS1_, ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE8max_sizeERKS1_, i64 437}
!406 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EE11_S_max_sizeERKS1_, ptr @_ZSt3minImERKT_S2_S2_, i64 437}
!407 = !{ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE8max_sizeERKS1_, ptr @_ZNKSt15__new_allocatorI7SGFTreeE8max_sizeEv, i64 437}
!408 = !{ptr @_ZNKSt15__new_allocatorI7SGFTreeE8max_sizeEv, ptr @_ZNKSt15__new_allocatorI7SGFTreeE11_M_max_sizeEv, i64 437}
!409 = !{ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE8allocateERS1_m, ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv, i64 437}
!410 = !{ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorI7SGFTreeE11_M_max_sizeEv, i64 437}
!411 = !{ptr @_ZNSt15__new_allocatorI7SGFTreeE8allocateEmPKv, ptr @_Znwm, i64 437}
!412 = !{ptr @_ZSt12__relocate_aIP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt12__niter_baseIP7SGFTreeET_S2_, i64 1311}
!413 = !{ptr @_ZSt12__relocate_aIP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt14__relocate_a_1IP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_, i64 437}
!414 = !{ptr @_ZSt14__relocate_a_1IP7SGFTreeS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt19__relocate_object_aI7SGFTreeS0_SaIS0_EEvPT_PT0_RT1_, i64 1}
!415 = !{ptr @_ZNSt6vectorIySaIyEEC2EOS1_, ptr @_ZNSt12_Vector_baseIySaIyEEC2EOS1_, i64 2762018}
!416 = !{ptr @_ZNSt6vectorIiSaIiEEC2EOS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, i64 1381009}
!417 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, i64 1381009}
!418 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, ptr @_ZNSaIiEC2ERKS_, i64 1381009}
!419 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_, i64 1381009}
!420 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EOS1_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_, i64 2762018}
!421 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_, ptr @_ZNSaIyEC2ERKS_, i64 2762018}
!422 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2EOS2_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2EOS2_, i64 2762018}
!423 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, i64 1322}
!424 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv, i64 1322}
!425 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E, i64 1322}
!426 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, i64 1322}
!427 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, i64 1322}
!428 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 1322}
!429 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev, i64 1322}
!430 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, i64 607}
!431 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 607}
!432 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, i64 607}
!433 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 607}
!434 = !{ptr @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP7SGFTreeEvT_S2_, i64 1322}
!435 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m, i64 1322}
!436 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt15__new_allocatorI7SGFTreeED2Ev, i64 1322}
!437 = !{ptr @_ZSt8_DestroyIP7SGFTreeEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_, i64 1322}
!438 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_, ptr @_ZSt8_DestroyI7SGFTreeEvPT_, i64 438}
!439 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZN7SGFTreeD2Ev, i64 437}
!440 = !{ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m, i64 437}
!441 = !{ptr @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m, ptr @_ZdlPv, i64 437}
!442 = !{ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_, ptr @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JRKS0_EEEvPT_DpOT0_, i64 437}
!443 = !{ptr @_ZNSt15__new_allocatorI7SGFTreeE9constructIS0_JRKS0_EEEvPT_DpOT0_, ptr @_ZN7SGFTreeC2ERKS_, i64 437}
!444 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE4sizeEv, i64 874}
!445 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZNKSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv, i64 874}
!446 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaI7SGFTreeES1_E17_S_select_on_copyERKS2_, i64 874}
!447 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EmRKS1_, i64 874}
!448 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZNSt15__new_allocatorI7SGFTreeED2Ev, i64 874}
!449 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE5beginEv, i64 874}
!450 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE3endEv, i64 874}
!451 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv, i64 874}
!452 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EEC2ERKS2_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, i64 874}
!453 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEC2ERKSC_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2ERKSE_, i64 874}
!454 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 15449970}
!455 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449970}
!456 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, i64 15449970}
!457 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, i64 15449970}
!458 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15449970}
!459 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE5beginEv, i64 15449955}
!460 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE3endEv, i64 15449955}
!461 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449955}
!462 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, i64 15449955}
!463 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 15}
!464 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!465 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!466 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!467 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!468 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!469 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!470 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!471 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!472 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!473 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!474 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!475 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!476 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!477 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!478 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!479 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!480 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!481 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!482 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!483 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, i64 15449970}
!484 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, i64 15449970}
!485 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, i64 15449970}
!486 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15}
!487 = !{ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449970}
!488 = !{ptr @_ZNSaIyEC2ERKS_, ptr @_ZNSt15__new_allocatorIyEC2ERKS0_, i64 33661998}
!489 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449990}
!490 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 15449990}
!491 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 15449970}
!492 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaI7SGFTreeES1_E17_S_select_on_copyERKS2_, ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE37select_on_container_copy_constructionERKS1_, i64 874}
!493 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EmRKS1_, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2ERKS1_, i64 874}
!494 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EEC2EmRKS1_, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_M_create_storageEm, i64 874}
!495 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_S2_ET0_T_SB_SA_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, i64 874}
!496 = !{ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS3_, i64 874}
!497 = !{ptr @_ZNKSt6vectorI7SGFTreeSaIS0_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS3_, i64 874}
!498 = !{ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE37select_on_container_copy_constructionERKS1_, ptr @_ZNSaI7SGFTreeEC2ERKS0_, i64 874}
!499 = !{ptr @_ZNSaI7SGFTreeEC2ERKS0_, ptr @_ZNSt15__new_allocatorI7SGFTreeEC2ERKS1_, i64 1748}
!500 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2ERKS1_, ptr @_ZNSaI7SGFTreeEC2ERKS0_, i64 874}
!501 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE12_Vector_implC2ERKS1_, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataC2Ev, i64 874}
!502 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE11_M_allocateEm, i64 874}
!503 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, i64 874}
!504 = !{ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS4_SaIS4_EEEEPS4_EET0_T_SD_SC_, ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, i64 874}
!505 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZN9__gnu_cxxneIPK7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, i64 875}
!506 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEdeEv, i64 1}
!507 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZSt10_ConstructI7SGFTreeJRKS0_EEvPT_DpOT0_, i64 1}
!508 = !{ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS2_SaIS2_EEEEPS2_ET0_T_SB_SA_, ptr @_ZN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEppEv, i64 1}
!509 = !{ptr @_ZN9__gnu_cxxneIPK7SGFTreeSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESC_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEE4baseEv, i64 1748}
!510 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2ERKSE_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_, i64 874}
!511 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2ERKSE_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_rootEv, i64 874}
!512 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2ERKSE_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyERKSE_, i64 1}
!513 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEC2ERKSE_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_rootEv, i64 1}
!514 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESB_E17_S_select_on_copyERKSC_, i64 874}
!515 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_, ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2ERKSA_, i64 874}
!516 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev, i64 874}
!517 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_, ptr @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKS7_, i64 874}
!518 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE13_Rb_tree_implISC_Lb1EEC2ERKSG_, ptr @_ZNSt15_Rb_tree_headerC2Ev, i64 874}
!519 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESB_E17_S_select_on_copyERKSC_, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE37select_on_container_copy_constructionERKSB_, i64 874}
!520 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE37select_on_container_copy_constructionERKSB_, ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2ERKSA_, i64 874}
!521 = !{ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEEC2ERKSA_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEC2ERKSB_, i64 1748}
!522 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEC2ERKS2_, i64 437}
!523 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!524 = !{!"function_entry_count", i64 448}
!525 = !{!"function_entry_count", i64 918}
!526 = !{!"function_entry_count", i64 202367}
!527 = !{!"function_entry_count", i64 202374}
!528 = !{!"function_entry_count", i64 7991268}
!529 = !{!"function_entry_count", i64 11016}
!530 = !{!531, !532, i64 0}
!531 = !{!"_ZTSSt4pairIiiE", !532, i64 0, !532, i64 4}
!532 = !{!"int", !533, i64 0}
!533 = !{!"omnipotent char", !534, i64 0}
!534 = !{!"Simple C++ TBAA"}
!535 = !{!531, !532, i64 4}
!536 = !{!"function_entry_count", i64 9372256}
!537 = !{!538, !539, i64 0}
!538 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !539, i64 0, !539, i64 8, !539, i64 16}
!539 = !{!"any pointer", !533, i64 0}
!540 = !{!538, !539, i64 8}
!541 = !{!"function_entry_count", i64 69455494}
!542 = !{!"function_entry_count", i64 97749716}
!543 = !{!538, !539, i64 16}
!544 = !{!"function_entry_count", i64 19624698}
!545 = !{!"branch_weights", i32 9372251, i32 10252449}
!546 = !{!"function_entry_count", i64 10252448}
!547 = !{!"function_entry_count", i64 15450948}
!548 = !{!"function_entry_count", i64 1322}
!549 = !{!"function_entry_count", i64 1323}
!550 = !{!551, !553, i64 0}
!551 = !{!"_ZTSSt15_Rb_tree_header", !552, i64 0, !554, i64 32}
!552 = !{!"_ZTSSt18_Rb_tree_node_base", !553, i64 0, !539, i64 8, !539, i64 16, !539, i64 24}
!553 = !{!"_ZTSSt14_Rb_tree_color", !533, i64 0}
!554 = !{!"long", !533, i64 0}
!555 = !{!551, !539, i64 8}
!556 = !{!551, !539, i64 16}
!557 = !{!551, !539, i64 24}
!558 = !{!551, !554, i64 32}
!559 = !{!"function_entry_count", i64 10}
!560 = !{!"function_entry_count", i64 447}
!561 = !{!"branch_weights", i32 438, i32 11}
!562 = !{!"function_entry_count", i64 2195}
!563 = !{!564, !539, i64 8}
!564 = !{!"_ZTSNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataE", !539, i64 0, !539, i64 8, !539, i64 16}
!565 = !{!564, !539, i64 0}
!566 = !{!"function_entry_count", i64 437}
!567 = !{!"branch_weights", i32 11, i32 438}
!568 = !{!"branch_weights", i32 1, i32 438}
!569 = !{!"branch_weights", i32 437, i32 11}
!570 = distinct !{!570, !571}
!571 = !{!"llvm.loop.mustprogress"}
!572 = !{!"function_entry_count", i64 874}
!573 = !{!"branch_weights", i32 441, i32 435}
!574 = !{i64 0, i64 8, !575}
!575 = !{!539, !539, i64 0}
!576 = !{!"branch_weights", i32 875, i32 1}
!577 = !{!"function_entry_count", i64 11}
!578 = !{!"function_entry_count", i64 12023}
!579 = !{!580, !539, i64 0}
!580 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !539, i64 0, !539, i64 8, !539, i64 16}
!581 = !{!580, !539, i64 8}
!582 = !{!"function_entry_count", i64 12043}
!583 = !{!"function_entry_count", i64 46769}
!584 = !{!580, !539, i64 16}
!585 = !{!"branch_weights", i32 1, i32 12023}
!586 = !{!"branch_weights", i32 12023, i32 1501160}
!587 = distinct !{!587, !571}
!588 = !{!"function_entry_count", i64 1513182}
!589 = !{!"function_entry_count", i64 23385}
!590 = !{!"branch_weights", i32 22, i32 23365}
!591 = !{!"function_entry_count", i64 24035}
!592 = !{!"function_entry_count", i64 23364}
!593 = !{!"function_entry_count", i64 18212926}
!594 = !{!595, !539, i64 0}
!595 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !539, i64 0, !539, i64 8, !539, i64 16}
!596 = !{!595, !539, i64 8}
!597 = !{!"function_entry_count", i64 18213858}
!598 = !{!"function_entry_count", i64 58513802}
!599 = !{!595, !539, i64 16}
!600 = !{!"function_entry_count", i64 30638340}
!601 = !{!"branch_weights", i32 2764705, i32 27873637}
!602 = !{!"function_entry_count", i64 27873636}
!603 = !{!"function_entry_count", i64 894}
!604 = !{!"branch_weights", i32 1, i32 895}
!605 = !{!"branch_weights", i32 895, i32 1}
!606 = distinct !{!606, !571}
!607 = !{!608, !532, i64 8048}
!608 = !{!"_ZTS9FastBoard", !609, i64 0, !609, i64 882, !532, i64 1764, !532, i64 1768, !532, i64 1772, !610, i64 1776, !611, i64 3540, !611, i64 4424, !611, i64 5308, !611, i64 6192, !609, i64 7076, !612, i64 7960, !613, i64 7976, !614, i64 8008, !614, i64 8016, !615, i64 8024, !532, i64 8048}
!609 = !{!"_ZTSN5boost5arrayItLm441EEE", !533, i64 0}
!610 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !533, i64 0}
!611 = !{!"_ZTSN5boost5arrayItLm442EEE", !533, i64 0}
!612 = !{!"_ZTSN5boost5arrayIiLm4EEE", !533, i64 0}
!613 = !{!"_ZTSN5boost5arrayIiLm8EEE", !533, i64 0}
!614 = !{!"_ZTSN5boost5arrayIiLm2EEE", !533, i64 0}
!615 = !{!"_ZTSSt6vectorIiSaIiEE", !616, i64 0}
!616 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !617, i64 0}
!617 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !538, i64 0}
!618 = !{!"branch_weights", i32 1, i32 448}
!619 = !{!"function_entry_count", i64 899000483}
!620 = !{!"function_entry_count", i64 0}
!621 = !{!"function_entry_count", i64 7789311}
!622 = !{!"function_entry_count", i64 10455771}
!623 = !{!"function_entry_count", i64 22957086}
!624 = !{!"function_entry_count", i64 18041313}
!625 = !{!"branch_weights", i32 7788865, i32 10252450}
!626 = !{!"function_entry_count", i64 7788864}
!627 = !{!"function_entry_count", i64 10252449}
!628 = !{!"branch_weights", i32 1, i32 2000}
!629 = !{!"function_entry_count", i64 30757342}
!630 = !{!"function_entry_count", i64 15578622}
!631 = !{!"function_entry_count", i64 69303513}
!632 = !{!"branch_weights", i32 7789312, i32 1}
!633 = !{!"function_entry_count", i64 28111432}
!634 = !{!635, !539, i64 0}
!635 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !539, i64 0}
!636 = !{!637, !539, i64 0}
!637 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !539, i64 0}
!638 = !{!"function_entry_count", i64 33583715}
!639 = !{!"function_entry_count", i64 53747328}
!640 = !{!"function_entry_count", i64 10728}
!641 = !{!532, !532, i64 0}
!642 = !{!"function_entry_count", i64 65148944}
!643 = !{!"function_entry_count", i64 15450864}
!644 = !{!"function_entry_count", i64 43356801}
!645 = !{!"function_entry_count", i64 43356859}
!646 = !{!"function_entry_count", i64 27875384}
!647 = !{!"branch_weights", i32 1749, i32 27873637}
!648 = !{!"function_entry_count", i64 52722676}
!649 = !{!"function_entry_count", i64 30901728}
!650 = !{!"function_entry_count", i64 89997984}
!651 = !{!"branch_weights", i32 1749, i32 15449117}
!652 = !{!"function_entry_count", i64 216494610}
!653 = !{!654, !539, i64 0}
!654 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE", !539, i64 0}
!655 = !{!656, !539, i64 0}
!656 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE", !539, i64 0}
!657 = !{!"function_entry_count", i64 86713718}
!658 = !{!"function_entry_count", i64 111562642}
!659 = distinct !{!659, !571}
!660 = distinct !{!660, !571}
!661 = !{!"branch_weights", i32 2, i32 447}
!662 = !{!"branch_weights", i32 1, i32 2}
!663 = !{!"branch_weights", i32 10, i32 439}
!664 = !{!"branch_weights", i32 10, i32 1}
!665 = !{!666, !666, i64 0}
!666 = !{!"float", !533, i64 0}
!667 = !{!"branch_weights", i32 1, i32 447}
!668 = !{!"branch_weights", i32 0, i32 1}
!669 = distinct !{!669, !571}
!670 = distinct !{!670, !571}
!671 = !{!"branch_weights", i32 438, i32 10}
!672 = !{!"branch_weights", i32 0, i32 438}
!673 = distinct !{!673, !571}
!674 = !{!"function_entry_count", i64 2708}
!675 = !{!554, !554, i64 0}
!676 = !{!"branch_weights", i32 6, i32 2704}
!677 = !{!678, !539, i64 0}
!678 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !539, i64 0}
!679 = !{!"branch_weights", i32 2709, i32 1}
!680 = !{!"branch_weights", i32 2, i32 11}
!681 = !{!"function_entry_count", i64 1}
!682 = !{!683, !683, i64 0}
!683 = !{!"vtable pointer", !534, i64 0}
!684 = !{!"function_entry_count", i64 1321}
!685 = !{!686, !539, i64 0}
!686 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE", !539, i64 0}
!687 = !{!"function_entry_count", i64 2662}
!688 = !{!"branch_weights", i32 1, i32 2709}
!689 = !{!"function_entry_count", i64 3556}
!690 = !{!"branch_weights", i32 1, i32 875}
!691 = !{!533, !533, i64 0}
!692 = !{!"branch_weights", i32 669921875, i32 2299501}
!693 = !{!"branch_weights", i32 438, i32 1}
!694 = !{!"function_entry_count", i64 875}
!695 = !{!696, !539, i64 0}
!696 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIP7SGFTreeSt6vectorIS1_SaIS1_EEEE", !539, i64 0}
!697 = !{!"function_entry_count", i64 884}
!698 = !{!"function_entry_count", i64 1748}
!699 = !{!"branch_weights", i32 882, i32 1782}
!700 = !{!"branch_weights", i32 -1, i32 1}
!701 = !{!"branch_weights", i32 1, i32 2662}
!702 = !{!"branch_weights", i32 1054, i32 1819}
!703 = !{!"branch_weights", i32 2662, i32 210}
!704 = distinct !{!704, !571}
!705 = !{!"function_entry_count", i64 5484}
!706 = !{!"function_entry_count", i64 4768}
!707 = !{!"function_entry_count", i64 7092}
!708 = !{!"function_entry_count", i64 7028}
!709 = !{!"function_entry_count", i64 1940}
!710 = !{!"function_entry_count", i64 7793}
!711 = !{!"function_entry_count", i64 3487}
!712 = !{!552, !539, i64 16}
!713 = !{!"function_entry_count", i64 1867}
!714 = !{!552, !539, i64 24}
!715 = !{!"function_entry_count", i64 12148}
!716 = !{!"function_entry_count", i64 46063954}
!717 = !{!"branch_weights", i32 1, i32 46063955}
!718 = !{!"function_entry_count", i64 2106}
!719 = !{!"branch_weights", i32 1, i32 894}
!720 = !{!"branch_weights", i32 1, i32 947}
!721 = !{!"branch_weights", i32 947, i32 1}
!722 = !{!"branch_weights", i32 894, i32 53}
!723 = distinct !{!723, !571}
!724 = distinct !{!724, !571}
!725 = !{!"function_entry_count", i64 2205}
!726 = !{!"function_entry_count", i64 1768}
!727 = !{!"function_entry_count", i64 606}
!728 = !{!729, !539, i64 8}
!729 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !539, i64 0, !539, i64 8}
!730 = !{!"branch_weights", i32 281, i32 326}
!731 = !{!"branch_weights", i32 118, i32 209}
!732 = !{!"branch_weights", i32 326, i32 0}
!733 = distinct !{!733, !571}
!734 = !{!729, !539, i64 0}
!735 = !{!"branch_weights", i32 607, i32 1}
!736 = !{!"function_entry_count", i64 2424}
!737 = !{!738, !539, i64 0}
!738 = !{!"_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E", !539, i64 0, !539, i64 8}
!739 = !{!738, !539, i64 8}
!740 = !{!"branch_weights", i32 448, i32 160}
!741 = !{!564, !539, i64 16}
!742 = !{!"function_entry_count", i64 1311}
!743 = !{!"branch_weights", i32 875, i32 438}
!744 = !{!"function_entry_count", i64 2633}
!745 = !{!"function_entry_count", i64 1759}
!746 = !{!"branch_weights", i32 1323, i32 438}
!747 = !{!"branch_weights", i32 437, i32 1}
!748 = !{!"branch_weights", i32 1, i32 0}
!749 = distinct !{!749, !571}
!750 = !{!"function_entry_count", i64 2762018}
!751 = !{!"function_entry_count", i64 1381009}
!752 = !{!"function_entry_count", i64 16958771}
!753 = !{!"function_entry_count", i64 33661998}
!754 = !{!552, !539, i64 8}
!755 = !{!"function_entry_count", i64 1928}
!756 = !{!"branch_weights", i32 1322, i32 607}
!757 = !{!"branch_weights", i32 607, i32 0}
!758 = distinct !{!758, !571}
!759 = !{!"branch_weights", i32 885, i32 438}
!760 = !{!"branch_weights", i32 438, i32 0}
!761 = distinct !{!761, !571}
!762 = !{!"function_entry_count", i64 15449970}
!763 = !{!"function_entry_count", i64 28293760}
!764 = !{!"function_entry_count", i64 7788871}
!765 = !{!"function_entry_count", i64 17161144}
!766 = !{!"function_entry_count", i64 7788881}
!767 = !{!"function_entry_count", i64 40299030}
!768 = !{!"function_entry_count", i64 33662916}
!769 = !{!"function_entry_count", i64 15449990}
!770 = !{!"function_entry_count", i64 2196}
!771 = !{!"branch_weights", i32 1, i32 874}
!772 = distinct !{!772, !571}
!773 = !{!774, !539, i64 0}
!774 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPK7SGFTreeSt6vectorIS1_SaIS1_EEEE", !539, i64 0}
!775 = distinct !{!775, !571}
!776 = !{!552, !553, i64 0}
!777 = !{!778, !539, i64 0}
!778 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_Alloc_nodeE", !539, i64 0}
!779 = distinct !{!779, !571}
!780 = distinct !{!780, !571}
!781 = !{!"function_entry_count", i64 23031751}
!782 = !{!"branch_weights", i32 6217633, i32 16814120}
