; ModuleID = 'source/base/convergence_table.cc'
source_filename = "source/base/convergence_table.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.21" = type { %"struct.std::_Vector_base.22" }
%"struct.std::_Vector_base.22" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.23" = type { i8 }
%"class.std::allocator.13" = type { i8 }
%"class.dealii::TableHandler" = type { %"class.std::vector", %"class.std::map", %"class.std::map.3", %"class.std::map.8", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"class.std::map.8" = type { %"class.std::_Rb_tree.9" }
%"class.std::_Rb_tree.9" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.dealii::TableHandler::Column" = type <{ %"class.std::vector.16", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, i8, [3 x i8], i32, [4 x i8] }>
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<dealii::TableEntryBase *, std::allocator<dealii::TableEntryBase *>>::_Vector_impl" }
%"struct.std::_Vector_base<dealii::TableEntryBase *, std::allocator<dealii::TableEntryBase *>>::_Vector_impl" = type { %"struct.std::_Vector_base<dealii::TableEntryBase *, std::allocator<dealii::TableEntryBase *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<dealii::TableEntryBase *, std::allocator<dealii::TableEntryBase *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.31" = type { i8 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"struct.dealii::TableHandler::Column" }
%"struct.std::_Rb_tree_const_iterator.36" = type { ptr }
%"class.dealii::StandardExceptions::ExcNotImplemented" = type { %"class.dealii::ExceptionBase.base", [4 x i8] }
%"class.dealii::ExceptionBase.base" = type <{ %"class.std::exception", ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32 }>
%"class.std::exception" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [136 x i8] }
%"struct.std::pair.32" = type { ptr, ptr }
%struct._Guard.35 = type { ptr }
%"struct.std::_Select1st.39" = type { i8 }
%"struct.std::_Rb_tree_node.37" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.38" }
%"struct.__gnu_cxx::__aligned_membuf.38" = type { [56 x i8] }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_ = comdat any

$_ZNKSt6vectorIPN6dealii14TableEntryBaseESaIS2_EE4sizeEv = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_ = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_ = comdat any

$_ZN6dealii18StandardExceptions17ExcNotImplementedC2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE5beginEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E = comdat any

$_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE3endEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEppEv = comdat any

$_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_ = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_ = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE8key_compEv = comdat any

$_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEdeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS7_EEEbE4typeELb1EEES7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11lower_boundERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEclERKSB_ = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE7_M_addrEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE9_M_mbeginEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8key_compEv = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE7_M_addrEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEERSH_DpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_node6_M_keyEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSK_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEPSt13_Rb_tree_nodeISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE8allocateERSE_m = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESK_IJEEEEEvRSE_PT_DpOT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvPT_DpOT0_ = comdat any

$_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSD_IJDpT1_EESt12_Index_tupleIJXspT0_EEESM_IJXspT2_EEE = comdat any

$_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_ = comdat any

$_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_ = comdat any

$_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE10deallocateERSE_PSD_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE10deallocateEPSD_m = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4sizeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_leftmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEppEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSJ_PSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE7destroyISC_EEvRSE_PT_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE7destroyISC_EEvPT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEED2Ev = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_ = comdat any

$_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_ = comdat any

$_ZNSt15__new_allocatorIdEC2Ev = comdat any

$_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIdSaIdEE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_ = comdat any

$_ZNSaIdEC2ERKS_ = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZNKSt15__new_allocatorIdE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIdE11_M_max_sizeEv = comdat any

$_ZNSt15__new_allocatorIdEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm = comdat any

$_ZNSt15__new_allocatorIdED2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIdE8allocateEmPKv = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt10_ConstructIdJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPddEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZNSt15__new_allocatorIdE10deallocateEPdm = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEESE_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_S_leftEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEclERKSB_ = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE7_M_addrEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv = comdat any

$_ZTSN6dealii10TableEntryIdEE = comdat any

$_ZTIN6dealii10TableEntryIdEE = comdat any

$_ZTSN6dealii10TableEntryIfEE = comdat any

$_ZTIN6dealii10TableEntryIfEE = comdat any

$_ZTSN6dealii10TableEntryIiEE = comdat any

$_ZTIN6dealii10TableEntryIiEE = comdat any

$_ZTSN6dealii10TableEntryIjEE = comdat any

$_ZTIN6dealii10TableEntryIjEE = comdat any

$_ZTVN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

$_ZTSN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

$_ZTIN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZTIN6dealii14TableEntryBaseE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii10TableEntryIdEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii10TableEntryIdEE\00", comdat, align 1
@_ZTIN6dealii10TableEntryIdEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10TableEntryIdEE, ptr @_ZTIN6dealii14TableEntryBaseE }, comdat, align 8
@_ZTSN6dealii10TableEntryIfEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii10TableEntryIfEE\00", comdat, align 1
@_ZTIN6dealii10TableEntryIfEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10TableEntryIfEE, ptr @_ZTIN6dealii14TableEntryBaseE }, comdat, align 8
@_ZTSN6dealii10TableEntryIiEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii10TableEntryIiEE\00", comdat, align 1
@_ZTIN6dealii10TableEntryIiEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10TableEntryIiEE, ptr @_ZTIN6dealii14TableEntryBaseE }, comdat, align 8
@_ZTSN6dealii10TableEntryIjEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii10TableEntryIjEE\00", comdat, align 1
@_ZTIN6dealii10TableEntryIjEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10TableEntryIjEE, ptr @_ZTIN6dealii14TableEntryBaseE }, comdat, align 8
@.str = private unnamed_addr constant [9 x i8] c"red.rate\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"red.rate.log2\00", align 1
@_ZTVN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii18StandardExceptions17ExcNotImplementedE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local constant [49 x i8] c"N6dealii18StandardExceptions17ExcNotImplementedE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18StandardExceptions17ExcNotImplementedE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN6dealii16ConvergenceTableC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii16ConvergenceTableC2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii16ConvergenceTableC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 align 2 !prof !89 {
  tail call void @_ZN6dealii12TableHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN6dealii12TableHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii16ConvergenceTable26evaluate_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::vector.21", align 8
  %7 = alloca %"class.std::allocator.23", align 1
  %8 = alloca %"class.std::vector.21", align 8
  %9 = alloca %"class.std::allocator.23", align 1
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::allocator.13", align 1
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::allocator.13", align 1
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %249, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %20 = call noundef i64 @_ZNKSt6vectorIPN6dealii14TableEntryBaseESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %18) #17
  %21 = trunc i64 %20 to i32
  %22 = call noundef i64 @_ZNKSt6vectorIPN6dealii14TableEntryBaseESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %23 = and i64 %20, 4294967295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %23, ptr noundef nonnull align 1 dereferenceable(1) %7) #15
          to label %24 unwind label %31

24:                                               ; preds = %16
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  %25 = and i64 %22, 4294967295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #16
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #17
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %25, ptr noundef nonnull align 1 dereferenceable(1) %9) #15
          to label %26 unwind label %33

26:                                               ; preds = %24
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #16
  %27 = icmp eq i32 %21, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = and i64 %20, 4294967295
  br label %35

30:                                               ; preds = %152, %26
  switch i32 %3, label %228 [
    i32 2, label %190
    i32 1, label %155
  ]

31:                                               ; preds = %16
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %256

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #16
  br label %254

35:                                               ; preds = %28, %152
  %36 = phi i64 [ 0, %28 ], [ %153, %152 ]
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %36) #17
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = call ptr @__dynamic_cast(ptr nonnull %38, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #16
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %36) #17
  %45 = load ptr, ptr %44, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %46 = call ptr @__dynamic_cast(ptr nonnull %45, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #16
  %47 = invoke noundef double @_ZNK6dealii10TableEntryIdE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %46) #15
          to label %92 unwind label %48

48:                                               ; preds = %142, %128, %114, %102, %85, %71, %57, %43
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %252

50:                                               ; preds = %35, %40
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %36) #17
  %52 = load ptr, ptr %51, align 8, !tbaa !90
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %50
  %55 = call ptr @__dynamic_cast(ptr nonnull %52, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #16
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %36) #17
  %59 = load ptr, ptr %58, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %60 = call ptr @__dynamic_cast(ptr nonnull %59, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #16
  %61 = invoke noundef float @_ZNK6dealii10TableEntryIfE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %60) #15
          to label %62 unwind label %48

62:                                               ; preds = %57
  %63 = fpext float %61 to double
  br label %92

64:                                               ; preds = %50, %54
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %36) #17
  %66 = load ptr, ptr %65, align 8, !tbaa !90
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %64
  %69 = call ptr @__dynamic_cast(ptr nonnull %66, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #16
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %36) #17
  %73 = load ptr, ptr %72, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %74 = call ptr @__dynamic_cast(ptr nonnull %73, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #16
  %75 = invoke noundef i32 @_ZNK6dealii10TableEntryIiE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %74) #15
          to label %76 unwind label %48

76:                                               ; preds = %71
  %77 = sitofp i32 %75 to double
  br label %92

78:                                               ; preds = %64, %68
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %36) #17
  %80 = load ptr, ptr %79, align 8, !tbaa !90
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %78
  %83 = call ptr @__dynamic_cast(ptr nonnull %80, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #16
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %18, i64 noundef %36) #17
  %87 = load ptr, ptr %86, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %88 = call ptr @__dynamic_cast(ptr nonnull %87, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #16
  %89 = invoke noundef i32 @_ZNK6dealii10TableEntryIjE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %88) #15
          to label %90 unwind label %48

90:                                               ; preds = %85
  %91 = uitofp i32 %89 to double
  br label %92

92:                                               ; preds = %43, %76, %90, %62
  %93 = phi double [ %63, %62 ], [ %91, %90 ], [ %77, %76 ], [ %47, %43 ]
  %94 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %36) #17
  store double %93, ptr %94, align 8, !tbaa !95
  br label %95

95:                                               ; preds = %92, %78, %82
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %36) #17
  %97 = load ptr, ptr %96, align 8, !tbaa !90
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = call ptr @__dynamic_cast(ptr nonnull %97, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #16
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %36) #17
  %104 = load ptr, ptr %103, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %105 = call ptr @__dynamic_cast(ptr nonnull %104, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #16
  %106 = invoke noundef double @_ZNK6dealii10TableEntryIdE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %105) #15
          to label %149 unwind label %48

107:                                              ; preds = %95, %99
  %108 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %36) #17
  %109 = load ptr, ptr %108, align 8, !tbaa !90
  %110 = icmp eq ptr %109, null
  br i1 %110, label %121, label %111

111:                                              ; preds = %107
  %112 = call ptr @__dynamic_cast(ptr nonnull %109, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %36) #17
  %116 = load ptr, ptr %115, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %117 = call ptr @__dynamic_cast(ptr nonnull %116, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #16
  %118 = invoke noundef float @_ZNK6dealii10TableEntryIfE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %117) #15
          to label %119 unwind label %48

119:                                              ; preds = %114
  %120 = fpext float %118 to double
  br label %149

121:                                              ; preds = %107, %111
  %122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %36) #17
  %123 = load ptr, ptr %122, align 8, !tbaa !90
  %124 = icmp eq ptr %123, null
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = call ptr @__dynamic_cast(ptr nonnull %123, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #16
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %36) #17
  %130 = load ptr, ptr %129, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %131 = call ptr @__dynamic_cast(ptr nonnull %130, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #16
  %132 = invoke noundef i32 @_ZNK6dealii10TableEntryIiE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %131) #15
          to label %133 unwind label %48

133:                                              ; preds = %128
  %134 = sitofp i32 %132 to double
  br label %149

135:                                              ; preds = %121, %125
  %136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %36) #17
  %137 = load ptr, ptr %136, align 8, !tbaa !90
  %138 = icmp eq ptr %137, null
  br i1 %138, label %152, label %139

139:                                              ; preds = %135
  %140 = call ptr @__dynamic_cast(ptr nonnull %137, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #16
  %141 = icmp eq ptr %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %139
  %143 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %36) #17
  %144 = load ptr, ptr %143, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %145 = call ptr @__dynamic_cast(ptr nonnull %144, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #16
  %146 = invoke noundef i32 @_ZNK6dealii10TableEntryIjE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %145) #15
          to label %147 unwind label %48

147:                                              ; preds = %142
  %148 = uitofp i32 %146 to double
  br label %149

149:                                              ; preds = %102, %119, %147, %133
  %150 = phi double [ %134, %133 ], [ %148, %147 ], [ %120, %119 ], [ %106, %102 ]
  %151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %36) #17
  store double %150, ptr %151, align 8, !tbaa !95
  br label %152

152:                                              ; preds = %149, %135, %139
  %153 = add nuw nsw i64 %36, 1
  %154 = icmp eq i64 %153, %29
  br i1 %154, label %30, label %35, !llvm.loop !97

155:                                              ; preds = %30
  %156 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str) #15
          to label %157 unwind label %163

157:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %11) #15
          to label %158 unwind label %165

158:                                              ; preds = %157
  invoke void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %10) #15
          to label %159 unwind label %167

159:                                              ; preds = %158
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #16
  %160 = icmp ugt i32 %21, 1
  br i1 %160, label %161, label %228

161:                                              ; preds = %159
  %162 = and i64 %20, 4294967295
  br label %171

163:                                              ; preds = %230, %228, %190, %155
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %252

165:                                              ; preds = %157
  %166 = landingpad { ptr, i32 }
          cleanup
  br label %169

167:                                              ; preds = %158
  %168 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi { ptr, i32 } [ %168, %167 ], [ %166, %165 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #16
  br label %252

171:                                              ; preds = %161, %185
  %172 = phi i64 [ 1, %161 ], [ %186, %185 ]
  %173 = add nsw i64 %172, -1
  %174 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %173) #17
  %175 = load double, ptr %174, align 8, !tbaa !95
  %176 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %172) #17
  %177 = load double, ptr %176, align 8, !tbaa !95
  %178 = fdiv double %175, %177
  %179 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %172) #17
  %180 = load double, ptr %179, align 8, !tbaa !95
  %181 = fmul double %178, %180
  %182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %173) #17
  %183 = load double, ptr %182, align 8, !tbaa !95
  %184 = fdiv double %181, %183
  invoke void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, double noundef %184) #15
          to label %185 unwind label %188

185:                                              ; preds = %171
  %186 = add nuw nsw i64 %172, 1
  %187 = icmp eq i64 %186, %162
  br i1 %187, label %228, label %171, !llvm.loop !99

188:                                              ; preds = %171
  %189 = landingpad { ptr, i32 }
          cleanup
  br label %252

190:                                              ; preds = %30
  %191 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str) #15
          to label %192 unwind label %163

192:                                              ; preds = %190
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %13) #15
          to label %193 unwind label %198

193:                                              ; preds = %192
  invoke void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %12) #15
          to label %194 unwind label %200

194:                                              ; preds = %193
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #16
  %195 = icmp ugt i32 %21, 1
  br i1 %195, label %196, label %228

196:                                              ; preds = %194
  %197 = and i64 %20, 4294967295
  br label %204

198:                                              ; preds = %192
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %202

200:                                              ; preds = %193
  %201 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi { ptr, i32 } [ %201, %200 ], [ %199, %198 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %13) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #16
  br label %252

204:                                              ; preds = %196, %223
  %205 = phi i64 [ 1, %196 ], [ %224, %223 ]
  %206 = add nsw i64 %205, -1
  %207 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %206) #17
  %208 = load double, ptr %207, align 8, !tbaa !95
  %209 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %205) #17
  %210 = load double, ptr %209, align 8, !tbaa !95
  %211 = fdiv double %208, %210
  %212 = call double @llvm.fabs.f64(double %211)
  %213 = call double @log(double noundef %212) #17
  %214 = fmul double %213, 2.000000e+00
  %215 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %205) #17
  %216 = load double, ptr %215, align 8, !tbaa !95
  %217 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %206) #17
  %218 = load double, ptr %217, align 8, !tbaa !95
  %219 = fdiv double %216, %218
  %220 = call double @llvm.fabs.f64(double %219)
  %221 = call double @log(double noundef %220) #17
  %222 = fdiv double %214, %221
  invoke void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, double noundef %222) #15
          to label %223 unwind label %226

223:                                              ; preds = %204
  %224 = add nuw nsw i64 %205, 1
  %225 = icmp eq i64 %224, %197
  br i1 %225, label %228, label %204, !llvm.loop !100

226:                                              ; preds = %204
  %227 = landingpad { ptr, i32 }
          cleanup
  br label %252

228:                                              ; preds = %185, %223, %159, %194, %30
  %229 = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(32) %5) #15
          to label %230 unwind label %163

230:                                              ; preds = %228
  %231 = getelementptr inbounds %"struct.dealii::TableHandler::Column", ptr %229, i64 0, i32 6
  store i32 1, ptr %231, align 8, !tbaa !101
  invoke void @_ZN6dealii12TableHandler13set_precisionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 2) #15
          to label %232 unwind label %163

232:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %233 unwind label %243

233:                                              ; preds = %232
  %234 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 2
  %235 = invoke noundef i64 @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_(ptr noundef nonnull align 8 dereferenceable(48) %234, ptr noundef nonnull align 8 dereferenceable(32) %14) #15
          to label %236 unwind label %245

236:                                              ; preds = %233
  %237 = icmp eq i64 %235, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %236
  invoke void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %14) #15
          to label %239 unwind label %245

239:                                              ; preds = %238
  %240 = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %241 unwind label %245

241:                                              ; preds = %239
  %242 = getelementptr inbounds %"struct.dealii::TableHandler::Column", ptr %240, i64 0, i32 1
  invoke void @_ZN6dealii12TableHandler20set_tex_supercaptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %242) #15
          to label %247 unwind label %245

243:                                              ; preds = %232
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %250

245:                                              ; preds = %247, %241, %239, %238, %233
  %246 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  br label %250

247:                                              ; preds = %241, %236
  invoke void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %14) #15
          to label %248 unwind label %245

248:                                              ; preds = %247
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %249

249:                                              ; preds = %4, %248
  ret void

250:                                              ; preds = %245, %243
  %251 = phi { ptr, i32 } [ %246, %245 ], [ %244, %243 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #16
  br label %252

252:                                              ; preds = %250, %226, %202, %188, %169, %163, %48
  %253 = phi { ptr, i32 } [ %49, %48 ], [ %251, %250 ], [ %164, %163 ], [ %189, %188 ], [ %170, %169 ], [ %227, %226 ], [ %203, %202 ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #17
  br label %254

254:                                              ; preds = %252, %33
  %255 = phi { ptr, i32 } [ %253, %252 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #17
  br label %256

256:                                              ; preds = %254, %31
  %257 = phi { ptr, i32 } [ %255, %254 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %257
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::less", align 1
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.31", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %9 = tail call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  store ptr %9, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = tail call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %10, ptr %4, align 8
  %11 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  call void @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  %13 = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %14 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %13) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br i1 %14, label %16, label %19

15:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %16

16:                                               ; preds = %15, %12
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS7_EEEbE4typeELb1EEES7_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  %17 = load ptr, ptr %6, align 8
  %18 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %17, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #15
  store ptr %18, ptr %3, align 8, !tbaa.struct !112
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %19

19:                                               ; preds = %16, %12
  %20 = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %21 = getelementptr inbounds %"struct.std::pair", ptr %20, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %21
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPN6dealii14TableEntryBaseESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<dealii::TableEntryBase *, std::allocator<dealii::TableEntryBase *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = load ptr, ptr %0, align 8, !tbaa !114
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !115 {
  tail call void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  tail call void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  invoke void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  resume { ptr, i32 } %7
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef double @_ZNK6dealii10TableEntryIdE5valueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !116 {
  %3 = load ptr, ptr %0, align 8, !tbaa !117
  %4 = getelementptr inbounds double, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: optsize
declare noundef float @_ZNK6dealii10TableEntryIfE5valueEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK6dealii10TableEntryIiE5valueEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK6dealii10TableEntryIjE5valueEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: optsize
declare void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.6) #18
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #15
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3 align 2

; Function Attrs: optsize
declare void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: optsize
declare void @_ZN6dealii12TableHandler13set_precisionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator.36", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator.36", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %6 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i64
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i64 %9
}

; Function Attrs: optsize
declare void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN6dealii12TableHandler20set_tex_supercaptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = load ptr, ptr %0, align 8, !tbaa !117
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii16ConvergenceTable26evaluate_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::vector.21", align 8
  %6 = alloca %"class.std::allocator.23", align 1
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator.13", align 1
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::allocator.13", align 1
  %11 = alloca %"class.dealii::StandardExceptions::ExcNotImplemented", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.2) #15
  %15 = call noundef i64 @_ZNKSt6vectorIPN6dealii14TableEntryBaseESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #17
  %16 = trunc i64 %15 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %17 = and i64 %15, 4294967295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  call void @_ZNSaIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  invoke void @_ZNSt6vectorIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %18 unwind label %23

18:                                               ; preds = %3
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = and i64 %15, 4294967295
  br label %25

22:                                               ; preds = %85, %18
  switch i32 %2, label %147 [
    i32 0, label %149
    i32 1, label %88
    i32 2, label %117
  ]

23:                                               ; preds = %3
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %174

25:                                               ; preds = %20, %85
  %26 = phi i64 [ 0, %20 ], [ %86, %85 ]
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %26) #17
  %28 = load ptr, ptr %27, align 8, !tbaa !90
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = call ptr @__dynamic_cast(ptr nonnull %28, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %26) #17
  %35 = load ptr, ptr %34, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %36 = call ptr @__dynamic_cast(ptr nonnull %35, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #16
  %37 = invoke noundef double @_ZNK6dealii10TableEntryIdE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %36) #15
          to label %82 unwind label %38

38:                                               ; preds = %75, %61, %47, %33
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %172

40:                                               ; preds = %25, %30
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %26) #17
  %42 = load ptr, ptr %41, align 8, !tbaa !90
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = call ptr @__dynamic_cast(ptr nonnull %42, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #16
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %26) #17
  %49 = load ptr, ptr %48, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %50 = call ptr @__dynamic_cast(ptr nonnull %49, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #16
  %51 = invoke noundef float @_ZNK6dealii10TableEntryIfE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %50) #15
          to label %52 unwind label %38

52:                                               ; preds = %47
  %53 = fpext float %51 to double
  br label %82

54:                                               ; preds = %40, %44
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %26) #17
  %56 = load ptr, ptr %55, align 8, !tbaa !90
  %57 = icmp eq ptr %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = call ptr @__dynamic_cast(ptr nonnull %56, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #16
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %26) #17
  %63 = load ptr, ptr %62, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %64 = call ptr @__dynamic_cast(ptr nonnull %63, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #16
  %65 = invoke noundef i32 @_ZNK6dealii10TableEntryIiE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %64) #15
          to label %66 unwind label %38

66:                                               ; preds = %61
  %67 = sitofp i32 %65 to double
  br label %82

68:                                               ; preds = %54, %58
  %69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %26) #17
  %70 = load ptr, ptr %69, align 8, !tbaa !90
  %71 = icmp eq ptr %70, null
  br i1 %71, label %85, label %72

72:                                               ; preds = %68
  %73 = call ptr @__dynamic_cast(ptr nonnull %70, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %72
  %76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPN6dealii14TableEntryBaseESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %26) #17
  %77 = load ptr, ptr %76, align 8, !tbaa !90, !nonnull !94, !noundef !94
  %78 = call ptr @__dynamic_cast(ptr nonnull %77, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #16
  %79 = invoke noundef i32 @_ZNK6dealii10TableEntryIjE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %78) #15
          to label %80 unwind label %38

80:                                               ; preds = %75
  %81 = uitofp i32 %79 to double
  br label %82

82:                                               ; preds = %33, %52, %80, %66
  %83 = phi double [ %67, %66 ], [ %81, %80 ], [ %53, %52 ], [ %37, %33 ]
  %84 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %26) #17
  store double %83, ptr %84, align 8, !tbaa !95
  br label %85

85:                                               ; preds = %82, %68, %72
  %86 = add nuw nsw i64 %26, 1
  %87 = icmp eq i64 %86, %21
  br i1 %87, label %22, label %25, !llvm.loop !122

88:                                               ; preds = %22
  %89 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str) #15
          to label %90 unwind label %96

90:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %8) #15
          to label %91 unwind label %98

91:                                               ; preds = %90
  invoke void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %7) #15
          to label %92 unwind label %100

92:                                               ; preds = %91
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  %93 = icmp ugt i32 %16, 1
  br i1 %93, label %94, label %149

94:                                               ; preds = %92
  %95 = and i64 %15, 4294967295
  br label %104

96:                                               ; preds = %151, %149, %147, %117, %88
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %172

98:                                               ; preds = %90
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %102

100:                                              ; preds = %91
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %99, %98 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  br label %172

104:                                              ; preds = %94, %112
  %105 = phi i64 [ 1, %94 ], [ %113, %112 ]
  %106 = add nsw i64 %105, -1
  %107 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %106) #17
  %108 = load double, ptr %107, align 8, !tbaa !95
  %109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %105) #17
  %110 = load double, ptr %109, align 8, !tbaa !95
  %111 = fdiv double %108, %110
  invoke void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, double noundef %111) #15
          to label %112 unwind label %115

112:                                              ; preds = %104
  %113 = add nuw nsw i64 %105, 1
  %114 = icmp eq i64 %113, %95
  br i1 %114, label %149, label %104, !llvm.loop !123

115:                                              ; preds = %104
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %172

117:                                              ; preds = %22
  %118 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3) #15
          to label %119 unwind label %96

119:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %10) #15
          to label %120 unwind label %125

120:                                              ; preds = %119
  invoke void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %9) #15
          to label %121 unwind label %127

121:                                              ; preds = %120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  %122 = icmp ugt i32 %16, 1
  br i1 %122, label %123, label %149

123:                                              ; preds = %121
  %124 = and i64 %15, 4294967295
  br label %131

125:                                              ; preds = %119
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %129

127:                                              ; preds = %120
  %128 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %126, %125 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  br label %172

131:                                              ; preds = %123, %142
  %132 = phi i64 [ 1, %123 ], [ %143, %142 ]
  %133 = add nsw i64 %132, -1
  %134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %133) #17
  %135 = load double, ptr %134, align 8, !tbaa !95
  %136 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIdSaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %132) #17
  %137 = load double, ptr %136, align 8, !tbaa !95
  %138 = fdiv double %135, %137
  %139 = call double @llvm.fabs.f64(double %138)
  %140 = call double @log(double noundef %139) #17
  %141 = fdiv double %140, 0x3FE62E42FEFA39EF
  invoke void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, double noundef %141) #15
          to label %142 unwind label %145

142:                                              ; preds = %131
  %143 = add nuw nsw i64 %132, 1
  %144 = icmp eq i64 %143, %124
  br i1 %144, label %149, label %131, !llvm.loop !124

145:                                              ; preds = %131
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %172

147:                                              ; preds = %22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 64, i1 false)
  invoke void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %11) #15
          to label %148 unwind label %96

148:                                              ; preds = %147
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %11) #17
  br label %149

149:                                              ; preds = %142, %112, %121, %92, %148, %22
  %150 = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
          to label %151 unwind label %96

151:                                              ; preds = %149
  %152 = getelementptr inbounds %"struct.dealii::TableHandler::Column", ptr %150, i64 0, i32 6
  store i32 1, ptr %152, align 8, !tbaa !101
  invoke void @_ZN6dealii12TableHandler13set_precisionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2) #15
          to label %153 unwind label %96

153:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %154 unwind label %164

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 2
  %156 = invoke noundef i64 @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_(ptr noundef nonnull align 8 dereferenceable(48) %155, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
          to label %157 unwind label %166

157:                                              ; preds = %154
  %158 = icmp eq i64 %156, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %157
  invoke void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
          to label %160 unwind label %166

160:                                              ; preds = %159
  %161 = invoke noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %162 unwind label %166

162:                                              ; preds = %160
  %163 = getelementptr inbounds %"struct.dealii::TableHandler::Column", ptr %161, i64 0, i32 1
  invoke void @_ZN6dealii12TableHandler20set_tex_supercaptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %163) #15
          to label %168 unwind label %166

164:                                              ; preds = %153
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %170

166:                                              ; preds = %168, %162, %160, %159, %154
  %167 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %170

168:                                              ; preds = %162, %157
  invoke void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
          to label %169 unwind label %166

169:                                              ; preds = %168
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  ret void

170:                                              ; preds = %166, %164
  %171 = phi { ptr, i32 } [ %167, %166 ], [ %165, %164 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  br label %172

172:                                              ; preds = %170, %145, %129, %115, %102, %96, %38
  %173 = phi { ptr, i32 } [ %39, %38 ], [ %171, %170 ], [ %97, %96 ], [ %146, %145 ], [ %130, %129 ], [ %116, %115 ], [ %103, %102 ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  br label %174

174:                                              ; preds = %172, %23
  %175 = phi { ptr, i32 } [ %173, %172 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  resume { ptr, i32 } %175
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !125 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  %4 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2) #15
          to label %7 unwind label %5

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  resume { ptr, i32 } %6

7:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions17ExcNotImplementedC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #15
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions17ExcNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !126
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii16ConvergenceTable44omit_column_from_convergence_rate_evaluationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 !prof !89 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1
  %5 = tail call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  store ptr %5, ptr %3, align 8
  %6 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %7 = getelementptr inbounds %"struct.std::pair", ptr %6, i64 0, i32 1, i32 6
  store i32 1, ptr %7, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !130
  %3 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii16ConvergenceTable30evaluate_all_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !89 {
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %8 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1
  %9 = tail call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #17
  store ptr %9, ptr %5, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %10 = call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #17
  store ptr %10, ptr %7, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %11 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br i1 %11, label %13, label %12

12:                                               ; preds = %20, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void

13:                                               ; preds = %3, %20
  %14 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %15 = getelementptr inbounds %"struct.std::pair", ptr %14, i64 0, i32 1, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @_ZN6dealii16ConvergenceTable26evaluate_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) #15
  br label %20

20:                                               ; preds = %13, %18
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %22 = call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #17
  store ptr %22, ptr %7, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %23 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br i1 %23, label %13, label %12, !llvm.loop !132
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = load ptr, ptr %1, align 8, !tbaa !130
  store ptr %3, ptr %0, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !133
  %4 = load ptr, ptr %1, align 8, !tbaa !133
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !133
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !133
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !133
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii16ConvergenceTable30evaluate_all_convergence_ratesENS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !89 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %7 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1
  %8 = tail call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  store ptr %8, ptr %4, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %9 = call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  store ptr %9, ptr %6, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  %10 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br i1 %10, label %12, label %11

11:                                               ; preds = %19, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void

12:                                               ; preds = %2, %19
  %13 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %14 = getelementptr inbounds %"struct.std::pair", ptr %13, i64 0, i32 1, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @_ZN6dealii16ConvergenceTable26evaluate_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, i32 noundef %1) #15
  br label %19

19:                                               ; preds = %12, %17
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %21 = call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  store ptr %21, ptr %6, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  %22 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br i1 %22, label %12, label %11, !llvm.loop !135
}

; Function Attrs: optsize
declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: nounwind optsize
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !136 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE11lower_boundERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11lower_boundERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !89 {
  %3 = load ptr, ptr %0, align 8, !tbaa !130
  %4 = load ptr, ptr %1, align 8, !tbaa !130
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnESt4lessIS5_ESaISt4pairIKS5_S8_EEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !89 {
  tail call void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 !prof !137 {
  %4 = tail call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(136) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !130
  %3 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(168) %2) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEERSH_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  %8 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
          to label %9 unwind label %18

9:                                                ; preds = %5
  %10 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %8) #15
          to label %11 unwind label %18

11:                                               ; preds = %9
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = extractvalue { ptr, ptr } %10, 1
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSK_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %12, ptr nonnull %13) #15
          to label %17 unwind label %18

17:                                               ; preds = %15
  store ptr %16, ptr %6, align 8
  br label %21

18:                                               ; preds = %15, %9, %5
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  resume { ptr, i32 } %19

20:                                               ; preds = %11
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %12) #17
  br label %21

21:                                               ; preds = %20, %17
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  %22 = load ptr, ptr %6, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS7_EEEbE4typeELb1EEES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  invoke void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11lower_boundERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %5 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef nonnull %8) #15
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #17
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #17
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !138

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #17
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Select1st", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #15
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEclERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(136) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !89 {
  store ptr %1, ptr %0, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEclERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(136) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !137 {
  %3 = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
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
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !145 {
  %3 = load i64, ptr %1, align 8, !tbaa !146
  %4 = load i64, ptr %0, align 8, !tbaa !146
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !147
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(136) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_IJEEEEERSH_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !90
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  store ptr %7, ptr %6, align 8, !tbaa !148
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %4 = alloca %"struct.std::pair.32", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %14 = call ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  store ptr %14, ptr %6, align 8
  %15 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %16 = icmp eq ptr %14, %15
  %17 = ptrtoint ptr %14 to i64
  br i1 %16, label %18, label %33

18:                                               ; preds = %3
  %19 = call noundef i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %23) #15
  %25 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !90
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %27) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %89

28:                                               ; preds = %21, %18
  %29 = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %30 = extractvalue { ptr, ptr } %29, 0
  store ptr %30, ptr %4, align 8
  %31 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %32 = extractvalue { ptr, ptr } %29, 1
  store ptr %32, ptr %31, align 8
  br label %89

33:                                               ; preds = %3
  %34 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %14) #15
  %35 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %34) #15
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store i64 %17, ptr %8, align 8, !tbaa !90
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = icmp eq ptr %38, %14
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %42) #15
  br label %59

43:                                               ; preds = %36
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %45 = load ptr, ptr %44, align 8, !tbaa !130
  %46 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %45) #15
  %47 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load ptr, ptr %8, align 8, !tbaa !130
  %50 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %49) #17
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store ptr null, ptr %9, align 8, !tbaa !90
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %59

53:                                               ; preds = %48
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  br label %59

54:                                               ; preds = %43
  %55 = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %56 = extractvalue { ptr, ptr } %55, 0
  store ptr %56, ptr %4, align 8
  %57 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %58 = extractvalue { ptr, ptr } %55, 1
  store ptr %58, ptr %57, align 8
  br label %59

59:                                               ; preds = %54, %53, %52, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %89

60:                                               ; preds = %33
  %61 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %14) #15
  %62 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %64 = load i64, ptr %6, align 8, !tbaa !90
  store i64 %64, ptr %10, align 8, !tbaa !90
  %65 = inttoptr i64 %64 to ptr
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %67 = load ptr, ptr %66, align 8, !tbaa !90
  %68 = icmp eq ptr %67, %65
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store ptr null, ptr %11, align 8, !tbaa !90
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %70) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %87

71:                                               ; preds = %63
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %73 = load ptr, ptr %72, align 8, !tbaa !130
  %74 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %73) #15
  %75 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %74) #15
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load ptr, ptr %6, align 8, !tbaa !130
  %78 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %77) #17
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store ptr null, ptr %12, align 8, !tbaa !90
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %87

81:                                               ; preds = %76
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %10) #15
  br label %87

82:                                               ; preds = %71
  %83 = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %84 = extractvalue { ptr, ptr } %83, 0
  store ptr %84, ptr %4, align 8
  %85 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %86 = extractvalue { ptr, ptr } %83, 1
  store ptr %86, ptr %85, align 8
  br label %87

87:                                               ; preds = %82, %81, %80, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %89

88:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  store ptr null, ptr %13, align 8, !tbaa !90
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %89

89:                                               ; preds = %88, %87, %59, %28, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %90 = load ptr, ptr %4, align 8
  %91 = insertvalue { ptr, ptr } poison, ptr %90, 0
  %92 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = insertvalue { ptr, ptr } %91, ptr %93, 1
  ret { ptr, ptr } %94
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSK_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !150
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSJ_PSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2, ptr noundef %6) #15
  store ptr null, ptr %5, align 8, !tbaa !148
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !150
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE8allocateERSE_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %7 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #15
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESK_IJEEEEEvRSE_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
          to label %14 unwind label %8

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = tail call ptr @__cxa_begin_catch(ptr %10) #16
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) #17
  invoke void @__cxa_rethrow() #22
          to label %19 unwind label %12

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %15 unwind label %16

14:                                               ; preds = %5
  ret void

15:                                               ; preds = %12
  resume { ptr, i32 } %13

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #19
  unreachable

19:                                               ; preds = %8
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE8allocateERSE_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !151

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 109802048057794950
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 168
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  ret i64 54901024028897475
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESK_IJEEEEEvRSE_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE10deallocateERSE_PSD_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #15
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

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
  %6 = alloca %"class.std::tuple", align 8
  call void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  tail call void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %"class.std::tuple.31", align 1
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSD_IJDpT1_EESt12_Index_tupleIJXspT0_EEESM_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
  %3 = load i64, ptr %1, align 8, !tbaa !90
  store i64 %3, ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSD_IJDpT1_EESt12_Index_tupleIJXspT0_EEESM_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #15
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  invoke void @_ZN6dealii12TableHandler6ColumnC1Ev(ptr noundef nonnull align 8 dereferenceable(100) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN6dealii12TableHandler6ColumnC1Ev(ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !152
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE10deallocateERSE_PSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE10deallocateEPSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE10deallocateEPSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !133
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !154
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %4, ptr %0, align 8, !tbaa !155
  %5 = getelementptr inbounds %"struct.std::pair.32", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !90
  store ptr %6, ptr %5, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = alloca %"struct.std::pair.32", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %10, ptr %5, align 8, !tbaa !90
  %11 = icmp eq ptr %9, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %21, %20 ], [ %9, %2 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef nonnull %13) #15
  %15 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %14) #15
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #17
  br label %20

18:                                               ; preds = %12
  %19 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #17
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !158

23:                                               ; preds = %20
  store ptr %13, ptr %5, align 8, !tbaa !90
  store ptr null, ptr %4, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %13) #17
  br i1 %15, label %25, label %31

24:                                               ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %10) #17
  br label %25

25:                                               ; preds = %24, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %26 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %26, ptr %7, align 8
  %27 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %37

29:                                               ; preds = %25
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %31

31:                                               ; preds = %29, %23
  %32 = load ptr, ptr %6, align 8, !tbaa !130
  %33 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %32) #15
  %34 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %37

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !90
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %37

37:                                               ; preds = %36, %35, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %38 = load ptr, ptr %3, align 8
  %39 = insertvalue { ptr, ptr } poison, ptr %38, 0
  %40 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = insertvalue { ptr, ptr } %39, ptr %41, 1
  ret { ptr, ptr } %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %4, ptr %0, align 8, !tbaa !155
  %5 = getelementptr inbounds %"struct.std::pair.32", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !90
  store ptr %6, ptr %5, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !130
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !130
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !130
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !130
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #17
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %4, ptr %0, align 8, !tbaa !155
  %5 = getelementptr inbounds %"struct.std::pair.32", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !90
  store ptr %6, ptr %5, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSJ_PSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %3) #15
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #15
  %13 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
  br label %14

14:                                               ; preds = %10, %7, %4
  %15 = phi i1 [ true, %7 ], [ true, %4 ], [ %13, %10 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %15, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %16) #17
  %17 = getelementptr inbounds i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !154
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !154
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %3) #17
  %20 = load ptr, ptr %5, align 8
  ret ptr %20
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #17
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(168) %1) #15
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE7destroyISC_EEvRSE_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEEE7destroyISC_EEvRSE_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE7destroyISC_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEE7destroyISC_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  tail call void @_ZN6dealii12TableHandler6ColumnD1Ev(ptr noundef nonnull align 8 dereferenceable(100) %2) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN6dealii12TableHandler6ColumnD1Ev(ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !160 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !161 {
  %3 = alloca %"class.std::allocator.23", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  %4 = call noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br i1 %5, label %6, label %7, !prof !162

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !163 {
  tail call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  invoke void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !117
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = load ptr, ptr %0, align 8, !tbaa !117
  %3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !165 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  store i64 %4, ptr %3, align 8, !tbaa !146
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %6 = load i64, ptr %5, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !166 {
  tail call void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !165 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !167 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !166 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !168 {
  tail call void @_ZNSaIdEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  tail call void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !163 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #15
  store ptr %3, ptr %0, align 8, !tbaa !117
  %4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !121
  %5 = getelementptr inbounds double, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !169 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !170 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !171 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !172

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #15
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIdE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !151

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !173 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) #15
  %5 = getelementptr inbounds double, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIdJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #3 comdat {
  store double 0.000000e+00, ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !174 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !90
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #15
  call void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %6 = call noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !174 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !175

5:                                                ; preds = %3
  %6 = getelementptr inbounds double, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #3 comdat !prof !176 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !177 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPddEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !178 {
  tail call void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat !prof !179 {
  %4 = load double, ptr %2, align 8, !tbaa !95
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !180

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store double %4, ptr %7, align 8, !tbaa !95
  %8 = getelementptr inbounds double, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !181, !llvm.loop !182

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !183 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !184

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIdE10deallocateEPdm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #21
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !183 {
  tail call void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !183 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !183 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard.35, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  store i64 %6, ptr %4, align 8, !tbaa !146
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #15
  %10 = load i64, ptr %4, align 8, !tbaa !146
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #15
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #17
  store ptr null, ptr %5, align 8, !tbaa !185
  %15 = load i64, ptr %4, align 8, !tbaa !146
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #15
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !89 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !90
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !89 {
  store ptr %1, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
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
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !89 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !89 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !187 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = load ptr, ptr %1, align 8, !tbaa !188
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator.36", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator.36", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %6 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %7 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %8 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br i1 %9, label %14, label %10, !prof !190

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !188
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %11) #15
  %13 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
  br i1 %13, label %14, label %16, !prof !191

14:                                               ; preds = %10, %2
  %15 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !112
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !192 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator.36", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 !prof !119 {
  %5 = alloca %"struct.std::_Rb_tree_const_iterator.36", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7, !prof !193

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef nonnull %8) #15
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  br i1 %11, label %14, label %12, !prof !194

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef nonnull %8) #17
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef nonnull %8) #17
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !195, !llvm.loop !196

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #17
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !197 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Select1st.39", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #15
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEclERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !198 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !199 {
  store ptr %1, ptr %0, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEclERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #3 comdat align 2 !prof !200 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #3 comdat align 2 !prof !201 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node.37", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !89 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %7 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %8 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !130
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %11) #15
  %13 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %12) #15
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !112
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(read) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { noreturn optsize }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { builtin nounwind optsize }
attributes #22 = { noreturn }
attributes #23 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!88}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!35 = !{ptr @_ZNSaIdEC2Ev, ptr @_ZNSt15__new_allocatorIdEC2Ev, i64 9261343}
!36 = !{ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, i64 2}
!37 = !{ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv, i64 2}
!38 = !{ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS5_SaIS5_EESt4lessIS5_ESaISt4pairIKS5_S8_EEE5countERSC_, ptr @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEESE_, i64 2}
!39 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, i64 10618017}
!40 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, i64 10618017}
!41 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, i64 10618007}
!42 = !{ptr @_ZNSt6vectorIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!43 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 755}
!44 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 755}
!45 = !{ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, i64 6961}
!46 = !{ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_, i64 6961}
!47 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSaIdEC2ERKS_, i64 1376905}
!48 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, i64 1376905}
!49 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 1376905}
!50 = !{ptr @_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!51 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, i64 2733627}
!52 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, i64 2733627}
!53 = !{ptr @_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 3}
!54 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, i64 10618017}
!55 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @_ZNSt15__new_allocatorIdED2Ev, i64 10618007}
!56 = !{ptr @_ZNSt12_Vector_baseIdSaIdEED2Ev, ptr @__clang_call_terminate, i64 10}
!57 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, i64 12982610}
!58 = !{ptr @_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 12982610}
!59 = !{ptr @_ZNSaIdEC2ERKS_, ptr @_ZNSt15__new_allocatorIdEC2ERKS0_, i64 4110539}
!60 = !{ptr @_ZNKSt15__new_allocatorIdE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIdE11_M_max_sizeEv, i64 12982610}
!61 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSaIdEC2ERKS_, i64 2733634}
!62 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, i64 2733634}
!63 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, i64 2733627}
!64 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, i64 8354784}
!65 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 7178069}
!66 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 7178069}
!67 = !{ptr @_ZSt6fill_nIPdmdET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, i64 7178069}
!68 = !{ptr @_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, i64 6994789}
!69 = !{ptr @_ZSt8__fill_aIPddEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 25807262}
!70 = !{ptr @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, ptr @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, i64 8354765}
!71 = !{ptr @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPdEvT_S1_, i64 16422537}
!72 = !{ptr @_ZSt8_DestroyIPdEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, i64 16422537}
!73 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_beginEv, i64 2}
!74 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_M_endEv, i64 2}
!75 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, i64 2}
!76 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv, i64 4}
!77 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEESE_, i64 2}
!78 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 1}
!79 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 1}
!80 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE3endEv, ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEC2EPKSt18_Rb_tree_node_base, i64 5}
!81 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E, i64 3}
!82 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 3}
!83 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE7_S_leftEPKSt18_Rb_tree_node_base, i64 1}
!84 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_S_rightEPKSt18_Rb_tree_node_base, i64 2}
!85 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEC2EPKSt18_Rb_tree_node_base, i64 2}
!86 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E, i64 9}
!87 = !{ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE9_M_valptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE6_M_ptrEv, i64 20}
!88 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!89 = !{!"function_entry_count", i64 0}
!90 = !{!91, !91, i64 0}
!91 = !{!"any pointer", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C++ TBAA"}
!94 = !{}
!95 = !{!96, !96, i64 0}
!96 = !{!"double", !92, i64 0}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = !{!102, !110, i64 96}
!102 = !{!"_ZTSN6dealii12TableHandler6ColumnE", !103, i64 0, !107, i64 24, !107, i64 56, !110, i64 88, !111, i64 92, !110, i64 96}
!103 = !{!"_ZTSSt6vectorIPN6dealii14TableEntryBaseESaIS2_EE", !104, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIPN6dealii14TableEntryBaseESaIS2_EE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIPN6dealii14TableEntryBaseESaIS2_EE12_Vector_implE", !106, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIPN6dealii14TableEntryBaseESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!107 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !108, i64 0, !109, i64 8, !92, i64 16}
!108 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !91, i64 0}
!109 = !{!"long", !92, i64 0}
!110 = !{!"int", !92, i64 0}
!111 = !{!"bool", !92, i64 0}
!112 = !{i64 0, i64 8, !90}
!113 = !{!106, !91, i64 8}
!114 = !{!106, !91, i64 0}
!115 = !{!"function_entry_count", i64 9261343}
!116 = !{!"function_entry_count", i64 580699156}
!117 = !{!118, !91, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!119 = !{!"function_entry_count", i64 2}
!120 = !{!"function_entry_count", i64 10618017}
!121 = !{!118, !91, i64 8}
!122 = distinct !{!122, !98}
!123 = distinct !{!123, !98}
!124 = distinct !{!124, !98}
!125 = !{!"function_entry_count", i64 755}
!126 = !{!127, !127, i64 0}
!127 = !{!"vtable pointer", !93, i64 0}
!128 = !{!129, !110, i64 128}
!129 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEE", !107, i64 0, !102, i64 32}
!130 = !{!131, !91, i64 0}
!131 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE", !91, i64 0}
!132 = distinct !{!132, !98}
!133 = !{!134, !91, i64 0}
!134 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEEE", !91, i64 0}
!135 = distinct !{!135, !98}
!136 = !{!"function_entry_count", i64 67805}
!137 = !{!"function_entry_count", i64 6961}
!138 = distinct !{!138, !98}
!139 = !{!140, !91, i64 16}
!140 = !{!"_ZTSSt18_Rb_tree_node_base", !141, i64 0, !91, i64 8, !91, i64 16, !91, i64 24}
!141 = !{!"_ZTSSt14_Rb_tree_color", !92, i64 0}
!142 = !{!140, !91, i64 24}
!143 = !{!144, !91, i64 8}
!144 = !{!"_ZTSSt15_Rb_tree_header", !140, i64 0, !109, i64 32}
!145 = !{!"function_entry_count", i64 34204152}
!146 = !{!109, !109, i64 0}
!147 = !{!"branch_weights", i32 1, i32 34204153}
!148 = !{!149, !91, i64 8}
!149 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_Auto_nodeE", !91, i64 0, !91, i64 8}
!150 = !{!149, !91, i64 0}
!151 = !{!"branch_weights", i32 1, i32 2000}
!152 = !{!153, !91, i64 0}
!153 = !{!"_ZTSSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !91, i64 0}
!154 = !{!144, !109, i64 32}
!155 = !{!156, !91, i64 0}
!156 = !{!"_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E", !91, i64 0, !91, i64 8}
!157 = !{!156, !91, i64 8}
!158 = distinct !{!158, !98}
!159 = !{!144, !91, i64 16}
!160 = !{!"function_entry_count", i64 9278493}
!161 = !{!"function_entry_count", i64 1376905}
!162 = !{!"branch_weights", i32 1, i32 1376906}
!163 = !{!"function_entry_count", i64 2733627}
!164 = !{!118, !91, i64 16}
!165 = !{!"function_entry_count", i64 12982610}
!166 = !{!"function_entry_count", i64 4110539}
!167 = !{!"function_entry_count", i64 21337395}
!168 = !{!"function_entry_count", i64 2733634}
!169 = !{!"function_entry_count", i64 13389012}
!170 = !{!"function_entry_count", i64 10618037}
!171 = !{!"function_entry_count", i64 8538154}
!172 = !{!"branch_weights", i32 183370, i32 8354786}
!173 = !{!"function_entry_count", i64 42627443}
!174 = !{!"function_entry_count", i64 7178069}
!175 = !{!"branch_weights", i32 183280, i32 6994791}
!176 = !{!"function_entry_count", i64 16082259}
!177 = !{!"function_entry_count", i64 32608285}
!178 = !{!"function_entry_count", i64 25807262}
!179 = !{!"function_entry_count", i64 25820050}
!180 = !{!"branch_weights", i32 1, i32 4303341}
!181 = !{!"branch_weights", i32 4303341, i32 -542009222}
!182 = distinct !{!182, !98}
!183 = !{!"function_entry_count", i64 16422537}
!184 = !{!"branch_weights", i32 8067773, i32 8354766}
!185 = !{!186, !91, i64 0}
!186 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !91, i64 0}
!187 = !{!"function_entry_count", i64 4}
!188 = !{!189, !91, i64 0}
!189 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEE", !91, i64 0}
!190 = !{!"branch_weights", i32 2, i32 2}
!191 = !{!"branch_weights", i32 -1, i32 1}
!192 = !{!"function_entry_count", i64 5}
!193 = !{!"branch_weights", i32 1, i32 191}
!194 = !{!"branch_weights", i32 3, i32 2}
!195 = !{!"branch_weights", i32 191, i32 65}
!196 = distinct !{!196, !98}
!197 = !{!"function_entry_count", i64 9}
!198 = !{!"function_entry_count", i64 1}
!199 = !{!"function_entry_count", i64 7}
!200 = !{!"function_entry_count", i64 30}
!201 = !{!"function_entry_count", i64 20}
