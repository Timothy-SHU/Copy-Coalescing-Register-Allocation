; ModuleID = 'source/base/log.cc'
source_filename = "source/base/log.cc"
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
%"class.std::ios_base::Init" = type { i8 }
%"class.dealii::LogStream" = type { %"class.std::stack", ptr, ptr, i32, i32, i8, i8, double, double, i8, ptr, %"class.std::map" }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.dealii::Threads::DummyThreadMutex" = type { i8 }
%"class.dealii::JobIdentifier" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::allocator.19" = type { i8 }
%"class.dealii::Threads::DummyThreadMutex::ScopedLock" = type { i8 }
%"class.boost::shared_ptr" = type { ptr, %"class.boost::detail::shared_count" }
%"class.boost::detail::shared_count" = type { ptr }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.27" = type { i8 }
%"struct.std::pair" = type { i32, %"class.boost::shared_ptr" }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [24 x i8] }
%"class.std::allocator.22" = type { i8 }
%"class.boost::detail::sp_counted_base" = type { ptr, i64, i64 }
%struct._Guard.25 = type { ptr }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::pair.28" = type { ptr, ptr }
%"class.boost::detail::sp_counted_impl_p" = type { %"class.boost::detail::sp_counted_base", ptr }
%"struct.std::_Deque_iterator.31" = type { ptr, ptr, ptr, ptr }

$_ZN5boost3argILi1EEC2Ev = comdat any

$_ZN5boost3argILi2EEC2Ev = comdat any

$_ZN5boost3argILi3EEC2Ev = comdat any

$_ZN5boost3argILi4EEC2Ev = comdat any

$_ZN5boost3argILi5EEC2Ev = comdat any

$_ZN5boost3argILi6EEC2Ev = comdat any

$_ZN5boost3argILi7EEC2Ev = comdat any

$_ZN5boost3argILi8EEC2Ev = comdat any

$_ZN5boost3argILi9EEC2Ev = comdat any

$_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv = comdat any

$_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEC2Ev = comdat any

$_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushEOS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt8ios_base4setfESt13_Ios_Fmtflags = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEED2Ev = comdat any

$_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6dealii9LogStream5printIPFRSoS2_EEEvRKT_ = comdat any

$_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_ = comdat any

$_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv = comdat any

$_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev = comdat any

$_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_ = comdat any

$_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEcvMS7_PS6_Ev = comdat any

$_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2IS6_EEPT_ = comdat any

$_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEaSERKS7_ = comdat any

$_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEptEv = comdat any

$_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEdeEv = comdat any

$_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv = comdat any

$_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv = comdat any

$_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushERKS5_ = comdat any

$_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZN6dealii17MemoryConsumption18memory_consumptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EEC2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE13_Rb_tree_implISF_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessIjEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EED2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEED2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE7destroyISC_EEvRSE_PT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE7destroyISC_EEvPT_ = comdat any

$_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE10deallocateERSE_PSD_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE10deallocateEPSD_m = comdat any

$_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE9_M_mbeginEv = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_ = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_buffer_sizeEv = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_ = comdat any

$_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_ = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_ = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE18_M_deallocate_nodeEPS5_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m = comdat any

$_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_get_map_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS7_PS6_m = comdat any

$_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS4_EERKSaIT_E = comdat any

$_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m = comdat any

$_ZN5boost6detail12shared_countD2Ev = comdat any

$_ZN5boost6detail15sp_counted_base7releaseEv = comdat any

$_ZN5boost6detail15sp_counted_base12weak_releaseEv = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2Ev = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_ = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_ = comdat any

$_ZNSt16allocator_traitsISaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS7_m = comdat any

$_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_ = comdat any

$_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv = comdat any

$_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm = comdat any

$_ZStmiRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_ESA_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_ = comdat any

$_ZSt13copy_backwardIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_ = comdat any

$_ZSt13__copy_move_aILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt12__miter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS8_S8_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt12__niter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_PKSA_SD_SB_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_PKSA_SD_SB_ = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EmmEv = comdat any

$_ZNKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EdeEv = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE11lower_boundERSC_ = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEESE_ = comdat any

$_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE3endEv = comdat any

$_ZNKSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE8key_compEv = comdat any

$_ZNKSt4lessIjEclERKjS2_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEdeEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2ERKSt17_Rb_tree_iteratorISB_E = comdat any

$_ZNSt5tupleIJRKjEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS1_EEEbE4typeELb1EEES1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11lower_boundERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEclERKSB_ = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE7_M_addrEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE3endEv = comdat any

$_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8key_compEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_ = comdat any

$_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_node6_M_keyEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSK_E = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEEPSt13_Rb_tree_nodeISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE8allocateERSE_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS2_EESK_IJEEEEEvRSE_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS2_EESJ_IJEEEEEvPT_DpOT0_ = comdat any

$_ZNSt5tupleIJRKjEEC2EOS2_ = comdat any

$_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKjEEC2EOS2_ = comdat any

$_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEC2IJRS0_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSD_IJDpT1_EESt12_Index_tupleIJXspT0_EEESM_IJXspT2_EEE = comdat any

$_ZSt3getILm0EJRKjEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_ = comdat any

$_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2Ev = comdat any

$_ZSt12__get_helperILm0ERKjJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKjEE7_M_headERS2_ = comdat any

$_ZNSt10_Head_baseILm0ERKjLb0EE7_M_headERS2_ = comdat any

$_ZN5boost6detail12shared_countC2Ev = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE4sizeEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_leftmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEppEv = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSJ_PSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt11_Tuple_implILm0EJRKjEEC2ES1_ = comdat any

$_ZNSt10_Head_baseILm0ERKjLb0EEC2ES1_ = comdat any

$_ZN5boost6detail12shared_countC2INSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEPT_ = comdat any

$_ZN5boost6detail26sp_enable_shared_from_thisERKNS0_12shared_countEz = comdat any

$_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2EPS7_ = comdat any

$_ZN5boost14checked_deleteINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEvPT_ = comdat any

$_ZN5boost6detail15sp_counted_baseC2Ev = comdat any

$_ZN5boost6detail15sp_counted_baseD2Ev = comdat any

$_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED0Ev = comdat any

$_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE7disposeEv = comdat any

$_ZN5boost6detail15sp_counted_base7destroyEv = comdat any

$_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE11get_deleterERKSt9type_info = comdat any

$_ZN5boost6detail15sp_counted_baseD0Ev = comdat any

$_ZN5boost6detail12shared_countaSERKS1_ = comdat any

$_ZN5boost6detail15sp_counted_base12add_ref_copyEv = comdat any

$_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv = comdat any

$_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EmmEv = comdat any

$_ZNKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EdeEv = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EC2IS_IS5_RS5_PS5_EvEERKT_ = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E11_M_set_nodeEPPS5_ = comdat any

$_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_ = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_ = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRKS5_EEEvPT_DpOT0_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv = comdat any

$_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_pop_back_auxEv = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_ = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTSN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTSN5boost6detail15sp_counted_baseE = comdat any

$_ZTIN5boost6detail15sp_counted_baseE = comdat any

$_ZTIN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTVN5boost6detail15sp_counted_baseE = comdat any

@_ZN12_GLOBAL__N_12_1E = internal global %"struct.boost::arg" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_2E = internal global %"struct.boost::arg.0" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_3E = internal global %"struct.boost::arg.2" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_4E = internal global %"struct.boost::arg.4" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_5E = internal global %"struct.boost::arg.6" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_6E = internal global %"struct.boost::arg.8" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_7E = internal global %"struct.boost::arg.10" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_8E = internal global %"struct.boost::arg.12" zeroinitializer, align 1
@_ZN12_GLOBAL__N_12_9E = internal global %"struct.boost::arg.14" zeroinitializer, align 1
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN6dealii7deallogE = dso_local global %"class.dealii::LogStream" zeroinitializer, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [6 x i8] c"DEAL:\00", align 1
@_ZN6dealii12_GLOBAL__N_110write_lockE = internal global %"class.dealii::Threads::DummyThreadMutex" zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN6dealii12_GLOBAL__N_18log_lockE = internal global %"class.dealii::Threads::DummyThreadMutex" zeroinitializer, align 1
@_ZN6dealii9dealjobidE = external global %"class.dealii::JobIdentifier", align 8
@.str.12 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN5boost6detail15sp_counted_baseD2Ev, ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE7disposeEv, ptr @_ZN5boost6detail15sp_counted_base7destroyEv, ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE11get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant [96 x i8] c"N5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5boost6detail15sp_counted_baseE = linkonce_odr dso_local constant [33 x i8] c"N5boost6detail15sp_counted_baseE\00", comdat, align 1
@_ZTIN5boost6detail15sp_counted_baseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost6detail15sp_counted_baseE }, comdat, align 8
@_ZTIN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN5boost6detail15sp_counted_baseE }, comdat, align 8
@_ZTVN5boost6detail15sp_counted_baseE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5boost6detail15sp_counted_baseE, ptr @_ZN5boost6detail15sp_counted_baseD2Ev, ptr @_ZN5boost6detail15sp_counted_baseD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN5boost6detail15sp_counted_base7destroyEv, ptr @__cxa_pure_virtual] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_log.cc, ptr null }]

@_ZN6dealii9LogStreamC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9LogStreamC2Ev
@_ZN6dealii9LogStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9LogStreamD2Ev

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi1EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_1E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi1EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi2EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_2E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi2EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi3EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_3E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi3EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi4EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_4E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi4EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi5EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_5E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi5EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.5() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi6EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_6E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi6EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.6() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi7EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_7E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi7EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.7() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi8EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_8E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi8EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.8() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN5boost3argILi9EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_12_9E) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost3argILi9EEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.9() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #18
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.10() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZN6dealii9LogStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE) #18
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6dealii9LogStreamD2Ev, ptr nonnull @_ZN6dealii7deallogE, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii9LogStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = alloca %"class.std::allocator.19", align 1
  tail call void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  store ptr @_ZSt4cerr, ptr %4, align 8, !tbaa !230
  %5 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !253
  %6 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 3
  store i32 10000, ptr %6, align 8, !tbaa !254
  %7 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 4
  store i32 10000, ptr %7, align 4, !tbaa !255
  %8 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 5
  store i8 0, ptr %8, align 8, !tbaa !256
  %9 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 6
  store i8 0, ptr %9, align 1, !tbaa !257
  %10 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 7
  %11 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 10
  store ptr null, ptr %11, align 8, !tbaa !258
  %12 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  tail call void @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %13 unwind label %23

13:                                               ; preds = %1
  invoke void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushEOS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
          to label %14 unwind label %25

14:                                               ; preds = %13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  %15 = load ptr, ptr %4, align 8, !tbaa !230
  %16 = load ptr, ptr %15, align 8, !tbaa !259
  %17 = getelementptr i8, ptr %16, i64 -24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  %20 = call noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef 1024, i32 noundef 32) #18
  %21 = invoke noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %19, i32 noundef %20) #18
          to label %22 unwind label %29

22:                                               ; preds = %14
  ret void

23:                                               ; preds = %1
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %13
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  br label %31

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  call void @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #20
  call void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  resume { ptr, i32 } %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !229 {
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushEOS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.14) #21
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %3 = getelementptr inbounds %"class.std::ios_base", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !262
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZStoRRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %1) #18
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 comdat !prof !268 {
  %3 = or i32 %1, %0
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii9LogStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !259
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %8
  %10 = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %9, ptr noundef nonnull %3) #18
          to label %11 unwind label %13

11:                                               ; preds = %5, %1
  %12 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11
  tail call void @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #20
  tail call void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull returned align 8 dereferenceable(192) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !270 {
  %3 = alloca ptr, align 8
  %4 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator.19", align 1
  store ptr %1, ptr %3, align 8, !tbaa !271
  call void @_ZN6dealii9LogStream5printIPFRSoS2_EEEvRKT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !271
  %10 = icmp eq ptr %9, @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  br i1 %10, label %11, label %70, !prof !272

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_110write_lockE) #18
  invoke void @_ZN6dealii9LogStream15print_line_headEv(ptr noundef nonnull align 8 dereferenceable(192) %0) #18
          to label %12 unwind label %26

12:                                               ; preds = %11
  %13 = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #18
          to label %14 unwind label %28

14:                                               ; preds = %12
  %15 = call noundef i64 @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  %16 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !254
  %18 = zext i32 %17 to i64
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %36, label %20, !prof !272

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %13) #18
          to label %23 unwind label %30

23:                                               ; preds = %20
  %24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %25 unwind label %32

25:                                               ; preds = %23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %36

26:                                               ; preds = %11
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %68

28:                                               ; preds = %12
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %68

30:                                               ; preds = %20
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %34

32:                                               ; preds = %23
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %68

36:                                               ; preds = %25, %14
  %37 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !253
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40, !prof !272

40:                                               ; preds = %36
  %41 = call noundef i64 @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  %42 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !255
  %44 = zext i32 %43 to i64
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %59, label %46

46:                                               ; preds = %40
  %47 = load ptr, ptr %37, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #19
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %13) #18
          to label %48 unwind label %53

48:                                               ; preds = %46
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
          to label %50 unwind label %55

50:                                               ; preds = %48
  %51 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) #18
          to label %52 unwind label %55

52:                                               ; preds = %50
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  br label %59

53:                                               ; preds = %46
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %57

55:                                               ; preds = %50, %48
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #20
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #19
  br label %68

59:                                               ; preds = %52, %40, %36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %8) #18
          to label %60 unwind label %62

60:                                               ; preds = %59
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(112) %13, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
          to label %61 unwind label %64

61:                                               ; preds = %60
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  br label %70

62:                                               ; preds = %59
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %66

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #20
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi { ptr, i32 } [ %65, %64 ], [ %63, %62 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %8) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  br label %68

68:                                               ; preds = %28, %34, %57, %66, %26
  %69 = phi { ptr, i32 } [ %27, %26 ], [ %67, %66 ], [ %58, %57 ], [ %35, %34 ], [ %29, %28 ]
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  resume { ptr, i32 } %69

70:                                               ; preds = %61, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii9LogStream5printIPFRSoS2_EEEvRKT_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !270 {
  %3 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #18
  %4 = load ptr, ptr %1, align 8, !tbaa !271
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !273 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii9LogStream15print_line_headEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #6 align 2 !prof !270 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii9LogStream10get_prefixB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #18
  %3 = tail call noundef i32 @_ZN6dealii7Threads14this_thread_idEv() #18
  %4 = tail call noundef i64 @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  %5 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !254
  %7 = zext i32 %6 to i64
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %47, label %9, !prof !272

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 5
  %11 = load i8, ptr %10, align 8, !tbaa !256, !range !274, !noundef !275
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !230
  %16 = load ptr, ptr %15, align 8, !tbaa !259
  %17 = getelementptr i8, ptr %16, i64 -24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  %20 = tail call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %19, i64 noundef 5) #18
  %21 = load ptr, ptr %14, align 8, !tbaa !230
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %21, double noundef 0.000000e+00) #18
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %22, i8 noundef signext 58) #18
  %24 = load ptr, ptr %14, align 8, !tbaa !230
  %25 = load ptr, ptr %24, align 8, !tbaa !259
  %26 = getelementptr i8, ptr %25, i64 -24
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = shl i64 %20, 32
  %30 = ashr exact i64 %29, 32
  %31 = tail call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %28, i64 noundef %30) #18
  br label %32

32:                                               ; preds = %13, %9
  %33 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 9
  %34 = load i8, ptr %33, align 8, !tbaa !276, !range !274, !noundef !275
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !230
  %39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %38, i8 noundef signext 91) #18
  %40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef %3) #18
  %41 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %40, i8 noundef signext 93) #18
  br label %42

42:                                               ; preds = %36, %32
  %43 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !230
  %45 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %46 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %45, i8 noundef signext 58) #18
  br label %47

47:                                               ; preds = %42, %1
  %48 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !253
  %50 = icmp eq ptr %49, null
  br i1 %50, label %92, label %51, !prof !272

51:                                               ; preds = %47
  %52 = tail call noundef i64 @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  %53 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 4
  %54 = load i32, ptr %53, align 4, !tbaa !255
  %55 = zext i32 %54 to i64
  %56 = icmp ugt i64 %52, %55
  br i1 %56, label %92, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 5
  %59 = load i8, ptr %58, align 8, !tbaa !256, !range !274, !noundef !275
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %48, align 8, !tbaa !253
  %63 = load ptr, ptr %62, align 8, !tbaa !259
  %64 = getelementptr i8, ptr %63, i64 -24
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = tail call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %66, i64 noundef 6) #18
  %68 = load ptr, ptr %48, align 8, !tbaa !253
  %69 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8) %68, double noundef 0.000000e+00) #18
  %70 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %69, i8 noundef signext 58) #18
  %71 = load ptr, ptr %48, align 8, !tbaa !253
  %72 = load ptr, ptr %71, align 8, !tbaa !259
  %73 = getelementptr i8, ptr %72, i64 -24
  %74 = load i64, ptr %73, align 8
  %75 = getelementptr inbounds i8, ptr %71, i64 %74
  %76 = shl i64 %67, 32
  %77 = ashr exact i64 %76, 32
  %78 = tail call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %75, i64 noundef %77) #18
  br label %79

79:                                               ; preds = %61, %57
  %80 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 9
  %81 = load i8, ptr %80, align 8, !tbaa !276, !range !274, !noundef !275
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %48, align 8, !tbaa !253
  %85 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %84, i8 noundef signext 91) #18
  %86 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) %85, i32 noundef %3) #18
  %87 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %86, i8 noundef signext 93) #18
  br label %88

88:                                               ; preds = %83, %79
  %89 = load ptr, ptr %48, align 8, !tbaa !253
  %90 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %91 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %90, i8 noundef signext 58) #18
  br label %92

92:                                               ; preds = %88, %51, %47
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !277 {
  %2 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %3 = alloca i32, align 4
  %4 = alloca %"class.boost::shared_ptr", align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %5 = invoke noundef i32 @_ZN6dealii7Threads14this_thread_idEv() #18
          to label %6 unwind label %26

6:                                                ; preds = %1
  store i32 %5, ptr %3, align 4, !tbaa !278
  %7 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11
  %8 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
          to label %9 unwind label %28

9:                                                ; preds = %6
  %10 = call i64 @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEcvMS7_PS6_Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %12, label %38, !prof !279

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %13 = invoke noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #23
          to label %14 unwind label %30

14:                                               ; preds = %12
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %13) #18
          to label %15 unwind label %32

15:                                               ; preds = %14
  invoke void @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2IS6_EEPT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %13) #18
          to label %16 unwind label %30

16:                                               ; preds = %15
  %17 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %4) #18
          to label %18 unwind label %34

18:                                               ; preds = %16
  call void @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  %19 = call noundef ptr @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  %20 = load ptr, ptr %19, align 8, !tbaa !259
  %21 = getelementptr i8, ptr %20, i64 -24
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds i8, ptr %19, i64 %22
  %24 = call noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef 1024, i32 noundef 32) #18
  %25 = invoke noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %23, i32 noundef %24) #18
          to label %38 unwind label %28

26:                                               ; preds = %1
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %40

28:                                               ; preds = %18, %6
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %40

30:                                               ; preds = %15, %12
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %36

32:                                               ; preds = %14
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %13) #24
  br label %36

34:                                               ; preds = %16
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  br label %36

36:                                               ; preds = %34, %32, %30
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %31, %30 ], [ %33, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %40

38:                                               ; preds = %18, %9
  %39 = call noundef nonnull align 8 dereferenceable(112) ptr @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  ret ptr %39

40:                                               ; preds = %28, %36, %26
  %41 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ], [ %37, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !280 {
  %2 = tail call noundef i64 @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !273 {
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN6dealii7Threads14this_thread_idEv() local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 !prof !277 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::less", align 1
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.27", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %9 = tail call ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE11lower_boundERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  store ptr %9, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %10 = tail call ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  store ptr %10, ptr %4, align 8
  %11 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  br i1 %11, label %15, label %12, !prof !279

12:                                               ; preds = %2
  call void @_ZNKSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %13 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %14 = call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %13) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br i1 %14, label %16, label %19, !prof !281

15:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %16

16:                                               ; preds = %15, %12
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @_ZNSt5tupleIJRKjEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS1_EEEbE4typeELb1EEES1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %1) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #19
  %17 = load ptr, ptr %6, align 8
  %18 = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %17, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #18
  store ptr %18, ptr %3, align 8, !tbaa.struct !282
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %19

19:                                               ; preds = %16, %12
  %20 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  %21 = getelementptr inbounds %"struct.std::pair", ptr %20, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local i64 @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEcvMS7_PS6_Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !277 {
  %2 = load ptr, ptr %0, align 8, !tbaa !283
  %3 = icmp eq ptr %2, null
  %4 = sext i1 %3 to i64
  ret i64 %4
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2IS6_EEPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  store ptr %1, ptr %0, align 8, !tbaa !283
  %3 = getelementptr inbounds %"class.boost::shared_ptr", ptr %0, i64 0, i32 1
  tail call void @_ZN5boost6detail12shared_countC2INSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEPT_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  tail call void (ptr, ...) @_ZN5boost6detail26sp_enable_shared_from_thisERKNS0_12shared_countEz(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %3 = load ptr, ptr %1, align 8, !tbaa !283
  store ptr %3, ptr %0, align 8, !tbaa !283
  %4 = getelementptr inbounds %"class.boost::shared_ptr", ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %"class.boost::shared_ptr", ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6detail12shared_countaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"class.boost::shared_ptr", ptr %0, i64 0, i32 1
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !229 {
  %2 = load ptr, ptr %0, align 8, !tbaa !283
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !277 {
  %2 = load ptr, ptr %0, align 8, !tbaa !283
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii9LogStream6attachERSo(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %3 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %5 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !253
  %6 = load ptr, ptr %1, align 8, !tbaa !259
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = call noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef 1024, i32 noundef 32) #18
  %11 = invoke noundef i32 @_ZNSt8ios_base4setfESt13_Ios_Fmtflags(ptr noundef nonnull align 8 dereferenceable(216) %9, i32 noundef %10) #18
          to label %12 unwind label %16

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  invoke void @_ZNK6dealii13JobIdentifierclB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii9dealjobidE) #18
          to label %13 unwind label %18

13:                                               ; preds = %12
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
          to label %15 unwind label %20

15:                                               ; preds = %13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %24

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %17, %16 ]
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  resume { ptr, i32 } %25
}

; Function Attrs: optsize
declare void @_ZNK6dealii13JobIdentifierclB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii9LogStream6detachEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(192) %0) local_unnamed_addr #1 align 2 !prof !269 {
  %2 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %3 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !253
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii9LogStream8log_cerrEv(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %2 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %3 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !258
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !259
  %7 = getelementptr i8, ptr %6, i64 -24
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %8
  br i1 %5, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !253
  %13 = load ptr, ptr %12, align 8, !tbaa !259
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %16) #18
  %18 = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %9, ptr noundef %17) #18
          to label %23 unwind label %19

19:                                               ; preds = %21, %10
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %1
  %22 = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %9, ptr noundef nonnull %4) #18
          to label %23 unwind label %19

23:                                               ; preds = %21, %10
  %24 = phi ptr [ %18, %10 ], [ null, %21 ]
  store ptr %24, ptr %3, align 8, !tbaa !258
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii9LogStream11get_consoleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) local_unnamed_addr #11 align 2 !prof !269 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii9LogStream15get_file_streamEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) local_unnamed_addr #11 align 2 !prof !269 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6dealii9LogStream8has_fileEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) local_unnamed_addr #11 align 2 !prof !269 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii9LogStream10get_prefixB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #1 align 2 !prof !270 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !270 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !286 {
  %3 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator.19", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %7 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %10 unwind label %17

10:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %11 unwind label %19

11:                                               ; preds = %10
  %12 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %13 unwind label %21

13:                                               ; preds = %11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  invoke void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #18
          to label %14 unwind label %17

14:                                               ; preds = %13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %27

17:                                               ; preds = %13, %8
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %10
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %11
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %18, %17 ], [ %24, %23 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #20
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !286 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 !prof !287 {
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii9LogStream3popEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !286 {
  %2 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %3 = call noundef i64 @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  %4 = icmp ugt i64 %3, 1
  br i1 %4, label %5, label %6, !prof !288

5:                                                ; preds = %1
  call void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  br label %6

6:                                                ; preds = %5, %1
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !286 {
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN6dealii9LogStream13depth_consoleEj(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !229 {
  %3 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !254
  store i32 %1, ptr %4, align 8, !tbaa !254
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN6dealii9LogStream10depth_fileEj(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #1 align 2 !prof !269 {
  %3 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !255
  store i32 %1, ptr %4, align 4, !tbaa !255
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN6dealii9LogStream16threshold_doubleEd(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(192) %0, double noundef %1) local_unnamed_addr #1 align 2 !prof !269 {
  %3 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 8
  store double %1, ptr %4, align 8, !tbaa !289
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN6dealii9LogStream18log_execution_timeEb(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !269 {
  %3 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %4 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %5 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !256, !range !274, !noundef !275
  %7 = icmp ne i8 %6, 0
  store i8 %4, ptr %5, align 8, !tbaa !256
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN6dealii9LogStream20log_time_differencesEb(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !269 {
  %3 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %4 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %5 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !257, !range !274, !noundef !275
  %7 = icmp ne i8 %6, 0
  store i8 %4, ptr %5, align 1, !tbaa !257
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN6dealii9LogStream13log_thread_idEb(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 !prof !269 {
  %3 = alloca %"class.dealii::Threads::DummyThreadMutex::ScopedLock", align 1
  %4 = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6dealii12_GLOBAL__N_18log_lockE) #18
  %5 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 9
  %6 = load i8, ptr %5, align 8, !tbaa !276, !range !274, !noundef !275
  %7 = icmp ne i8 %6, 0
  store i8 %4, ptr %5, align 8, !tbaa !276
  call void @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %3 = getelementptr inbounds %"class.std::ios_base", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !290
  store i64 %1, ptr %3, align 8, !tbaa !290
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEd(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK6dealii9LogStream18memory_consumptionEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(192) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %2 = alloca %"class.std::stack", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #19
  call void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  %3 = call noundef i64 @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi i32 [ %9, %5 ], [ 192, %1 ]
  %7 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  %8 = call noundef i32 @_ZN6dealii17MemoryConsumption18memory_consumptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  %9 = add i32 %8, %6
  call void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  %10 = call noundef i64 @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %5, !llvm.loop !291

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 192, %1 ], [ %9, %5 ]
  call void @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #20
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #19
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN6dealii17MemoryConsumption18memory_consumptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat !prof !269 {
  %2 = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  %3 = trunc i64 %2 to i32
  %4 = add i32 %3, 32
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !229 {
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE13_Rb_tree_implISF_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE13_Rb_tree_implISF_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt20_Rb_tree_key_compareISt4lessIjEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !229 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessIjEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !293 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !294 {
  store i32 0, ptr %0, align 8, !tbaa !295
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !229 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !296 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !297
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !298
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !299
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !300
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZStoRRSt13_Ios_FmtflagsS_(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1) local_unnamed_addr #6 comdat !prof !261 {
  %3 = load i32, ptr %0, align 4, !tbaa !301
  %4 = tail call noundef i32 @_ZStorSt13_Ios_FmtflagsS_(i32 noundef %3, i32 noundef %1) #18
  store i32 %4, ptr %0, align 4, !tbaa !301
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #18
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !269 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #20
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #18
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #20
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !302

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !303 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !269 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !304
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !305 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !306
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !269 {
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #20
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE7destroyISC_EEvRSE_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE10deallocateERSE_PSD_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #18
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
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE7destroyISC_EEvRSE_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE7destroyISC_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !229 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !307 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE7destroyISC_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  tail call void @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE10deallocateERSE_PSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE10deallocateEPSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE10deallocateEPSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !303 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !297
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 !prof !229 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %1, i64 0, i32 2
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 !prof !287 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %1, i64 0, i32 3
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !308 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !prof !229 {
  %2 = load ptr, ptr %0, align 8, !tbaa !309
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !310

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !311
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !312
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %6, ptr noundef nonnull %9) #20
  %10 = load ptr, ptr %0, align 8, !tbaa !309
  %11 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !313
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %10, i64 noundef %12) #20
  br label %13

13:                                               ; preds = %4, %1
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds ptr, ptr %5, i64 1
  %8 = load ptr, ptr %6, align 8, !tbaa !314
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %17, label %12, !prof !315

10:                                               ; preds = %17
  %11 = load ptr, ptr %4, align 8, !tbaa !314
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %14 = phi ptr [ %8, %3 ], [ %24, %10 ]
  %15 = icmp eq ptr %13, %14
  %16 = load ptr, ptr %1, align 8, !tbaa !316
  br i1 %15, label %32, label %26, !prof !317

17:                                               ; preds = %3, %17
  %18 = phi ptr [ %23, %17 ], [ %7, %3 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !271
  %20 = tail call noundef i64 @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_buffer_sizeEv() #20
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 %20
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %19, ptr noundef %21, ptr noundef nonnull align 1 dereferenceable(1) %22) #18
  %23 = getelementptr inbounds ptr, ptr %18, i64 1
  %24 = load ptr, ptr %6, align 8, !tbaa !314
  %25 = icmp ult ptr %23, %24
  br i1 %25, label %17, label %10, !prof !318, !llvm.loop !319

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !320
  %29 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %16, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %29) #18
  %30 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !321
  br label %32

32:                                               ; preds = %12, %26
  %33 = phi ptr [ %31, %26 ], [ %16, %12 ]
  %34 = load ptr, ptr %2, align 8, !tbaa !316
  %35 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %33, ptr noundef %34, ptr noundef nonnull align 1 dereferenceable(1) %35) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 !prof !322 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !271
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !271
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !271
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !323 {
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_buffer_sizeEv() local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %1 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 32) #18
  ret i64 %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !323 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !323 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !324

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !325, !llvm.loop !326

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !327 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef %0) local_unnamed_addr #1 comdat !prof !328 {
  %2 = icmp ult i64 %0, 512
  br i1 %2, label %3, label %7, !prof !329

3:                                                ; preds = %1
  %4 = trunc i64 %0 to i16
  %5 = udiv i16 512, %4
  %6 = zext nneg i16 %5 to i64
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 1, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !229 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %6, label %5, !prof !330

5:                                                ; preds = %6, %3
  ret void

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !271
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE18_M_deallocate_nodeEPS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %8) #20
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %6, label %5, !prof !331, !llvm.loop !332
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %4 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  call void @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_get_map_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.22") align 1 %4, ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  invoke void @_ZNSt16allocator_traitsISaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, i64 noundef %2) #18
          to label %5 unwind label %6

5:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !333 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE18_M_deallocate_nodeEPS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  %3 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 32) #18
  invoke void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %3) #18
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_get_map_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.22") align 1 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 !prof !334 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #20
  tail call void @_ZNSaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS4_EERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS7_PS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !334 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !268 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS4_EERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 !prof !334 {
  tail call void @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !334 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !335 {
  %2 = load ptr, ptr %0, align 8, !tbaa !336
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !337

4:                                                ; preds = %1
  invoke void @_ZN5boost6detail15sp_counted_base7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #18
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_base7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !338 {
  %2 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !339
  %4 = add nsw i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !339
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10, !prof !341

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !259
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  tail call void @_ZN5boost6detail15sp_counted_base12weak_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_base12weak_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !342 {
  %2 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !343
  %4 = add nsw i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !343
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10, !prof !344

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !259
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  br label %10

10:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !345 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 !prof !229 {
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 0) #18
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !prof !229 {
  tail call void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 32) #18
  %6 = udiv i64 %1, %5
  %7 = add i64 %6, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store i64 8, ptr %3, align 8, !tbaa !346
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %8 = add i64 %6, 3
  store i64 %8, ptr %4, align 8, !tbaa !346
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %10 = load i64, ptr %9, align 8, !tbaa !346
  %11 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !313
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  %12 = call noundef ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %10) #18
  store ptr %12, ptr %0, align 8, !tbaa !309
  %13 = load i64, ptr %11, align 8, !tbaa !313
  %14 = sub i64 %13, %7
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  %17 = getelementptr inbounds ptr, ptr %16, i64 %7
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %16, ptr noundef %17) #18
          to label %27 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = call ptr @__cxa_begin_catch(ptr %20) #19
  %22 = load ptr, ptr %0, align 8, !tbaa !309
  %23 = load i64, ptr %11, align 8, !tbaa !313
  call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %22, i64 noundef %23) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #25
          to label %41 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %38

26:                                               ; preds = %24
  resume { ptr, i32 } %25

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %16) #20
  %29 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds ptr, ptr %16, i64 %6
  call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %30) #20
  %31 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !347
  store ptr %32, ptr %28, align 8, !tbaa !348
  %33 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !349
  %35 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 32) #18
  %36 = urem i64 %1, %35
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 %36
  store ptr %37, ptr %29, align 8, !tbaa !350
  ret void

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #22
  unreachable

41:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !351 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !352 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 !prof !268 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !353 {
  %3 = load i64, ptr %0, align 8, !tbaa !346
  %4 = load i64, ptr %1, align 8, !tbaa !346
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !354
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %3 = alloca %"class.std::allocator.22", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_get_map_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.22") align 1 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %4 = invoke noundef ptr @_ZNSt16allocator_traitsISaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %1) #18
          to label %5 unwind label %6

5:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret ptr %4

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !261 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %5, label %18, !prof !355

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noundef ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
          to label %8 unwind label %11

8:                                                ; preds = %5
  store ptr %7, ptr %6, align 8, !tbaa !271
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %5, label %18, !prof !356, !llvm.loop !357

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #19
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %6) #20
  invoke void @__cxa_rethrow() #25
          to label %22 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %17 unwind label %19

17:                                               ; preds = %15
  resume { ptr, i32 } %16

18:                                               ; preds = %8, %3
  ret void

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #22
  unreachable

22:                                               ; preds = %11
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !268 {
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !314
  %4 = load ptr, ptr %1, align 8, !tbaa !271
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !321
  %6 = tail call noundef i64 @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E14_S_buffer_sizeEv() #20
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 %6
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !320
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS7_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !358

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !261 {
  ret i64 1152921504606846975
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !261 {
  %2 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 32) #18
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !358

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
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !359 {
  ret i64 288230376151711743
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E14_S_buffer_sizeEv() local_unnamed_addr #1 comdat align 2 !prof !360 {
  %1 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 32) #18
  ret i64 %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !350
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !361
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 -1
  %8 = icmp eq ptr %4, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  %10 = load ptr, ptr %3, align 8, !tbaa !350
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 1
  store ptr %11, ptr %3, align 8, !tbaa !350
  br label %13

12:                                               ; preds = %2
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %4 = tail call noundef i64 @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #21
  unreachable

7:                                                ; preds = %2
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1) #18
  %8 = tail call noundef ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  %9 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !312
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %8, ptr %12, align 8, !tbaa !271
  %13 = load ptr, ptr %9, align 8, !tbaa !350
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  %14 = load ptr, ptr %10, align 8, !tbaa !312
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %15) #20
  %16 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !349
  store ptr %17, ptr %9, align 8, !tbaa !350
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !286 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %3 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EmmEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !362 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = tail call noundef i64 @_ZStmiRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_ESA_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %3 = tail call noundef i64 @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %2) #20
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !269 {
  %3 = add i64 %1, 1
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !313
  %6 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !312
  %8 = load ptr, ptr %0, align 8, !tbaa !309
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = sub i64 %5, %12
  %14 = icmp ugt i64 %3, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext false) #18
  br label %16

16:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_ESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat !prof !362 {
  %3 = tail call noundef i64 @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E14_S_buffer_sizeEv() #20
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !314
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp ne ptr %5, null
  %13 = sext i1 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = mul nsw i64 %14, %3
  %16 = load ptr, ptr %0, align 8, !tbaa !316
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !321
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 5
  %23 = add nsw i64 %15, %22
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !320
  %26 = load ptr, ptr %1, align 8, !tbaa !316
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 5
  %31 = add nsw i64 %23, %30
  ret i64 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store i64 9223372036854775807, ptr %2, align 8, !tbaa !346
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  store i64 %4, ptr %3, align 8, !tbaa !346
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %6 = load i64, ptr %5, align 8, !tbaa !346
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !363 {
  %3 = load i64, ptr %1, align 8, !tbaa !346
  %4 = load i64, ptr %0, align 8, !tbaa !346
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !364
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !365 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat align 2 !prof !269 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !346
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !312
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !311
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = add nsw i64 %12, 1
  %14 = add i64 %13, %1
  %15 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !313
  %17 = shl i64 %14, 1
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load ptr, ptr %0, align 8, !tbaa !309
  %21 = sub i64 %16, %14
  %22 = lshr i64 %21, 1
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = select i1 %2, i64 %1, i64 0
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = icmp ult ptr %25, %8
  %27 = getelementptr inbounds ptr, ptr %6, i64 1
  br i1 %26, label %28, label %30

28:                                               ; preds = %19
  %29 = tail call noundef ptr @_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_(ptr noundef nonnull %8, ptr noundef nonnull %27, ptr noundef %25) #18
  br label %51

30:                                               ; preds = %19
  %31 = getelementptr inbounds ptr, ptr %25, i64 %13
  %32 = tail call noundef ptr @_ZSt13copy_backwardIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_(ptr noundef %8, ptr noundef nonnull %27, ptr noundef %31) #18
  br label %51

33:                                               ; preds = %3
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %35 = load i64, ptr %34, align 8, !tbaa !346
  %36 = add i64 %16, 2
  %37 = add i64 %36, %35
  %38 = call noundef ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %37) #18
  %39 = sub i64 %37, %14
  %40 = lshr i64 %39, 1
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load i64, ptr %4, align 8
  %43 = select i1 %2, i64 %42, i64 0
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %7, align 8, !tbaa !311
  %46 = load ptr, ptr %5, align 8, !tbaa !312
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = call noundef ptr @_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_(ptr noundef %45, ptr noundef nonnull %47, ptr noundef %44) #18
  %49 = load ptr, ptr %0, align 8, !tbaa !309
  %50 = load i64, ptr %15, align 8, !tbaa !313
  call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %49, i64 noundef %50) #20
  store ptr %38, ptr %0, align 8, !tbaa !309
  store i64 %37, ptr %15, align 8, !tbaa !313
  br label %51

51:                                               ; preds = %28, %30, %33
  %52 = phi ptr [ %25, %28 ], [ %25, %30 ], [ %44, %33 ]
  %53 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %54 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %52) #20
  %55 = getelementptr inbounds ptr, ptr %52, i64 %13
  %56 = getelementptr inbounds ptr, ptr %55, i64 -1
  call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull %56) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !269 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !269 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !269 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !271
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !269 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !269 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !269 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !269 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !269 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_PKSA_SD_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_PKSA_SD_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !269 {
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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !269 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !271
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %0) #20
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %1) #20
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_S8_(ptr noundef %2) #20
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !269 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !269 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_PKSA_SD_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_PKSA_SD_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !269 {
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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EmmEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !286 {
  %2 = load ptr, ptr %0, align 8, !tbaa !316
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !321
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %6, label %12, !prof !366

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !314
  %9 = getelementptr inbounds ptr, ptr %8, i64 -1
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %9) #20
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !320
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi ptr [ %11, %6 ], [ %2, %1 ]
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 -1
  store ptr %14, ptr %0, align 8, !tbaa !316
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !286 {
  %2 = load ptr, ptr %0, align 8, !tbaa !316
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard.25, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #18
  store i64 %6, ptr %4, align 8, !tbaa !346
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #18
  %10 = load i64, ptr %4, align 8, !tbaa !346
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
  store ptr null, ptr %5, align 8, !tbaa !367
  %15 = load i64, ptr %4, align 8, !tbaa !346
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !269 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !271
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !269 {
  store ptr %1, ptr %0, align 8, !tbaa !367
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !269 {
  %2 = load ptr, ptr %0, align 8, !tbaa !367
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

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
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !269 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !269 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE11lower_boundERSC_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 !prof !277 {
  %3 = tail call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11lower_boundERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !303 {
  %3 = load ptr, ptr %0, align 8, !tbaa !369
  %4 = load ptr, ptr %1, align 8, !tbaa !369
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !277 {
  %2 = tail call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNKSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !305 {
  tail call void @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !371 {
  %4 = load i32, ptr %1, align 4, !tbaa !278
  %5 = load i32, ptr %2, align 4, !tbaa !278
  %6 = icmp ult i32 %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !372 {
  %2 = load ptr, ptr %0, align 8, !tbaa !369
  %3 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Auto_node", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #19
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  %8 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
          to label %9 unwind label %18

9:                                                ; preds = %5
  %10 = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %8) #18
          to label %11 unwind label %18

11:                                               ; preds = %9
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = extractvalue { ptr, ptr } %10, 1
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSK_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %12, ptr nonnull %13) #18
          to label %17 unwind label %18

17:                                               ; preds = %15
  store ptr %16, ptr %6, align 8
  br label %21

18:                                               ; preds = %15, %9, %5
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  resume { ptr, i32 } %19

20:                                               ; preds = %11
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %12) #20
  br label %21

21:                                               ; preds = %20, %17
  call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #19
  %22 = load ptr, ptr %6, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2ERKSt17_Rb_tree_iteratorISB_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !229 {
  %3 = load ptr, ptr %1, align 8, !tbaa !369
  store ptr %3, ptr %0, align 8, !tbaa !373
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKjEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS1_EEEbE4typeELb1EEES1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  invoke void @_ZNSt11_Tuple_implILm0EJRKjEEC2ES1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11lower_boundERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 !prof !277 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %5 = tail call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 !prof !277 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7, !prof !375

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef nonnull %8) #18
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %3) #18
  br i1 %11, label %14, label %12, !prof !375

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #20
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #20
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !376, !llvm.loop !377

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #20
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !378 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %0) local_unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::_Select1st", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #19
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #18
  %4 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt10_Select1stISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEclERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !379 {
  store ptr %1, ptr %0, align 8, !tbaa !369
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt10_Select1stISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEclERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !277 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !305 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !277 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !305 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #6 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !271
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Auto_node", ptr %0, i64 0, i32 1
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEEPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  store ptr %7, ptr %6, align 8, !tbaa !380
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %4 = alloca %"struct.std::pair.28", align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %14 = call ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  store ptr %14, ptr %6, align 8
  %15 = call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %16 = icmp eq ptr %14, %15
  %17 = ptrtoint ptr %14 to i64
  br i1 %16, label %18, label %33, !prof !317

18:                                               ; preds = %3
  %19 = call noundef i64 @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21, !prof !317

21:                                               ; preds = %18
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %23 = load ptr, ptr %22, align 8, !tbaa !271
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %23) #18
  %25 = call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %24, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !271
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %27) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br label %89

28:                                               ; preds = %21, %18
  %29 = call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  %30 = extractvalue { ptr, ptr } %29, 0
  store ptr %30, ptr %4, align 8
  %31 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %32 = extractvalue { ptr, ptr } %29, 1
  store ptr %32, ptr %31, align 8
  br label %89

33:                                               ; preds = %3
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %14) #18
  %35 = call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %34) #18
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  store i64 %17, ptr %8, align 8, !tbaa !271
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %38 = load ptr, ptr %37, align 8, !tbaa !271
  %39 = icmp eq ptr %38, %14
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %42) #18
  br label %59

43:                                               ; preds = %36
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  %45 = load ptr, ptr %44, align 8, !tbaa !369
  %46 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %45) #18
  %47 = call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %46, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load ptr, ptr %8, align 8, !tbaa !369
  %50 = call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %49) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  store ptr null, ptr %9, align 8, !tbaa !271
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  br label %59

53:                                               ; preds = %48
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br label %59

54:                                               ; preds = %43
  %55 = call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  %56 = extractvalue { ptr, ptr } %55, 0
  store ptr %56, ptr %4, align 8
  %57 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %58 = extractvalue { ptr, ptr } %55, 1
  store ptr %58, ptr %57, align 8
  br label %59

59:                                               ; preds = %54, %53, %52, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %89

60:                                               ; preds = %33
  %61 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %14) #18
  %62 = call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %61, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #19
  %64 = load i64, ptr %6, align 8, !tbaa !271
  store i64 %64, ptr %10, align 8, !tbaa !271
  %65 = inttoptr i64 %64 to ptr
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %67 = load ptr, ptr %66, align 8, !tbaa !271
  %68 = icmp eq ptr %67, %65
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #19
  store ptr null, ptr %11, align 8, !tbaa !271
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %70) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #19
  br label %87

71:                                               ; preds = %63
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  %73 = load ptr, ptr %72, align 8, !tbaa !369
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %73) #18
  %75 = call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %74) #18
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load ptr, ptr %6, align 8, !tbaa !369
  %78 = call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %77) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #19
  store ptr null, ptr %12, align 8, !tbaa !271
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #19
  br label %87

81:                                               ; preds = %76
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  br label %87

82:                                               ; preds = %71
  %83 = call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %2) #18
  %84 = extractvalue { ptr, ptr } %83, 0
  store ptr %84, ptr %4, align 8
  %85 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %86 = extractvalue { ptr, ptr } %83, 1
  store ptr %86, ptr %85, align 8
  br label %87

87:                                               ; preds = %82, %81, %80, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #19
  br label %89

88:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  store ptr null, ptr %13, align 8, !tbaa !271
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  br label %89

89:                                               ; preds = %88, %87, %59, %28, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  %90 = load ptr, ptr %4, align 8
  %91 = insertvalue { ptr, ptr } poison, ptr %90, 0
  %92 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = insertvalue { ptr, ptr } %91, ptr %93, 1
  ret { ptr, ptr } %94
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !380
  %4 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSK_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !382
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Auto_node", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !380
  %7 = tail call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSJ_PSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2, ptr noundef %6) #18
  store ptr null, ptr %5, align 8, !tbaa !380
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !380
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !382
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %3) #20
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEEPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 {
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE8allocateERSE_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEEvPSt13_Rb_tree_nodeISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %7 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS2_EESK_IJEEEEEvRSE_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
          to label %14 unwind label %8

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = tail call ptr @__cxa_begin_catch(ptr %10) #19
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) #20
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %18) #22
  unreachable

19:                                               ; preds = %8
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE8allocateERSE_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #20
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !358

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 329406144173384850
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 56
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #1 comdat align 2 !prof !229 {
  ret i64 164703072086692425
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS2_EESK_IJEEEEEvRSE_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS2_EESJ_IJEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEE9constructISC_JRKSt21piecewise_construct_tSt5tupleIJRS2_EESJ_IJEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #6 comdat align 2 {
  %6 = alloca %"class.std::tuple", align 8
  call void @_ZNSt5tupleIJRKjEEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %6) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKjEEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt11_Tuple_implILm0EJRKjEEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESE_IJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
  %3 = alloca %"class.std::tuple.27", align 1
  call void @_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEC2IJRS0_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSD_IJDpT1_EESt12_Index_tupleIJXspT0_EEESM_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKjEEC2EOS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
  %3 = load i64, ptr %1, align 8, !tbaa !271
  store i64 %3, ptr %0, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEC2IJRS0_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSD_IJDpT1_EESt12_Index_tupleIJXspT0_EEESM_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 {
  %4 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3getILm0EJRKjEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  %5 = load i32, ptr %4, align 4, !tbaa !278
  store i32 %5, ptr %0, align 8, !tbaa !383
  %6 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  tail call void @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3getILm0EJRKjEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt12__get_helperILm0ERKjJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 !prof !229 {
  store ptr null, ptr %0, align 8, !tbaa !283
  %2 = getelementptr inbounds %"class.boost::shared_ptr", ptr %0, i64 0, i32 1
  tail call void @_ZN5boost6detail12shared_countC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt12__get_helperILm0ERKjJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt11_Tuple_implILm0EJRKjEE7_M_headERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt11_Tuple_implILm0EJRKjEE7_M_headERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt10_Head_baseILm0ERKjLb0EE7_M_headERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt10_Head_baseILm0ERKjLb0EE7_M_headERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !385
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail12shared_countC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !387 {
  store ptr null, ptr %0, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !229 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !373
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #20
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !300
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !269 {
  %2 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !271
  store ptr %4, ptr %0, align 8, !tbaa !388
  %5 = getelementptr inbounds %"struct.std::pair.28", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !271
  store ptr %6, ptr %5, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 !prof !229 {
  %3 = alloca %"struct.std::pair.28", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  store ptr %10, ptr %5, align 8, !tbaa !271
  %11 = icmp eq ptr %9, null
  br i1 %11, label %24, label %12, !prof !315

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %21, %20 ], [ %9, %2 ]
  %14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef nonnull %13) #18
  %15 = tail call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %14) #18
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #20
  br label %20

18:                                               ; preds = %12
  %19 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #20
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !prof !391, !llvm.loop !392

23:                                               ; preds = %20
  store ptr %13, ptr %5, align 8, !tbaa !271
  store ptr null, ptr %4, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %13) #20
  br i1 %15, label %25, label %31, !prof !317

24:                                               ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %10) #20
  br label %25

25:                                               ; preds = %24, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %26 = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  store ptr %26, ptr %7, align 8
  %27 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEESE_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  br i1 %27, label %28, label %29, !prof !317

28:                                               ; preds = %25
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %37

29:                                               ; preds = %25
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %31

31:                                               ; preds = %29, %23
  %32 = load ptr, ptr %6, align 8, !tbaa !369
  %33 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %32) #18
  %34 = call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %33, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %37

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  store ptr null, ptr %8, align 8, !tbaa !271
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  br label %37

37:                                               ; preds = %36, %35, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  %38 = load ptr, ptr %3, align 8
  %39 = insertvalue { ptr, ptr } poison, ptr %38, 0
  %40 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = insertvalue { ptr, ptr } %39, ptr %41, 1
  ret { ptr, ptr } %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !271
  store ptr %4, ptr %0, align 8, !tbaa !388
  %5 = getelementptr inbounds %"struct.std::pair.28", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !271
  store ptr %6, ptr %5, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %2 = load ptr, ptr %0, align 8, !tbaa !369
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %2) #26
  store ptr %3, ptr %0, align 8, !tbaa !369
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %2 = load ptr, ptr %0, align 8, !tbaa !369
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %2) #26
  store ptr %3, ptr %0, align 8, !tbaa !369
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !229 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !298
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #20
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !271
  store ptr %4, ptr %0, align 8, !tbaa !388
  %5 = getelementptr inbounds %"struct.std::pair.28", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !271
  store ptr %6, ptr %5, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSJ_PSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E(ptr noundef %3) #18
  %12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #18
  %13 = tail call noundef zeroext i1 @_ZNKSt4lessIjEclERKjS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12) #18
  br label %14

14:                                               ; preds = %10, %7, %4
  %15 = phi i1 [ true, %7 ], [ true, %4 ], [ %13, %10 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %15, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %16) #20
  %17 = getelementptr inbounds i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !300
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !300
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %3) #20
  %20 = load ptr, ptr %5, align 8
  ret ptr %20
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKjEEC2ES1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt10_Head_baseILm0ERKjLb0EEC2ES1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0ERKjLb0EEC2ES1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail12shared_countC2INSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEPT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !229 {
  store ptr null, ptr %0, align 8, !tbaa !336
  %3 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %4 unwind label %6

4:                                                ; preds = %2
  invoke void @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2EPS7_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #18
          to label %5 unwind label %8

5:                                                ; preds = %4
  store ptr %3, ptr %0, align 8, !tbaa !336
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          catch ptr null
  br label %10

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPv(ptr noundef nonnull %3) #24
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi { ptr, i32 } [ %9, %8 ], [ %7, %6 ]
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = tail call ptr @__cxa_begin_catch(ptr %12) #19
  tail call void @_ZN5boost14checked_deleteINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEvPT_(ptr noundef %1) #18
  invoke void @__cxa_rethrow() #25
          to label %20 unwind label %14

14:                                               ; preds = %10
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
  tail call void @__clang_call_terminate(ptr %19) #22
  unreachable

20:                                               ; preds = %10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail26sp_enable_shared_from_thisERKNS0_12shared_countEz(ptr noundef nonnull align 8 dereferenceable(8) %0, ...) local_unnamed_addr #1 comdat !prof !393 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2EPS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !229 {
  tail call void @_ZN5boost6detail15sp_counted_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !259
  %3 = getelementptr inbounds %"class.boost::detail::sp_counted_impl_p", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !394
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost14checked_deleteINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEvPT_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !269 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !259
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(112) %0) #20
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !393 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN5boost6detail15sp_counted_baseE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !259
  %2 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %0, i64 0, i32 1
  store i64 1, ptr %2, align 8, !tbaa !339
  %3 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %0, i64 0, i32 2
  store i64 1, ptr %3, align 8, !tbaa !343
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !342 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN5boost6detail15sp_counted_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 !prof !269 {
  %2 = getelementptr inbounds %"class.boost::detail::sp_counted_impl_p", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !394
  tail call void @_ZN5boost14checked_deleteINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEvPT_(ptr noundef %3) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_base7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 !prof !342 {
  %2 = load ptr, ptr %0, align 8, !tbaa !259
  %3 = getelementptr inbounds ptr, ptr %2, i64 1
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 !prof !269 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_baseD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #22
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost6detail12shared_countaSERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !396 {
  %3 = load ptr, ptr %1, align 8, !tbaa !336
  %4 = load ptr, ptr %0, align 8, !tbaa !336
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %15, label %6, !prof !397

6:                                                ; preds = %2
  %7 = icmp eq ptr %3, null
  br i1 %7, label %10, label %8, !prof !398

8:                                                ; preds = %6
  tail call void @_ZN5boost6detail15sp_counted_base12add_ref_copyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  %9 = load ptr, ptr %0, align 8, !tbaa !336
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %4, %6 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !399

13:                                               ; preds = %10
  tail call void @_ZN5boost6detail15sp_counted_base7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #18
  br label %14

14:                                               ; preds = %13, %10
  store ptr %3, ptr %0, align 8, !tbaa !336
  br label %15

15:                                               ; preds = %14, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_base12add_ref_copyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !400 {
  %2 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !339
  %4 = add nsw i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !339
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !270 {
  %2 = alloca %"struct.std::_Deque_iterator.31", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #19
  call void @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator.31") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %3 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EmmEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #19
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator.31") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 !prof !401 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %1, i64 0, i32 3
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EC2IS_IS5_RS5_PS5_EvEERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EmmEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !270 {
  %2 = load ptr, ptr %0, align 8, !tbaa !402
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.31", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !404
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %6, label %12, !prof !405

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator.31", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !406
  %9 = getelementptr inbounds ptr, ptr %8, i64 -1
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E11_M_set_nodeEPPS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %9) #20
  %10 = getelementptr inbounds %"struct.std::_Deque_iterator.31", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !407
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi ptr [ %11, %6 ], [ %2, %1 ]
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 -1
  store ptr %14, ptr %0, align 8, !tbaa !402
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !270 {
  %2 = load ptr, ptr %0, align 8, !tbaa !402
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EC2IS_IS5_RS5_PS5_EvEERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !271
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !271
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator.31", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !271
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E11_M_set_nodeEPPS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator.31", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !406
  %4 = load ptr, ptr %1, align 8, !tbaa !271
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator.31", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !404
  %6 = tail call noundef i64 @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E14_S_buffer_sizeEv() #20
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 %6
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator.31", ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !407
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E14_S_buffer_sizeEv() local_unnamed_addr #1 comdat align 2 !prof !269 {
  %1 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 32) #18
  ret i64 %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 !prof !287 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !350
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !361
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 -1
  %8 = icmp eq ptr %4, %7
  br i1 %8, label %12, label %9, !prof !408

9:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !350
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 1
  store ptr %11, ptr %3, align 8, !tbaa !350
  br label %13

12:                                               ; preds = %2
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRKS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noundef i64 @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %4 = tail call noundef i64 @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #21
  unreachable

7:                                                ; preds = %2
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1) #18
  %8 = tail call noundef ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  %9 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !312
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %8, ptr %12, align 8, !tbaa !271
  %13 = load ptr, ptr %9, align 8, !tbaa !350
  invoke void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %14 unwind label %19

14:                                               ; preds = %7
  %15 = load ptr, ptr %10, align 8, !tbaa !312
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %16) #20
  %17 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !349
  store ptr %18, ptr %9, align 8, !tbaa !350
  ret void

19:                                               ; preds = %7
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = tail call ptr @__cxa_begin_catch(ptr %21) #19
  %23 = load ptr, ptr %10, align 8, !tbaa !312
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !271
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE18_M_deallocate_nodeEPS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %25) #20
  invoke void @__cxa_rethrow() #25
          to label %32 unwind label %26

26:                                               ; preds = %19
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
  tail call void @__clang_call_terminate(ptr %31) #22
  unreachable

32:                                               ; preds = %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRKS5_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !286 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !350
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !349
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %11, label %7, !prof !366

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 -1
  store ptr %8, ptr %2, align 8, !tbaa !350
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %10 = load ptr, ptr %2, align 8, !tbaa !350
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %10) #20
  br label %12

11:                                               ; preds = %1
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_pop_back_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #18
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_pop_back_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !269 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !349
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE18_M_deallocate_nodeEPS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %4) #20
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !312
  %7 = getelementptr inbounds ptr, ptr %6, i64 -1
  tail call void @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %7) #20
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !361
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 -1
  store ptr %10, ptr %2, align 8, !tbaa !350
  %11 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #20
  %12 = load ptr, ptr %2, align 8, !tbaa !350
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %12) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7destroyIS5_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #20
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_log.cc() #2 section ".text.startup" {
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
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize }
attributes #21 = { noreturn optsize }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { builtin nounwind optsize }
attributes #25 = { noreturn }
attributes #26 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!227}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!35 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEEC2IS8_vEEv, i64 1}
!36 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEC2Ev, i64 1}
!37 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZNSaIcEC2Ev, i64 1}
!38 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 1}
!39 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushEOS5_, i64 1}
!40 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1}
!41 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 1}
!42 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZStorSt13_Ios_FmtflagsS_, i64 1}
!43 = !{ptr @_ZN6dealii9LogStreamC2Ev, ptr @_ZNSt8ios_base4setfESt13_Ios_Fmtflags, i64 1}
!44 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEC2Ev, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EEC2Ev, i64 1}
!45 = !{ptr @_ZNSt8ios_base4setfESt13_Ios_Fmtflags, ptr @_ZStoRRSt13_Ios_FmtflagsS_, i64 2}
!46 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZN6dealii9LogStream5printIPFRSoS2_EEEvRKT_, i64 28818}
!47 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_, i64 28817}
!48 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZN6dealii9LogStream15print_line_headEv, i64 28817}
!49 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, i64 28817}
!50 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv, i64 28818}
!51 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv, i64 1}
!52 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE, i64 1}
!53 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 28818}
!54 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNSaIcEC2Ev, i64 28817}
!55 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 28817}
!56 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strERKNS_12basic_stringIcS2_S3_EE, i64 28817}
!57 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 28817}
!58 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev, i64 28817}
!59 = !{ptr @_ZN6dealii9LogStream5printIPFRSoS2_EEEvRKT_, ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, i64 28818}
!60 = !{ptr @_ZN6dealii9LogStream5printIPFRSoS2_EEEvRKT_, ptr @_ZNSolsEPFRSoS_E, i64 28818}
!61 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZNK6dealii9LogStream10get_prefixB5cxx11Ev, i64 28818}
!62 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZN6dealii7Threads14this_thread_idEv, i64 28818}
!63 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv, i64 28819}
!64 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZNSt8ios_base5widthEl, i64 2}
!65 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZNSolsEd, i64 1}
!66 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c, i64 4}
!67 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZNSolsEj, i64 1}
!68 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE, i64 1}
!69 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_, i64 144090}
!70 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZN6dealii7Threads14this_thread_idEv, i64 144090}
!71 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, i64 144090}
!72 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEcvMS7_PS6_Ev, i64 144090}
!73 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_Znwm, i64 2}
!74 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev, i64 2}
!75 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2IS6_EEPT_, i64 2}
!76 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEaSERKS7_, i64 2}
!77 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED2Ev, i64 2}
!78 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEptEv, i64 2}
!79 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZStorSt13_Ios_FmtflagsS_, i64 2}
!80 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZNSt8ios_base4setfESt13_Ios_Fmtflags, i64 2}
!81 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZNK5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEdeEv, i64 144090}
!82 = !{ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev, i64 144090}
!83 = !{ptr @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv, ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, i64 72045}
!84 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE11lower_boundERSC_, i64 144090}
!85 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE3endEv, i64 144090}
!86 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEESE_, i64 144090}
!87 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZNKSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE8key_compEv, i64 144088}
!88 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEdeEv, i64 288178}
!89 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZNKSt4lessIjEclERKjS2_, i64 144088}
!90 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2ERKSt17_Rb_tree_iteratorISB_E, i64 4}
!91 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZNSt5tupleIJRKjEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS1_EEEbE4typeELb1EEES1_, i64 4}
!92 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEEixERSC_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_, i64 4}
!93 = !{ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2IS6_EEPT_, ptr @_ZN5boost6detail12shared_countC2INSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEPT_, i64 1}
!94 = !{ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2IS6_EEPT_, ptr @_ZN5boost6detail26sp_enable_shared_from_thisERKNS0_12shared_countEz, i64 1}
!95 = !{ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEaSERKS7_, ptr @_ZN5boost6detail12shared_countaSERKS1_, i64 1}
!96 = !{ptr @_ZNK6dealii9LogStream10get_prefixB5cxx11Ev, ptr @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv, i64 28818}
!97 = !{ptr @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv, ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, i64 28818}
!98 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_, i64 14409}
!99 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv, i64 14409}
!100 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 14409}
!101 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_, i64 28818}
!102 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSaIcEC2Ev, i64 14409}
!103 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 14409}
!104 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 28818}
!105 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 14409}
!106 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushERKS5_, i64 14409}
!107 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev, i64 14409}
!108 = !{ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3topEv, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, i64 14409}
!109 = !{ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4pushERKS5_, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, i64 14410}
!110 = !{ptr @_ZN6dealii9LogStream3popEv, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_, i64 14409}
!111 = !{ptr @_ZN6dealii9LogStream3popEv, ptr @_ZNKSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE4sizeEv, i64 14409}
!112 = !{ptr @_ZN6dealii9LogStream3popEv, ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv, i64 14408}
!113 = !{ptr @_ZN6dealii9LogStream3popEv, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev, i64 14409}
!114 = !{ptr @_ZNSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE3popEv, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv, i64 14409}
!115 = !{ptr @_ZN6dealii9LogStream13depth_consoleEj, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockC2ERS1_, i64 1}
!116 = !{ptr @_ZN6dealii9LogStream13depth_consoleEj, ptr @_ZN6dealii7Threads16DummyThreadMutex10ScopedLockD2Ev, i64 1}
!117 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EEC2Ev, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE13_Rb_tree_implISF_Lb1EEC2Ev, i64 1}
!118 = !{ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEC2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEC2Ev, i64 1}
!119 = !{ptr @_ZNSt15_Rb_tree_headerC2Ev, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 26264613}
!120 = !{ptr @_ZStoRRSt13_Ios_FmtflagsS_, ptr @_ZStorSt13_Ios_FmtflagsS_, i64 2}
!121 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE9_M_mbeginEv, i64 144091}
!122 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE6_M_ptrEv, i64 288180}
!123 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, i64 1}
!124 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, i64 1}
!125 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 1}
!126 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_, i64 1}
!127 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 1}
!128 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_, i64 2}
!129 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_, i64 1}
!130 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_, i64 1}
!131 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2ERKS8_, i64 14410}
!132 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_, i64 1}
!133 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m, i64 1}
!134 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, i64 1}
!135 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_S_buffer_sizeEv, i64 1}
!136 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 2}
!137 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, i64 2}
!138 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, i64 1719}
!139 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, i64 1719}
!140 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, i64 3749}
!141 = !{ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3750}
!142 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE18_M_deallocate_nodeEPS5_, i64 1}
!143 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m, ptr @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_get_map_allocatorEv, i64 1}
!144 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m, ptr @_ZNSt16allocator_traitsISaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS7_PS6_m, i64 1}
!145 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_deallocate_mapEPPS5_m, ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, i64 1}
!146 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE18_M_deallocate_nodeEPS5_, ptr @_ZSt16__deque_buf_sizem, i64 1}
!147 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE18_M_deallocate_nodeEPS5_, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, i64 1}
!148 = !{ptr @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_get_map_allocatorEv, ptr @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 3}
!149 = !{ptr @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_get_map_allocatorEv, ptr @_ZNSaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS4_EERKSaIT_E, i64 3}
!150 = !{ptr @_ZNSaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS4_EERKSaIT_E, ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, i64 3}
!151 = !{ptr @_ZN5boost6detail12shared_countD2Ev, ptr @_ZN5boost6detail15sp_counted_base7releaseEv, i64 823875}
!152 = !{ptr @_ZN5boost6detail12shared_countD2Ev, ptr @__clang_call_terminate, i64 1}
!153 = !{ptr @_ZN5boost6detail15sp_counted_base7releaseEv, ptr @_ZN5boost6detail15sp_counted_base12weak_releaseEv, i64 366388}
!154 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, i64 1}
!155 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implC2Ev, i64 1}
!156 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, i64 1}
!157 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implC2Ev, ptr @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, i64 1}
!158 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implC2Ev, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataC2Ev, i64 1}
!159 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, ptr @_ZSt16__deque_buf_sizem, i64 4}
!160 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, ptr @_ZSt3maxImERKT_S2_S2_, i64 2}
!161 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm, i64 2}
!162 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_, i64 2}
!163 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_, i64 4}
!164 = !{ptr @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2Ev, i64 478}
!165 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataC2Ev, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EC2Ev, i64 4}
!166 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm, ptr @_ZNKSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_get_map_allocatorEv, i64 2}
!167 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm, ptr @_ZNSt16allocator_traitsISaIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS7_m, i64 2}
!168 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_allocate_mapEm, ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, i64 2}
!169 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv, i64 2}
!170 = !{ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E14_S_buffer_sizeEv, i64 4}
!171 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv, ptr @_ZSt16__deque_buf_sizem, i64 2}
!172 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_allocate_nodeEv, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m, i64 2}
!173 = !{ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E14_S_buffer_sizeEv, ptr @_ZSt16__deque_buf_sizem, i64 72050}
!174 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, i64 14409}
!175 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EmmEv, i64 14409}
!176 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, ptr @_ZNKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EdeEv, i64 14409}
!177 = !{ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, ptr @_ZStmiRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_ESA_, i64 72046}
!178 = !{ptr @_ZStmiRKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_ESA_, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E14_S_buffer_sizeEv, i64 72046}
!179 = !{ptr @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv, ptr @_ZNKSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11_M_max_sizeEv, i64 2285}
!180 = !{ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_EmmEv, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E11_M_set_nodeEPS7_, i64 1}
!181 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE11lower_boundERSC_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11lower_boundERS1_, i64 144090}
!182 = !{ptr @_ZNSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE3endEv, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE3endEv, i64 144090}
!183 = !{ptr @_ZNKSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE8key_compEv, ptr @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8key_compEv, i64 144089}
!184 = !{ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEdeEv, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv, i64 288179}
!185 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11lower_boundERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_beginEv, i64 144090}
!186 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11lower_boundERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv, i64 144090}
!187 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11lower_boundERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_, i64 144090}
!188 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E, i64 144089}
!189 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_, ptr @_ZNKSt4lessIjEclERKjS2_, i64 144089}
!190 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE7_S_leftEPSt18_Rb_tree_node_base, i64 144088}
!191 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_S_rightEPSt18_Rb_tree_node_base, i64 1}
!192 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS1_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base, i64 144090}
!193 = !{ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE9_M_valptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE6_M_ptrEv, i64 144089}
!194 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE3endEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base, i64 144090}
!195 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_, ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE13_M_const_castEv, i64 1}
!196 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv, i64 1}
!197 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_, ptr @_ZNKSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE4sizeEv, i64 1}
!198 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, i64 1}
!199 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_get_nodeEv, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE21_M_get_Node_allocatorEv, i64 1}
!200 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE11_M_get_nodeEv, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEEE8allocateERSE_m, i64 1}
!201 = !{ptr @_ZN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2Ev, ptr @_ZN5boost6detail12shared_countC2Ev, i64 1}
!202 = !{ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE13_M_const_castEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base, i64 1}
!203 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_beginEv, i64 1}
!204 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_M_endEv, i64 1}
!205 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE6_S_keyEPKSt13_Rb_tree_nodeISB_E, i64 1}
!206 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, ptr @_ZNKSt4lessIjEclERKjS2_, i64 1}
!207 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base, i64 2}
!208 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE5beginEv, i64 1}
!209 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEESE_, i64 1}
!210 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISL_SM_EEEbE4typeELb1EEEOSL_OSM_, i64 1}
!211 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE5beginEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEEC2EPSt18_Rb_tree_node_base, i64 1}
!212 = !{ptr @_ZN5boost6detail12shared_countC2INSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEPT_, ptr @_Znwm, i64 1}
!213 = !{ptr @_ZN5boost6detail12shared_countC2INSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEPT_, ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2EPS7_, i64 1}
!214 = !{ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEC2EPS7_, ptr @_ZN5boost6detail15sp_counted_baseC2Ev, i64 1}
!215 = !{ptr @_ZN5boost6detail12shared_countaSERKS1_, ptr @_ZN5boost6detail15sp_counted_base12add_ref_copyEv, i64 89936}
!216 = !{ptr @_ZN5boost6detail12shared_countaSERKS1_, ptr @_ZN5boost6detail15sp_counted_base7releaseEv, i64 1}
!217 = !{ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, i64 28818}
!218 = !{ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EmmEv, i64 28818}
!219 = !{ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4backEv, ptr @_ZNKSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EdeEv, i64 28818}
!220 = !{ptr @_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EC2IS_IS5_RS5_PS5_EvEERKT_, i64 28819}
!221 = !{ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EmmEv, ptr @_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E11_M_set_nodeEPPS5_, i64 1}
!222 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS5_JRKS5_EEEvRS6_PT_DpOT0_, i64 14409}
!223 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_, i64 1}
!224 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 14408}
!225 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyIS5_EEvRS6_PT_, i64 14408}
!226 = !{ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv, ptr @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_pop_back_auxEv, i64 1}
!227 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!228 = !{!"function_entry_count", i64 147}
!229 = !{!"function_entry_count", i64 1}
!230 = !{!231, !237, i64 80}
!231 = !{!"_ZTSN6dealii9LogStreamE", !232, i64 0, !237, i64 80, !237, i64 88, !242, i64 96, !242, i64 100, !243, i64 104, !243, i64 105, !244, i64 112, !244, i64 120, !243, i64 128, !237, i64 136, !245, i64 144}
!232 = !{!"_ZTSSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE", !233, i64 0}
!233 = !{!"_ZTSSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !234, i64 0}
!234 = !{!"_ZTSSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !235, i64 0}
!235 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implE", !236, i64 0}
!236 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !237, i64 0, !240, i64 8, !241, i64 16, !241, i64 48}
!237 = !{!"any pointer", !238, i64 0}
!238 = !{!"omnipotent char", !239, i64 0}
!239 = !{!"Simple C++ TBAA"}
!240 = !{!"long", !238, i64 0}
!241 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !237, i64 0, !237, i64 8, !237, i64 16, !237, i64 24}
!242 = !{!"int", !238, i64 0}
!243 = !{!"bool", !238, i64 0}
!244 = !{!"double", !238, i64 0}
!245 = !{!"_ZTSSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE", !246, i64 0}
!246 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE", !247, i64 0}
!247 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE13_Rb_tree_implISF_Lb1EEE", !248, i64 0, !250, i64 8}
!248 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !249, i64 0}
!249 = !{!"_ZTSSt4lessIjE"}
!250 = !{!"_ZTSSt15_Rb_tree_header", !251, i64 0, !240, i64 32}
!251 = !{!"_ZTSSt18_Rb_tree_node_base", !252, i64 0, !237, i64 8, !237, i64 16, !237, i64 24}
!252 = !{!"_ZTSSt14_Rb_tree_color", !238, i64 0}
!253 = !{!231, !237, i64 88}
!254 = !{!231, !242, i64 96}
!255 = !{!231, !242, i64 100}
!256 = !{!231, !243, i64 104}
!257 = !{!231, !243, i64 105}
!258 = !{!231, !237, i64 136}
!259 = !{!260, !260, i64 0}
!260 = !{!"vtable pointer", !239, i64 0}
!261 = !{!"function_entry_count", i64 2}
!262 = !{!263, !264, i64 24}
!263 = !{!"_ZTSSt8ios_base", !240, i64 8, !240, i64 16, !264, i64 24, !265, i64 28, !265, i64 32, !237, i64 40, !266, i64 48, !238, i64 64, !242, i64 192, !237, i64 200, !267, i64 208}
!264 = !{!"_ZTSSt13_Ios_Fmtflags", !238, i64 0}
!265 = !{!"_ZTSSt12_Ios_Iostate", !238, i64 0}
!266 = !{!"_ZTSNSt8ios_base6_WordsE", !237, i64 0, !240, i64 8}
!267 = !{!"_ZTSSt6locale", !237, i64 0}
!268 = !{!"function_entry_count", i64 4}
!269 = !{!"function_entry_count", i64 0}
!270 = !{!"function_entry_count", i64 28818}
!271 = !{!237, !237, i64 0}
!272 = !{!"branch_weights", i32 28819, i32 1}
!273 = !{!"function_entry_count", i64 1283062}
!274 = !{i8 0, i8 2}
!275 = !{}
!276 = !{!231, !243, i64 128}
!277 = !{!"function_entry_count", i64 144090}
!278 = !{!242, !242, i64 0}
!279 = !{!"branch_weights", i32 2, i32 144090}
!280 = !{!"function_entry_count", i64 72045}
!281 = !{!"branch_weights", i32 2, i32 144089}
!282 = !{i64 0, i64 8, !271}
!283 = !{!284, !237, i64 0}
!284 = !{!"_ZTSN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE", !237, i64 0, !285, i64 8}
!285 = !{!"_ZTSN5boost6detail12shared_countE", !237, i64 0}
!286 = !{!"function_entry_count", i64 14409}
!287 = !{!"function_entry_count", i64 14410}
!288 = !{!"branch_weights", i32 14410, i32 1}
!289 = !{!231, !244, i64 120}
!290 = !{!263, !240, i64 16}
!291 = distinct !{!291, !292}
!292 = !{!"llvm.loop.mustprogress"}
!293 = !{!"function_entry_count", i64 1038}
!294 = !{!"function_entry_count", i64 26264613}
!295 = !{!250, !252, i64 0}
!296 = !{!"function_entry_count", i64 26264717}
!297 = !{!250, !237, i64 8}
!298 = !{!250, !237, i64 16}
!299 = !{!250, !237, i64 24}
!300 = !{!250, !240, i64 32}
!301 = !{!264, !264, i64 0}
!302 = distinct !{!302, !292}
!303 = !{!"function_entry_count", i64 144091}
!304 = !{!251, !237, i64 24}
!305 = !{!"function_entry_count", i64 144089}
!306 = !{!251, !237, i64 16}
!307 = !{!"function_entry_count", i64 288180}
!308 = !{!"function_entry_count", i64 14412}
!309 = !{!236, !237, i64 0}
!310 = !{!"branch_weights", i32 1, i32 2}
!311 = !{!236, !237, i64 40}
!312 = !{!236, !237, i64 72}
!313 = !{!236, !240, i64 8}
!314 = !{!241, !237, i64 24}
!315 = !{!"branch_weights", i32 1, i32 1}
!316 = !{!241, !237, i64 0}
!317 = !{!"branch_weights", i32 2, i32 1}
!318 = !{!"branch_weights", i32 0, i32 1}
!319 = distinct !{!319, !292}
!320 = !{!241, !237, i64 16}
!321 = !{!241, !237, i64 8}
!322 = !{!"function_entry_count", i64 14418}
!323 = !{!"function_entry_count", i64 1719}
!324 = !{!"branch_weights", i32 1, i32 1719}
!325 = !{!"branch_weights", i32 1719, i32 2032}
!326 = distinct !{!326, !292}
!327 = !{!"function_entry_count", i64 3750}
!328 = !{!"function_entry_count", i64 72057}
!329 = !{!"branch_weights", i32 72058, i32 1}
!330 = !{!"branch_weights", i32 127, i32 1}
!331 = !{!"branch_weights", i32 1, i32 127}
!332 = distinct !{!332, !292}
!333 = !{!"function_entry_count", i64 1174}
!334 = !{!"function_entry_count", i64 3}
!335 = !{!"function_entry_count", i64 914555}
!336 = !{!285, !237, i64 0}
!337 = !{!"branch_weights", i32 90680, i32 823877}
!338 = !{!"function_entry_count", i64 823876}
!339 = !{!340, !240, i64 8}
!340 = !{!"_ZTSN5boost6detail15sp_counted_baseE", !240, i64 8, !240, i64 16}
!341 = !{!"branch_weights", i32 366389, i32 457489}
!342 = !{!"function_entry_count", i64 366388}
!343 = !{!340, !240, i64 16}
!344 = !{!"branch_weights", i32 366389, i32 1}
!345 = !{!"function_entry_count", i64 67805}
!346 = !{!240, !240, i64 0}
!347 = !{!236, !237, i64 24}
!348 = !{!236, !237, i64 16}
!349 = !{!236, !237, i64 56}
!350 = !{!236, !237, i64 48}
!351 = !{!"function_entry_count", i64 478}
!352 = !{!"function_entry_count", i64 1077}
!353 = !{!"function_entry_count", i64 12588445}
!354 = !{!"branch_weights", i32 11254134, i32 1334313}
!355 = !{!"branch_weights", i32 191, i32 1}
!356 = !{!"branch_weights", i32 1, i32 191}
!357 = distinct !{!357, !292}
!358 = !{!"branch_weights", i32 1, i32 2000}
!359 = !{!"function_entry_count", i64 3533}
!360 = !{!"function_entry_count", i64 72050}
!361 = !{!236, !237, i64 64}
!362 = !{!"function_entry_count", i64 72046}
!363 = !{!"function_entry_count", i64 34204152}
!364 = !{!"branch_weights", i32 1, i32 34204153}
!365 = !{!"function_entry_count", i64 2285}
!366 = !{!"branch_weights", i32 1, i32 14410}
!367 = !{!368, !237, i64 0}
!368 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !237, i64 0}
!369 = !{!370, !237, i64 0}
!370 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE", !237, i64 0}
!371 = !{!"function_entry_count", i64 1627033071}
!372 = !{!"function_entry_count", i64 288179}
!373 = !{!374, !237, i64 0}
!374 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEEE", !237, i64 0}
!375 = !{!"branch_weights", i32 1, i32 144090}
!376 = !{!"branch_weights", i32 144090, i32 0}
!377 = distinct !{!377, !292}
!378 = !{!"function_entry_count", i64 144093}
!379 = !{!"function_entry_count", i64 288184}
!380 = !{!381, !237, i64 8}
!381 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE10_Auto_nodeE", !237, i64 0, !237, i64 8}
!382 = !{!381, !237, i64 0}
!383 = !{!384, !242, i64 0}
!384 = !{!"_ZTSSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE", !242, i64 0, !284, i64 8}
!385 = !{!386, !237, i64 0}
!386 = !{!"_ZTSSt10_Head_baseILm0ERKjLb0EE", !237, i64 0}
!387 = !{!"function_entry_count", i64 180570}
!388 = !{!389, !237, i64 0}
!389 = !{!"_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E", !237, i64 0, !237, i64 8}
!390 = !{!389, !237, i64 8}
!391 = !{!"branch_weights", i32 1, i32 0}
!392 = distinct !{!392, !292}
!393 = !{!"function_entry_count", i64 366401}
!394 = !{!395, !237, i64 24}
!395 = !{!"_ZTSN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE", !340, i64 0, !237, i64 24}
!396 = !{!"function_entry_count", i64 180382}
!397 = !{!"branch_weights", i32 90446, i32 89938}
!398 = !{!"branch_weights", i32 1, i32 89938}
!399 = !{!"branch_weights", i32 89938, i32 1}
!400 = !{!"function_entry_count", i64 457488}
!401 = !{!"function_entry_count", i64 28819}
!402 = !{!403, !237, i64 0}
!403 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E", !237, i64 0, !237, i64 8, !237, i64 16, !237, i64 24}
!404 = !{!403, !237, i64 8}
!405 = !{!"branch_weights", i32 1, i32 28819}
!406 = !{!403, !237, i64 24}
!407 = !{!403, !237, i64 16}
!408 = !{!"branch_weights", i32 1, i32 14411}
