; ModuleID = 'Leela.cpp'
source_filename = "Leela.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::auto_ptr" = type { ptr }
%"class.std::auto_ptr.0" = type { ptr }
%"class.std::auto_ptr.23" = type { ptr }
%class.GameState = type <{ %class.KoState, %"class.std::vector.16", %class.TimeControl, [4 x i8] }>
%class.KoState = type { %class.FastState.base, %"class.std::vector.11", %"class.std::vector.11" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.9", %"class.boost::array.10" }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32 }>
%"class.boost::array.1" = type { [441 x i32] }
%"class.boost::array.2" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.3" = type { [4 x i32] }
%"class.boost::array.4" = type { [8 x i32] }
%"class.boost::array.5" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.9" = type { [24 x i32] }
%"class.boost::array.10" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl" = type { %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" }
%"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.TimeControl = type { i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.5", %"class.boost::array.21", %"class.boost::array.22" }
%"class.boost::array.21" = type { [2 x i8] }
%"class.boost::array.22" = type { [2 x %class.Time] }
%class.Time = type { i32 }
%"class.std::auto_ptr.32" = type { ptr }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.9", %"class.boost::array.10", [4 x i8] }>
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.1", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array.2", %"class.boost::array", [2 x i8], %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array.5", %"class.std::vector", i32, [4 x i8] }>
%"class.std::allocator.6" = type { i8 }
%"class.std::allocator.13" = type { i8 }
%"class.std::allocator.18" = type { i8 }
%class.SGFTree = type { %class.KoState, %"class.std::vector.24", %"class.std::multimap" }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl" }
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
%"struct.std::pair.33" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.UCTSearch = type <{ ptr, %class.UCTNode, i32, i32, float, i8, i8, [2 x i8], ptr, i8, i8, [6 x i8] }>
%class.UCTNode = type { ptr, ptr, i32, i32, i32, i32, i32, i8, i32, %"class.SMP::Mutex" }
%"class.SMP::Mutex" = type { i64 }

$_ZNSt8ios_base4setfESt13_Ios_Fmtflags = comdat any

$_ZNSt8auto_ptrI6RandomEC2EPS0_ = comdat any

$_ZNKSt8auto_ptrI6RandomEdeEv = comdat any

$_ZN9GameStateC2Ev = comdat any

$_ZNSt8auto_ptrI9GameStateEC2EPS0_ = comdat any

$_ZNSt8auto_ptrI7SGFTreeEC2EPS0_ = comdat any

$_ZNKSt8auto_ptrI7SGFTreeEptEv = comdat any

$_ZNKSt8auto_ptrI9GameStateEdeEv = comdat any

$_ZN9GameStateaSEOS_ = comdat any

$_ZN9GameStateD2Ev = comdat any

$_ZNSt8auto_ptrI9UCTSearchEC2EPS0_ = comdat any

$_ZNKSt8auto_ptrI9UCTSearchEptEv = comdat any

$_ZNKSt8auto_ptrI9GameStateEptEv = comdat any

$_ZNSt8auto_ptrI9UCTSearchED2Ev = comdat any

$_ZNSt8auto_ptrI7SGFTreeED2Ev = comdat any

$_ZNSt8auto_ptrI9GameStateED2Ev = comdat any

$_ZNSt8auto_ptrI6RandomED2Ev = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZN7KoStateC2Ev = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EEC2Ev = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EED2Ev = comdat any

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

$_ZNSt15__new_allocatorIyEC2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI7KoStateEC2Ev = comdat any

$_ZNSt15__new_allocatorI7KoStateEC2Ev = comdat any

$_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP7KoStateEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_ = comdat any

$_ZSt8_DestroyI7KoStateEvPT_ = comdat any

$_ZN7KoStateD2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m = comdat any

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

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_ = comdat any

$_ZSt15__alloc_on_moveISaIiEEvRT_S2_ = comdat any

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

$_ZNSt15__new_allocatorIyED2Ev = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_ = comdat any

$_ZSt15__alloc_on_moveISaIyEEvRT_S2_ = comdat any

$_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIyEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIyEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_ = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE = comdat any

$_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv = comdat any

$_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorI7KoStateED2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_ = comdat any

$_ZSt15__alloc_on_moveISaI7KoStateEEvRT_S3_ = comdat any

$_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaI7KoStateEC2ERKS0_ = comdat any

$_ZNSt15__new_allocatorI7KoStateEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_ = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_ = comdat any

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

$_ZN9UCTSearchD2Ev = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [19 x i8] c"No file specifided\00", align 1
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZTISt9exception = external constant ptr
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_Leela.cpp, ptr null }]

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

; Function Attrs: mustprogress noinline norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !205 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::auto_ptr", align 8
  %6 = alloca %"class.std::auto_ptr.0", align 8
  %7 = alloca %"class.std::auto_ptr.23", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %class.GameState, align 8
  %10 = alloca %"class.std::auto_ptr.32", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %11 = icmp slt i32 %0, 2
  br i1 %11, label %12, label %20, !prof !206

12:                                               ; preds = %2
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str) #14
          to label %14 unwind label %16

14:                                               ; preds = %12
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #14
          to label %155 unwind label %16

16:                                               ; preds = %36, %30, %24, %20, %14, %12
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = extractvalue { ptr, i32 } %17, 1
  br label %157

20:                                               ; preds = %2
  %21 = getelementptr inbounds ptr, ptr %1, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !207
  %23 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %22) #14
          to label %24 unwind label %16

24:                                               ; preds = %20
  %25 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !211
  %26 = getelementptr i8, ptr %25, i64 -24
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %27
  %29 = invoke noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %28, i32 noundef 8192) #14
          to label %30 unwind label %16

30:                                               ; preds = %24
  %31 = load ptr, ptr @_ZSt3cin, align 8, !tbaa !211
  %32 = getelementptr i8, ptr %31, i64 -24
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %33
  %35 = invoke noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %34, i32 noundef 8192) #14
          to label %36 unwind label %16

36:                                               ; preds = %30
  %37 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !211
  %38 = getelementptr i8, ptr %37, i64 -24
  %39 = load i64, ptr %38, align 8
  %40 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %39
  %41 = invoke noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %40, i32 noundef 8192) #14
          to label %42 unwind label %16

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %43 = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #17
          to label %44 unwind label %88

44:                                               ; preds = %42
  invoke void @_ZN6RandomC1Ei(ptr noundef nonnull align 4 dereferenceable(12) %43, i32 noundef 5489) #14
          to label %45 unwind label %92

45:                                               ; preds = %44
  call void @_ZNSt8auto_ptrI6RandomEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %43) #16
  %46 = call noundef nonnull align 4 dereferenceable(12) ptr @_ZNKSt8auto_ptrI6RandomEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  invoke void @_ZN7Zobrist12init_zobristER6Random(ptr noundef nonnull align 4 dereferenceable(12) %46) #14
          to label %47 unwind label %96

47:                                               ; preds = %45
  %48 = invoke noundef ptr @_ZN7Matcher11get_MatcherEv() #14
          to label %49 unwind label %96

49:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %50 = invoke noalias noundef nonnull dereferenceable(8512) ptr @_Znwm(i64 noundef 8512) #17
          to label %51 unwind label %100

51:                                               ; preds = %49
  invoke void @_ZN9GameStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %50) #14
          to label %52 unwind label %104

52:                                               ; preds = %51
  call void @_ZNSt8auto_ptrI9GameStateEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %50) #16
  br label %53

53:                                               ; preds = %87, %52
  %54 = phi i32 [ 0, %52 ], [ %60, %87 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %55 = invoke noalias noundef nonnull dereferenceable(8512) ptr @_Znwm(i64 noundef 8512) #17
          to label %56 unwind label %108

56:                                               ; preds = %53
  invoke void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512) %55) #14
          to label %57 unwind label %110

57:                                               ; preds = %56
  call void @_ZNSt8auto_ptrI7SGFTreeEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %55) #16
  %58 = call noundef ptr @_ZNKSt8auto_ptrI7SGFTreeEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %4) #14
          to label %59 unwind label %112

59:                                               ; preds = %57
  %60 = add nuw nsw i32 %54, 1
  invoke void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512) %58, ptr noundef nonnull %8, i32 noundef %54) #14
          to label %61 unwind label %114

61:                                               ; preds = %59
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  call void @llvm.lifetime.start.p0(i64 8512, ptr nonnull %9) #15
  %62 = call noundef ptr @_ZNKSt8auto_ptrI7SGFTreeEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  invoke void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind nonnull writable sret(%class.GameState) align 8 %9, ptr noundef nonnull align 8 dereferenceable(8512) %62, i32 noundef 999) #14
          to label %63 unwind label %116

63:                                               ; preds = %61
  %64 = call noundef nonnull align 8 dereferenceable(8508) ptr @_ZNKSt8auto_ptrI9GameStateEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %65 = call noundef nonnull align 8 dereferenceable(8508) ptr @_ZN9GameStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8508) %64, ptr noundef nonnull align 8 dereferenceable(8508) %9) #16
  call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %9) #16
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %9) #15
  br label %66

66:                                               ; preds = %83, %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  %67 = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #17
          to label %68 unwind label %118

68:                                               ; preds = %66
  %69 = call noundef nonnull align 8 dereferenceable(8508) ptr @_ZNKSt8auto_ptrI9GameStateEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  invoke void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90) %67, ptr noundef nonnull align 8 dereferenceable(8508) %69) #14
          to label %70 unwind label %120

70:                                               ; preds = %68
  call void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %67) #16
  %71 = call noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  %72 = call noundef ptr @_ZNKSt8auto_ptrI9GameStateEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %73 = invoke noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %72) #14
          to label %74 unwind label %122

74:                                               ; preds = %70
  %75 = invoke noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90) %71, i32 noundef %73, i32 noundef 0) #14
          to label %76 unwind label %122

76:                                               ; preds = %74
  %77 = call noundef ptr @_ZNKSt8auto_ptrI9GameStateEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  invoke void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508) %77, i32 noundef %75) #14
          to label %78 unwind label %122

78:                                               ; preds = %76
  %79 = call noundef ptr @_ZNKSt8auto_ptrI9GameStateEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  invoke void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508) %79) #14
          to label %80 unwind label %122

80:                                               ; preds = %78
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  %81 = call noundef ptr @_ZNKSt8auto_ptrI9GameStateEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  %82 = invoke noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %81) #14
          to label %83 unwind label %126

83:                                               ; preds = %80
  %84 = icmp slt i32 %82, 2
  %85 = icmp ne i32 %75, -2
  %86 = and i1 %85, %84
  br i1 %86, label %66, label %87, !prof !213, !llvm.loop !214

87:                                               ; preds = %83
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %53, !llvm.loop !216

88:                                               ; preds = %42
  %89 = landingpad { ptr, i32 }
          cleanup
  %90 = extractvalue { ptr, i32 } %89, 0
  %91 = extractvalue { ptr, i32 } %89, 1
  br label %152

92:                                               ; preds = %44
  %93 = landingpad { ptr, i32 }
          cleanup
  %94 = extractvalue { ptr, i32 } %93, 0
  %95 = extractvalue { ptr, i32 } %93, 1
  call void @_ZdlPv(ptr noundef nonnull %43) #18
  br label %152

96:                                               ; preds = %47, %45
  %97 = landingpad { ptr, i32 }
          cleanup
  %98 = extractvalue { ptr, i32 } %97, 0
  %99 = extractvalue { ptr, i32 } %97, 1
  br label %149

100:                                              ; preds = %49
  %101 = landingpad { ptr, i32 }
          cleanup
  %102 = extractvalue { ptr, i32 } %101, 0
  %103 = extractvalue { ptr, i32 } %101, 1
  br label %146

104:                                              ; preds = %51
  %105 = landingpad { ptr, i32 }
          cleanup
  %106 = extractvalue { ptr, i32 } %105, 0
  %107 = extractvalue { ptr, i32 } %105, 1
  call void @_ZdlPv(ptr noundef nonnull %50) #18
  br label %146

108:                                              ; preds = %53
  %109 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %130

110:                                              ; preds = %56
  %111 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPv(ptr noundef nonnull %55) #18
  br label %130

112:                                              ; preds = %57
  %113 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %128

114:                                              ; preds = %59
  %115 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  br label %128

116:                                              ; preds = %61
  %117 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(i64 8512, ptr nonnull %9) #15
  br label %128

118:                                              ; preds = %66
  %119 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %124

120:                                              ; preds = %68
  %121 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPv(ptr noundef nonnull %67) #18
  br label %124

122:                                              ; preds = %78, %76, %74, %70
  %123 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #16
  br label %124

124:                                              ; preds = %122, %120, %118
  %125 = phi { ptr, i32 } [ %123, %122 ], [ %121, %120 ], [ %119, %118 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %128

126:                                              ; preds = %80
  %127 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %128

128:                                              ; preds = %124, %126, %116, %114, %112
  %129 = phi { ptr, i32 } [ %117, %116 ], [ %115, %114 ], [ %113, %112 ], [ %127, %126 ], [ %125, %124 ]
  call void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  br label %130

130:                                              ; preds = %128, %110, %108
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %111, %110 ], [ %109, %108 ]
  %132 = extractvalue { ptr, i32 } %131, 0
  %133 = extractvalue { ptr, i32 } %131, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  %134 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #15
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %130
  %137 = call ptr @__cxa_begin_catch(ptr %132) #15
  invoke void @__cxa_end_catch()
          to label %138 unwind label %139

138:                                              ; preds = %136
  call void @_ZNSt8auto_ptrI9GameStateED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @_ZNSt8auto_ptrI6RandomED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %155

139:                                              ; preds = %136
  %140 = landingpad { ptr, i32 }
          cleanup
  %141 = extractvalue { ptr, i32 } %140, 0
  %142 = extractvalue { ptr, i32 } %140, 1
  br label %143

143:                                              ; preds = %139, %130
  %144 = phi i32 [ %142, %139 ], [ %133, %130 ]
  %145 = phi ptr [ %141, %139 ], [ %132, %130 ]
  call void @_ZNSt8auto_ptrI9GameStateED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #16
  br label %146

146:                                              ; preds = %143, %104, %100
  %147 = phi i32 [ %144, %143 ], [ %107, %104 ], [ %103, %100 ]
  %148 = phi ptr [ %145, %143 ], [ %106, %104 ], [ %102, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %149

149:                                              ; preds = %146, %96
  %150 = phi i32 [ %147, %146 ], [ %99, %96 ]
  %151 = phi ptr [ %148, %146 ], [ %98, %96 ]
  call void @_ZNSt8auto_ptrI6RandomED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %152

152:                                              ; preds = %149, %92, %88
  %153 = phi i32 [ %150, %149 ], [ %95, %92 ], [ %91, %88 ]
  %154 = phi ptr [ %151, %149 ], [ %94, %92 ], [ %90, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %157

155:                                              ; preds = %14, %138
  %156 = phi i32 [ 0, %138 ], [ 1, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  ret i32 %156

157:                                              ; preds = %152, %16
  %158 = phi i32 [ %19, %16 ], [ %153, %152 ]
  %159 = phi ptr [ %18, %16 ], [ %154, %152 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  %160 = insertvalue { ptr, i32 } poison, ptr %159, 0
  %161 = insertvalue { ptr, i32 } %160, i32 %158, 1
  resume { ptr, i32 } %161
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #7

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !217 {
  %3 = getelementptr inbounds %"class.std::ios_base", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !218
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZStoRRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %1) #14
  ret i32 %4
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN6RandomC1Ei(ptr noundef nonnull align 4 dereferenceable(12), i32 noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI6RandomEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !205 {
  store ptr %1, ptr %0, align 8, !tbaa !226
  ret void
}

; Function Attrs: optsize
declare void @_ZN7Zobrist12init_zobristER6Random(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(12) ptr @_ZNKSt8auto_ptrI6RandomEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !226
  ret ptr %2
}

; Function Attrs: optsize
declare noundef ptr @_ZN7Matcher11get_MatcherEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9GameStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN7KoStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #14
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %3 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  invoke void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44) %3, i32 noundef 9, i32 noundef 30000, i32 noundef 0, i32 noundef 25) #14
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9GameStateEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !205 {
  store ptr %1, ptr %0, align 8, !tbaa !228
  ret void
}

; Function Attrs: optsize
declare void @_ZN7SGFTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(8512)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI7SGFTreeEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !230 {
  store ptr %1, ptr %0, align 8, !tbaa !231
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8auto_ptrI7SGFTreeEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !233 {
  %2 = load ptr, ptr %0, align 8, !tbaa !231
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(8512), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: optsize
declare void @_ZN7SGFTree12get_mainlineEj(ptr dead_on_unwind writable sret(%class.GameState) align 8, ptr noundef nonnull align 8 dereferenceable(8512), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8508) ptr @_ZNKSt8auto_ptrI9GameStateEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !234 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8508) ptr @_ZN9GameStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8508) %0, ptr noundef nonnull align 8 dereferenceable(8508) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) #16
  %4 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.GameState, ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI7KoStateSaIS0_EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %7 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.GameState, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %7, ptr noundef nonnull align 8 dereferenceable(44) %8, i64 44, i1 false), !tbaa.struct !235
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.GameState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN9UCTSearchC1ER9GameState(ptr noundef nonnull align 8 dereferenceable(90), ptr noundef nonnull align 8 dereferenceable(8508)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !238 {
  store ptr %1, ptr %0, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !238 {
  %2 = load ptr, ptr %0, align 8, !tbaa !239
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN9UCTSearch5thinkEii(ptr noundef nonnull align 8 dereferenceable(90), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8auto_ptrI9GameStateEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !241 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  ret ptr %2
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8508), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9GameState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8508)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9UCTSearchED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !238 {
  %2 = load ptr, ptr %0, align 8, !tbaa !239
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN9UCTSearchD2Ev(ptr noundef nonnull align 8 dereferenceable(90) %2) #16
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !230 {
  %2 = load ptr, ptr %0, align 8, !tbaa !231
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %2) #16
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI9GameStateED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZN9GameStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8508) %2) #16
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8auto_ptrI6RandomED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !226
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZStoRRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #7 comdat !prof !217 {
  %3 = load i32, ptr %0, align 4, !tbaa !242
  %4 = tail call noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef %3, i32 noundef %1) #14
  store i32 %4, ptr %0, align 4, !tbaa !242
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 comdat !prof !217 {
  %3 = or i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZN9FastStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !243 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN11TimeControlC1Eiiii(ptr noundef nonnull align 4 dereferenceable(44), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %2 = load ptr, ptr %0, align 8, !tbaa !245
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9FullBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #16
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  invoke void @_ZN5boost5arrayISt4pairIiiELm24EEC2Ev(ptr noundef nonnull align 4 dereferenceable(192) %2) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #16
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !248 {
  tail call void @_ZNSt12_Vector_baseIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN9FastBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost5arrayISt4pairIiiELm24EEC2Ev(ptr noundef nonnull align 4 dereferenceable(192) %0) unnamed_addr #7 comdat align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds i8, ptr %0, i64 %3
  tail call void @_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 4 dereferenceable(8) %4) #14
  %5 = add nuw nsw i64 %3, 8
  %6 = icmp eq i64 %5, 192
  br i1 %6, label %7, label %2

7:                                                ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !249 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !249 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !249 {
  tail call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !250 {
  tail call void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !250 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !251 {
  store i32 0, ptr %0, align 4, !tbaa !252
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !254
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !255 {
  %2 = load ptr, ptr %0, align 8, !tbaa !256
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !258
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !259 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !260 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !255 {
  %2 = load ptr, ptr %0, align 8, !tbaa !256
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !261
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat !prof !259 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !259 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !262 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !263

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !264 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !264 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !248 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !248 {
  tail call void @_ZNSaIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !248 {
  tail call void @_ZNSt15__new_allocatorIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !248 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !243 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !243 {
  tail call void @_ZNSaI7KoStateEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI7KoStateEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !243 {
  tail call void @_ZNSt15__new_allocatorI7KoStateEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !243 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !244 {
  tail call void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !265 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %2 = load ptr, ptr %0, align 8, !tbaa !245
  %3 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !266
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8440
  invoke void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7KoStateEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat !prof !244 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !244 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !267

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %5) #14
  %6 = getelementptr inbounds %class.KoState, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !268, !llvm.loop !269

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7KoStateEvPT_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !270 {
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !271 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !272

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !273 {
  tail call void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !273 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = load ptr, ptr %0, align 8, !tbaa !275
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !277
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !278 {
  tail call void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !279 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !274 {
  %2 = load ptr, ptr %0, align 8, !tbaa !275
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat !prof !278 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !278 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !281 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !282

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !283 {
  tail call void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !283 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8440) ptr @_ZN7KoStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8388) ptr @_ZN9FastStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #16
  %4 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  %7 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  %9 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI7KoStateSaIS0_EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !284 {
  tail call void @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8388) ptr @_ZN9FastStateaSEOS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8072) ptr @_ZN9FullBoardaSEOS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #16
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %4, ptr noundef nonnull align 8 dereferenceable(124) %5, i64 124, i1 false)
  %6 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 9
  %8 = tail call noundef nonnull align 4 dereferenceable(192) ptr @_ZN5boost5arrayISt4pairIiiELm24EEaSEOS3_(ptr noundef nonnull align 4 dereferenceable(192) %6, ptr noundef nonnull align 4 dereferenceable(192) %7) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIySaIyEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !285 {
  tail call void @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8072) ptr @_ZN9FullBoardaSEOS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSEOS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #16
  %4 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(192) ptr @_ZN5boost5arrayISt4pairIiiELm24EEaSEOS3_(ptr noundef nonnull align 4 dereferenceable(192) %0, ptr noundef nonnull align 4 dereferenceable(192) %1) local_unnamed_addr #6 comdat align 2 {
  br label %4

3:                                                ; preds = %4
  ret ptr %0

4:                                                ; preds = %2, %4
  %5 = phi i64 [ 0, %2 ], [ %9, %4 ]
  %6 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %0, i64 0, i64 %5
  %7 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %1, i64 0, i64 %5
  %8 = tail call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSEOS0_(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) #16
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %3, label %4, !llvm.loop !286
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSEOS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #6 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !287
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %7, ptr %8, align 8, !tbaa !287
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !284 {
  tail call void @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !284 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator.6", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.6") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt6vectorIiSaIiEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZSt15__alloc_on_moveISaIiEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.6") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !284 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !284 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !298 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !285 {
  %3 = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaIiEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat !prof !284 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !299 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !300 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !300 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !284 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !301 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !302 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !303 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !207
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !207
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !261
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !261
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSEOS0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !304 {
  %3 = load i32, ptr %1, align 4, !tbaa !236
  store i32 %3, ptr %0, align 4, !tbaa !252
  %4 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !236
  %6 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !254
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %3 = alloca %"class.std::vector.11", align 8
  %4 = alloca %"class.std::allocator.13", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.13") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt6vectorIySaIyEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZSt15__alloc_on_moveISaIyEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.13") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !285 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !285 {
  tail call void @_ZNSt12_Vector_baseIySaIyEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !305 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !306 {
  %3 = alloca %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaIyEEvRT_S2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat !prof !285 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !307 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !308 {
  tail call void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !308 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !285 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !309 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !310 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !311 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !207
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !207
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !280
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !280
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !284 {
  %3 = alloca %"class.std::vector.16", align 8
  %4 = alloca %"class.std::allocator.18", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.18") align 1 %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZSt15__alloc_on_moveISaI7KoStateEEvRT_S3_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #14
  call void @_ZNSt6vectorI7KoStateSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.18") align 1 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !284 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  tail call void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !284 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !285 {
  %3 = alloca %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt15__alloc_on_moveISaI7KoStateEEvRT_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat !prof !284 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !313 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !314 {
  tail call void @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !314 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !284 {
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !315 {
  tail call void @_ZNSaI7KoStateEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !316 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 !prof !303 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !207
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !207
  %4 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !266
  %6 = getelementptr inbounds %"struct.std::_Vector_base<KoState, std::allocator<KoState>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !266
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 2
  tail call void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #16
  %3 = getelementptr inbounds %class.SGFTree, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  tail call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !317 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !320
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !321 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !322

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #16
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #14
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #16
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !323, !llvm.loop !324

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !325 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !326 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !327 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !328
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !331 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !333 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #16
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !333 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #14
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !333 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #14
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !333 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !334 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 !prof !335 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !333 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair.33", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !335 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #16
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !335 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !333 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !333 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !325 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !336
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !317 {
  tail call void @_ZSt8_DestroyIP7SGFTreeEvT_S2_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !338 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !317 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  %3 = getelementptr inbounds %"struct.std::_Vector_base<SGFTree, std::allocator<SGFTree>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !339
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 8512
  invoke void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7SGFTreeEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat !prof !317 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !317 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !340

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %5) #14
  %6 = getelementptr inbounds %class.SGFTree, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !341, !llvm.loop !342

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI7SGFTreeEvPT_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !343 {
  tail call void @_ZN7SGFTreeD2Ev(ptr noundef nonnull align 8 dereferenceable(8512) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !344 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !345

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !326 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !343 {
  tail call void @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !343 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9UCTSearchD2Ev(ptr noundef nonnull align 8 dereferenceable(90) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.UCTSearch, ptr %0, i64 0, i32 1
  tail call void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %2) #16
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN7UCTNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_Leela.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { builtin optsize allocsize(0) }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!204}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!35 = !{ptr @main, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 2}
!36 = !{ptr @main, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKc, i64 1}
!37 = !{ptr @main, ptr @_Znwm, i64 98}
!38 = !{ptr @main, ptr @_ZN7SGFTreeC1Ev, i64 1}
!39 = !{ptr @main, ptr @_ZNSt8auto_ptrI7SGFTreeEC2EPS0_, i64 1}
!40 = !{ptr @main, ptr @_ZNKSt8auto_ptrI7SGFTreeEptEv, i64 2}
!41 = !{ptr @main, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 1}
!42 = !{ptr @main, ptr @_ZN7SGFTree14load_from_fileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, i64 1}
!43 = !{ptr @main, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!44 = !{ptr @main, ptr @_ZN7SGFTree12get_mainlineEj, i64 1}
!45 = !{ptr @main, ptr @_ZNKSt8auto_ptrI9GameStateEdeEv, i64 98}
!46 = !{ptr @main, ptr @_ZN9GameStateaSEOS_, i64 1}
!47 = !{ptr @main, ptr @_ZN9GameStateD2Ev, i64 1}
!48 = !{ptr @main, ptr @_ZN9UCTSearchC1ER9GameState, i64 97}
!49 = !{ptr @main, ptr @_ZNSt8auto_ptrI9UCTSearchEC2EPS0_, i64 97}
!50 = !{ptr @main, ptr @_ZNKSt8auto_ptrI9UCTSearchEptEv, i64 97}
!51 = !{ptr @main, ptr @_ZNKSt8auto_ptrI9GameStateEptEv, i64 388}
!52 = !{ptr @main, ptr @_ZN9FastState11get_to_moveEv, i64 97}
!53 = !{ptr @main, ptr @_ZN9UCTSearch5thinkEii, i64 97}
!54 = !{ptr @main, ptr @_ZN9GameState9play_moveEi, i64 97}
!55 = !{ptr @main, ptr @_ZN9GameState13display_stateEv, i64 97}
!56 = !{ptr @main, ptr @_ZNSt8auto_ptrI9UCTSearchED2Ev, i64 97}
!57 = !{ptr @main, ptr @_ZN9FastState10get_passesEv, i64 97}
!58 = !{ptr @main, ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, i64 1}
!59 = !{ptr @_ZNSt8ios_base4setfESt13_Ios_Fmtflags, ptr @_ZStoRRSt13_Ios_FmtflagsS_, i64 609}
!60 = !{ptr @_ZNSt8auto_ptrI9UCTSearchED2Ev, ptr @_ZN9UCTSearchD2Ev, i64 606}
!61 = !{ptr @_ZNSt8auto_ptrI9UCTSearchED2Ev, ptr @_ZdlPv, i64 606}
!62 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZN7SGFTreeD2Ev, i64 280}
!63 = !{ptr @_ZNSt8auto_ptrI7SGFTreeED2Ev, ptr @_ZdlPv, i64 280}
!64 = !{ptr @_ZNSt8auto_ptrI9GameStateED2Ev, ptr @_ZN9GameStateD2Ev, i64 1}
!65 = !{ptr @_ZNSt8auto_ptrI9GameStateED2Ev, ptr @_ZdlPv, i64 1}
!66 = !{ptr @_ZNSt8auto_ptrI6RandomED2Ev, ptr @_ZdlPv, i64 1}
!67 = !{ptr @_ZStoRRSt13_Ios_FmtflagsS_, ptr @_ZStorSt13_Ios_FmtflagsS_, i64 609}
!68 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev, i64 11}
!69 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 12023}
!70 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, i64 12023}
!71 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, i64 12023}
!72 = !{ptr @_ZNSt6vectorIySaIyEEC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEEC2Ev, i64 918}
!73 = !{ptr @_ZNSt6vectorIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, i64 202367}
!74 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, i64 202367}
!75 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSaIiEC2Ev, i64 202367}
!76 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 202367}
!77 = !{ptr @_ZNSaIiEC2Ev, ptr @_ZNSt15__new_allocatorIiEC2Ev, i64 202374}
!78 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!79 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!80 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!81 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!82 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!83 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!84 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!85 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!86 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!87 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!88 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!89 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!90 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, i64 918}
!91 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, ptr @_ZNSaIyEC2Ev, i64 918}
!92 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 918}
!93 = !{ptr @_ZNSaIyEC2Ev, ptr @_ZNSt15__new_allocatorIyEC2Ev, i64 918}
!94 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev, i64 11}
!95 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev, ptr @_ZNSaI7KoStateEC2Ev, i64 11}
!96 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev, i64 11}
!97 = !{ptr @_ZNSaI7KoStateEC2Ev, ptr @_ZNSt15__new_allocatorI7KoStateEC2Ev, i64 11}
!98 = !{ptr @_ZSt8_DestroyIP7KoStateS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, i64 12023}
!99 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, i64 12023}
!100 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EED2Ev, ptr @_ZNSt15__new_allocatorI7KoStateED2Ev, i64 12023}
!101 = !{ptr @_ZSt8_DestroyIP7KoStateEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, i64 12023}
!102 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7KoStateEEvT_S4_, ptr @_ZSt8_DestroyI7KoStateEvPT_, i64 1513057}
!103 = !{ptr @_ZSt8_DestroyI7KoStateEvPT_, ptr @_ZN7KoStateD2Ev, i64 1513182}
!104 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, i64 23363}
!105 = !{ptr @_ZNSt16allocator_traitsISaI7KoStateEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, i64 23364}
!106 = !{ptr @_ZNSt15__new_allocatorI7KoStateE10deallocateEPS0_m, ptr @_ZdlPv, i64 23364}
!107 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 18212926}
!108 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 18212926}
!109 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 18212909}
!110 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!111 = !{ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPyEvT_S1_, i64 18213858}
!112 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 18212926}
!113 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 18212909}
!114 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!115 = !{ptr @_ZSt8_DestroyIPyEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, i64 18213858}
!116 = !{ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, i64 27873635}
!117 = !{ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, i64 27873636}
!118 = !{ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, ptr @_ZdlPv, i64 27873636}
!119 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEaSEOS2_, ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, i64 10}
!120 = !{ptr @_ZNSt6vectorIySaIyEEaSEOS1_, ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, i64 20}
!121 = !{ptr @_ZNSt6vectorIiSaIiEEaSEOS1_, ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, i64 10}
!122 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, i64 10}
!123 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorIiSaIiEEC2ERKS0_, i64 10}
!124 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 10}
!125 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_, i64 20}
!126 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20}
!127 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZSt15__alloc_on_moveISaIiEEvRT_S2_, i64 10}
!128 = !{ptr @_ZNSt6vectorIiSaIiEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorIiSaIiEED2Ev, i64 10}
!129 = !{ptr @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 10}
!130 = !{ptr @_ZNKSt12_Vector_baseIiSaIiEE13get_allocatorEv, ptr @_ZNSaIiEC2ERKS_, i64 10}
!131 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, i64 10}
!132 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 20}
!133 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_swap_dataERS2_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_data12_M_copy_dataERKS2_, i64 60}
!134 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!135 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 10}
!136 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!137 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!138 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv, i64 20}
!139 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorIySaIyEEC2ERKS0_, i64 20}
!140 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 20}
!141 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_, i64 40}
!142 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 40}
!143 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZSt15__alloc_on_moveISaIyEEvRT_S2_, i64 20}
!144 = !{ptr @_ZNSt6vectorIySaIyEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorIySaIyEED2Ev, i64 20}
!145 = !{ptr @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 20}
!146 = !{ptr @_ZNKSt12_Vector_baseIySaIyEE13get_allocatorEv, ptr @_ZNSaIyEC2ERKS_, i64 20}
!147 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEEC2ERKS0_, i64 20}
!148 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 40}
!149 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_swap_dataERS2_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_data12_M_copy_dataERKS2_, i64 120}
!150 = !{ptr @_ZNSaIyEC2ERKS_, ptr @_ZNSt15__new_allocatorIyEC2ERKS0_, i64 33661998}
!151 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, i64 20}
!152 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449990}
!153 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 15449990}
!154 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv, i64 10}
!155 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_, i64 10}
!156 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt15__new_allocatorI7KoStateED2Ev, i64 10}
!157 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_, i64 20}
!158 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 20}
!159 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZSt15__alloc_on_moveISaI7KoStateEEvRT_S3_, i64 10}
!160 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE, ptr @_ZNSt6vectorI7KoStateSaIS0_EED2Ev, i64 10}
!161 = !{ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv, ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE19_M_get_Tp_allocatorEv, i64 10}
!162 = !{ptr @_ZNKSt12_Vector_baseI7KoStateSaIS0_EE13get_allocatorEv, ptr @_ZNSaI7KoStateEC2ERKS0_, i64 10}
!163 = !{ptr @_ZNSt6vectorI7KoStateSaIS0_EEC2ERKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_, i64 10}
!164 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev, i64 20}
!165 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_, i64 60}
!166 = !{ptr @_ZNSaI7KoStateEC2ERKS0_, ptr @_ZNSt15__new_allocatorI7KoStateEC2ERKS1_, i64 24024}
!167 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EEC2ERKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, i64 10}
!168 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, ptr @_ZNSaI7KoStateEC2ERKS0_, i64 12012}
!169 = !{ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE12_Vector_implC2ERKS1_, ptr @_ZNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataC2Ev, i64 12012}
!170 = !{ptr @_ZNSt8multimapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, i64 1322}
!171 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE19_M_get_Tp_allocatorEv, i64 1322}
!172 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E, i64 1322}
!173 = !{ptr @_ZNSt6vectorI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, i64 1322}
!174 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, i64 1322}
!175 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 1322}
!176 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev, i64 1322}
!177 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, i64 607}
!178 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 607}
!179 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, i64 607}
!180 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 607}
!181 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv, i64 5484}
!182 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!183 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, i64 606}
!184 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 606}
!185 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, i64 606}
!186 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, i64 606}
!187 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 606}
!188 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, i64 606}
!189 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, i64 606}
!190 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, i64 2106}
!191 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, i64 606}
!192 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv, i64 2106}
!193 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m, i64 606}
!194 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m, ptr @_ZdlPv, i64 606}
!195 = !{ptr @_ZSt8_DestroyIP7SGFTreeS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP7SGFTreeEvT_S2_, i64 1322}
!196 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m, i64 1322}
!197 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EED2Ev, ptr @_ZNSt15__new_allocatorI7SGFTreeED2Ev, i64 1322}
!198 = !{ptr @_ZSt8_DestroyIP7SGFTreeEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_, i64 1322}
!199 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP7SGFTreeEEvT_S4_, ptr @_ZSt8_DestroyI7SGFTreeEvPT_, i64 438}
!200 = !{ptr @_ZSt8_DestroyI7SGFTreeEvPT_, ptr @_ZN7SGFTreeD2Ev, i64 437}
!201 = !{ptr @_ZNSt12_Vector_baseI7SGFTreeSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m, i64 438}
!202 = !{ptr @_ZNSt16allocator_traitsISaI7SGFTreeEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m, i64 437}
!203 = !{ptr @_ZNSt15__new_allocatorI7SGFTreeE10deallocateEPS0_m, ptr @_ZdlPv, i64 437}
!204 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!205 = !{!"function_entry_count", i64 1}
!206 = !{!"branch_weights", i32 1, i32 2}
!207 = !{!208, !208, i64 0}
!208 = !{!"any pointer", !209, i64 0}
!209 = !{!"omnipotent char", !210, i64 0}
!210 = !{!"Simple C++ TBAA"}
!211 = !{!212, !212, i64 0}
!212 = !{!"vtable pointer", !210, i64 0}
!213 = !{!"branch_weights", i32 961, i32 12}
!214 = distinct !{!214, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = distinct !{!216, !215}
!217 = !{!"function_entry_count", i64 609}
!218 = !{!219, !221, i64 24}
!219 = !{!"_ZTSSt8ios_base", !220, i64 8, !220, i64 16, !221, i64 24, !222, i64 28, !222, i64 32, !208, i64 40, !223, i64 48, !209, i64 64, !224, i64 192, !208, i64 200, !225, i64 208}
!220 = !{!"long", !209, i64 0}
!221 = !{!"_ZTSSt13_Ios_Fmtflags", !209, i64 0}
!222 = !{!"_ZTSSt12_Ios_Iostate", !209, i64 0}
!223 = !{!"_ZTSNSt8ios_base6_WordsE", !208, i64 0, !220, i64 8}
!224 = !{!"int", !209, i64 0}
!225 = !{!"_ZTSSt6locale", !208, i64 0}
!226 = !{!227, !208, i64 0}
!227 = !{!"_ZTSSt8auto_ptrI6RandomE", !208, i64 0}
!228 = !{!229, !208, i64 0}
!229 = !{!"_ZTSSt8auto_ptrI9GameStateE", !208, i64 0}
!230 = !{!"function_entry_count", i64 448}
!231 = !{!232, !208, i64 0}
!232 = !{!"_ZTSSt8auto_ptrI7SGFTreeE", !208, i64 0}
!233 = !{!"function_entry_count", i64 21}
!234 = !{!"function_entry_count", i64 980}
!235 = !{i64 0, i64 4, !236, i64 4, i64 4, !236, i64 8, i64 4, !236, i64 12, i64 4, !236, i64 16, i64 8, !237, i64 24, i64 8, !237, i64 32, i64 2, !237, i64 36, i64 8, !237}
!236 = !{!224, !224, i64 0}
!237 = !{!209, !209, i64 0}
!238 = !{!"function_entry_count", i64 970}
!239 = !{!240, !208, i64 0}
!240 = !{!"_ZTSSt8auto_ptrI9UCTSearchE", !208, i64 0}
!241 = !{!"function_entry_count", i64 3880}
!242 = !{!221, !221, i64 0}
!243 = !{!"function_entry_count", i64 11}
!244 = !{!"function_entry_count", i64 12023}
!245 = !{!246, !208, i64 0}
!246 = !{!"_ZTSNSt12_Vector_baseI7KoStateSaIS0_EE17_Vector_impl_dataE", !208, i64 0, !208, i64 8, !208, i64 16}
!247 = !{!246, !208, i64 8}
!248 = !{!"function_entry_count", i64 918}
!249 = !{!"function_entry_count", i64 202367}
!250 = !{!"function_entry_count", i64 202374}
!251 = !{!"function_entry_count", i64 11016}
!252 = !{!253, !224, i64 0}
!253 = !{!"_ZTSSt4pairIiiE", !224, i64 0, !224, i64 4}
!254 = !{!253, !224, i64 4}
!255 = !{!"function_entry_count", i64 9372256}
!256 = !{!257, !208, i64 0}
!257 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !208, i64 0, !208, i64 8, !208, i64 16}
!258 = !{!257, !208, i64 8}
!259 = !{!"function_entry_count", i64 69455494}
!260 = !{!"function_entry_count", i64 97749716}
!261 = !{!257, !208, i64 16}
!262 = !{!"function_entry_count", i64 19624698}
!263 = !{!"branch_weights", i32 9372251, i32 10252449}
!264 = !{!"function_entry_count", i64 10252448}
!265 = !{!"function_entry_count", i64 46769}
!266 = !{!246, !208, i64 16}
!267 = !{!"branch_weights", i32 1, i32 12023}
!268 = !{!"branch_weights", i32 12023, i32 1501160}
!269 = distinct !{!269, !215}
!270 = !{!"function_entry_count", i64 1513182}
!271 = !{!"function_entry_count", i64 23385}
!272 = !{!"branch_weights", i32 22, i32 23365}
!273 = !{!"function_entry_count", i64 23364}
!274 = !{!"function_entry_count", i64 18212926}
!275 = !{!276, !208, i64 0}
!276 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !208, i64 0, !208, i64 8, !208, i64 16}
!277 = !{!276, !208, i64 8}
!278 = !{!"function_entry_count", i64 18213858}
!279 = !{!"function_entry_count", i64 58513802}
!280 = !{!276, !208, i64 16}
!281 = !{!"function_entry_count", i64 30638340}
!282 = !{!"branch_weights", i32 2764705, i32 27873637}
!283 = !{!"function_entry_count", i64 27873636}
!284 = !{!"function_entry_count", i64 10}
!285 = !{!"function_entry_count", i64 20}
!286 = distinct !{!286, !215}
!287 = !{!288, !224, i64 8048}
!288 = !{!"_ZTS9FastBoard", !289, i64 0, !289, i64 882, !224, i64 1764, !224, i64 1768, !224, i64 1772, !290, i64 1776, !291, i64 3540, !291, i64 4424, !291, i64 5308, !291, i64 6192, !289, i64 7076, !292, i64 7960, !293, i64 7976, !294, i64 8008, !294, i64 8016, !295, i64 8024, !224, i64 8048}
!289 = !{!"_ZTSN5boost5arrayItLm441EEE", !209, i64 0}
!290 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !209, i64 0}
!291 = !{!"_ZTSN5boost5arrayItLm442EEE", !209, i64 0}
!292 = !{!"_ZTSN5boost5arrayIiLm4EEE", !209, i64 0}
!293 = !{!"_ZTSN5boost5arrayIiLm8EEE", !209, i64 0}
!294 = !{!"_ZTSN5boost5arrayIiLm2EEE", !209, i64 0}
!295 = !{!"_ZTSSt6vectorIiSaIiEE", !296, i64 0}
!296 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !297, i64 0}
!297 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !257, i64 0}
!298 = !{!"function_entry_count", i64 17161144}
!299 = !{!"function_entry_count", i64 28293760}
!300 = !{!"function_entry_count", i64 16958771}
!301 = !{!"function_entry_count", i64 7788881}
!302 = !{!"function_entry_count", i64 7991268}
!303 = !{!"function_entry_count", i64 60}
!304 = !{!"function_entry_count", i64 2543899333}
!305 = !{!"function_entry_count", i64 33662916}
!306 = !{!"function_entry_count", i64 40}
!307 = !{!"function_entry_count", i64 40299030}
!308 = !{!"function_entry_count", i64 33661998}
!309 = !{!"function_entry_count", i64 15449990}
!310 = !{!"function_entry_count", i64 15450948}
!311 = !{!"function_entry_count", i64 120}
!312 = !{!"function_entry_count", i64 24035}
!313 = !{!"function_entry_count", i64 34736}
!314 = !{!"function_entry_count", i64 24024}
!315 = !{!"function_entry_count", i64 12012}
!316 = !{!"function_entry_count", i64 12043}
!317 = !{!"function_entry_count", i64 1322}
!318 = !{!319, !208, i64 0}
!319 = !{!"_ZTSNSt12_Vector_baseI7SGFTreeSaIS0_EE17_Vector_impl_dataE", !208, i64 0, !208, i64 8, !208, i64 16}
!320 = !{!319, !208, i64 8}
!321 = !{!"function_entry_count", i64 1928}
!322 = !{!"branch_weights", i32 1322, i32 607}
!323 = !{!"branch_weights", i32 607, i32 0}
!324 = distinct !{!324, !215}
!325 = !{!"function_entry_count", i64 5484}
!326 = !{!"function_entry_count", i64 2196}
!327 = !{!"function_entry_count", i64 1867}
!328 = !{!329, !208, i64 24}
!329 = !{!"_ZTSSt18_Rb_tree_node_base", !330, i64 0, !208, i64 8, !208, i64 16, !208, i64 24}
!330 = !{!"_ZTSSt14_Rb_tree_color", !209, i64 0}
!331 = !{!"function_entry_count", i64 3487}
!332 = !{!329, !208, i64 16}
!333 = !{!"function_entry_count", i64 606}
!334 = !{!"function_entry_count", i64 2424}
!335 = !{!"function_entry_count", i64 2106}
!336 = !{!337, !208, i64 8}
!337 = !{!"_ZTSSt15_Rb_tree_header", !329, i64 0, !220, i64 32}
!338 = !{!"function_entry_count", i64 2633}
!339 = !{!319, !208, i64 16}
!340 = !{!"branch_weights", i32 885, i32 438}
!341 = !{!"branch_weights", i32 438, i32 0}
!342 = distinct !{!342, !215}
!343 = !{!"function_entry_count", i64 437}
!344 = !{!"function_entry_count", i64 1759}
!345 = !{!"branch_weights", i32 1323, i32 438}
