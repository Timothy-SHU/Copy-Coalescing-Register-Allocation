; ModuleID = 'simulator/scenario.cc'
source_filename = "simulator/scenario.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::piecewise_construct_t" = type { i8 }
%class.Resolver = type { %"class.Expression::Resolver", ptr }
%"class.Expression::Resolver" = type { ptr }
%"class.Scenario::VariableReference" = type { %"class.Expression::Functor", ptr, %"class.std::__cxx11::basic_string" }
%"class.Expression::Functor" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.0 }
%union.anon.0 = type { ptr }
%class.Scenario = type { ptr, ptr, %"class.std::vector", %"class.std::map" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl" }
%"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl" = type { %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.SectionBasedConfiguration::IterationVariable" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ValueIterator = type <{ %"class.std::vector.12", i32, i32, i32, [4 x i8] }>
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl" }
%"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl" = type { %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Vector_base<SectionBasedConfiguration::IterationVariable, std::allocator<SectionBasedConfiguration::IterationVariable>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.18" = type { i8 }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", ptr }
%"struct.Expression::Value" = type { i32, i8, double, %"class.std::__cxx11::basic_string" }
%"class.std::allocator" = type { i8 }
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
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [40 x i8] }
%struct._Guard = type { ptr }
%"class.std::allocator.14" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.ValueIterator::Item" = type <{ i8, [7 x i8], %"class.std::__cxx11::basic_string", double, double, double, i32, [4 x i8] }>
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::pair.19" = type { ptr, ptr }

$_ZN8Scenario17VariableReferenceC2EPS_PKc = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EEC2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev = comdat any

$_ZN8ResolverC2EP8Scenario = comdat any

$__clang_call_terminate = comdat any

$_ZN10Expression8ResolverD2Ev = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm = comdat any

$_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm = comdat any

$_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EEixEm = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EED2Ev = comdat any

$_ZN10Expression5ValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN10Expression5ValueC2Eb = comdat any

$_ZN10Expression5ValueC2Ed = comdat any

$_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_ = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEptEv = comdat any

$_ZNK13ValueIterator11getPositionEv = comdat any

$_ZNKSt6vectorI13ValueIteratorSaIS0_EEixEm = comdat any

$_ZN8ResolverD0Ev = comdat any

$_ZN10Expression7FunctorC2Ev = comdat any

$_ZN8Scenario17VariableReferenceD2Ev = comdat any

$_ZN8Scenario17VariableReferenceD0Ev = comdat any

$_ZNK8Scenario17VariableReference3dupEv = comdat any

$_ZNK8Scenario17VariableReference7getNameEv = comdat any

$_ZNK8Scenario17VariableReference11getArgTypesEv = comdat any

$_ZNK10Expression7Functor10getNumArgsEv = comdat any

$_ZNK8Scenario17VariableReference13getReturnTypeEv = comdat any

$_ZN8Scenario17VariableReference8evaluateEPN10Expression5ValueEi = comdat any

$_ZN8Scenario17VariableReference3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi = comdat any

$_ZN10Expression7FunctorD2Ev = comdat any

$_ZN10Expression7FunctorD0Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI13ValueIteratorEC2Ev = comdat any

$_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorI13ValueIteratorEC2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZN10Expression8ResolverC2Ev = comdat any

$_ZN10Expression8ResolverD0Ev = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEED2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE7destroyISB_EEvRSD_PT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE7destroyISB_EEvPT_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE10deallocateERSD_PSC_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE10deallocateEPSC_m = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE9_M_mbeginEv = comdat any

$_ZN10Expression5ValueaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN10Expression5ValueaSEb = comdat any

$_ZN10Expression5ValueaSEd = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt8_DestroyIP13ValueIteratorS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EED2Ev = comdat any

$_ZSt8_DestroyIP13ValueIteratorEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIP13ValueIteratorEEvT_S4_ = comdat any

$_ZSt8_DestroyI13ValueIteratorEvPT_ = comdat any

$_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE13_M_deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorI13ValueIteratorED2Ev = comdat any

$_ZNSt16allocator_traitsISaI13ValueIteratorEE10deallocateERS1_PS0_m = comdat any

$_ZNSt15__new_allocatorI13ValueIteratorE10deallocateEPS0_m = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EE15_M_erase_at_endEPS0_ = comdat any

$_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIP13ValueIteratormS0_ET_S2_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorI13ValueIteratorSaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIP13ValueIteratorS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZNSt6vectorI13ValueIteratorSaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaI13ValueIteratorEE8max_sizeERKS1_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorI13ValueIteratorE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorI13ValueIteratorE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIP13ValueIteratormET_S2_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_ = comdat any

$_ZSt10_ConstructI13ValueIteratorJEEvPT_DpOT0_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaI13ValueIteratorEE8allocateERS1_m = comdat any

$_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv = comdat any

$_ZSt22__uninitialized_copy_aIPK13ValueIteratorPS0_S0_ET0_T_S5_S4_RSaIT1_E = comdat any

$_ZSt32__make_move_if_noexcept_iteratorI13ValueIteratorPKS0_ET0_PT_ = comdat any

$_ZSt18uninitialized_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ValueIteratorPS2_EET0_T_S7_S6_ = comdat any

$_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_ = comdat any

$_ZSt10_ConstructI13ValueIteratorJRKS0_EEvPT_DpOT0_ = comdat any

$_ZN13ValueIteratorC2ERKS_ = comdat any

$_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2ERKS3_ = comdat any

$_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIN13ValueIterator4ItemEES2_E17_S_select_on_copyERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EEC2EmRKS2_ = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E = comdat any

$_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE5beginEv = comdat any

$_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE3endEv = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE37select_on_container_copy_constructionERKS2_ = comdat any

$_ZNSaIN13ValueIterator4ItemEEC2ERKS1_ = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEEC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2ERKS2_ = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE11_M_max_sizeEv = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_ = comdat any

$_ZN9__gnu_cxxneIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_ = comdat any

$_ZSt10_ConstructIN13ValueIterator4ItemEJRKS1_EEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEppEv = comdat any

$_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZN13ValueIterator4ItemC2ERKS0_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_ = comdat any

$_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_ = comdat any

$_ZN13ValueIterator4ItemD2Ev = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIN13ValueIterator4ItemEE10deallocateEPS1_m = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_ = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_ = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv = comdat any

$_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv = comdat any

$_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEdeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2ERKSt17_Rb_tree_iteratorISA_E = comdat any

$_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS7_EEEbE4typeELb1EEES7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEclERKSA_ = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE7_M_addrEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv = comdat any

$_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEERSG_DpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node6_M_keyEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSJ_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE8allocateERSD_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESI_IJEEEEEvPT_DpOT0_ = comdat any

$_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE = comdat any

$_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_ = comdat any

$_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_ = comdat any

$_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_ = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEppEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_ = comdat any

$_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTSN10Expression8ResolverE = comdat any

$_ZTIN10Expression8ResolverE = comdat any

$_ZTVN8Scenario17VariableReferenceE = comdat any

$_ZTSN8Scenario17VariableReferenceE = comdat any

$_ZTSN10Expression7FunctorE = comdat any

$_ZTIN10Expression7FunctorE = comdat any

$_ZTIN8Scenario17VariableReferenceE = comdat any

$_ZTVN10Expression7FunctorE = comdat any

$_ZTV17opp_runtime_error = comdat any

$_ZTVN10Expression8ResolverE = comdat any

$_ZTV10cException = comdat any

$_ZSt19piecewise_construct = comdat any

@.str = private unnamed_addr constant [28 x i8] c"Unrecognized function: %s()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTISt9exception = external constant ptr
@.str.1 = private unnamed_addr constant [44 x i8] c"Cannot parse constraint expression `%s': %s\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Wrong value for iteration variable %s: %s\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Are you sure you want to generate more than one million runs?\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Cannot evaluate constraint expression: %s\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"Iterators or constraint too restrictive: not even one run can be generated\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Run number %d is out of range\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Unknown iteration variable: %s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@_ZTV8Resolver = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI8Resolver, ptr @_ZN10Expression8ResolverD2Ev, ptr @_ZN8ResolverD0Ev, ptr @_ZN8Resolver15resolveVariableEPKc, ptr @_ZN8Resolver15resolveFunctionEPKci] }, align 8
@_ZTS8Resolver = dso_local constant [10 x i8] c"8Resolver\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN10Expression8ResolverE = linkonce_odr dso_local constant [24 x i8] c"N10Expression8ResolverE\00", comdat, align 1
@_ZTIN10Expression8ResolverE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10Expression8ResolverE }, comdat, align 8
@_ZTI8Resolver = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8Resolver, ptr @_ZTIN10Expression8ResolverE }, align 8
@_ZTVN8Scenario17VariableReferenceE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN8Scenario17VariableReferenceE, ptr @_ZN8Scenario17VariableReferenceD2Ev, ptr @_ZN8Scenario17VariableReferenceD0Ev, ptr @_ZNK8Scenario17VariableReference3dupEv, ptr @_ZNK8Scenario17VariableReference7getNameEv, ptr @_ZNK8Scenario17VariableReference11getArgTypesEv, ptr @_ZNK10Expression7Functor10getNumArgsEv, ptr @_ZNK8Scenario17VariableReference13getReturnTypeEv, ptr @_ZN8Scenario17VariableReference8evaluateEPN10Expression5ValueEi, ptr @_ZN8Scenario17VariableReference3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi] }, comdat, align 8
@_ZTSN8Scenario17VariableReferenceE = linkonce_odr dso_local constant [31 x i8] c"N8Scenario17VariableReferenceE\00", comdat, align 1
@_ZTSN10Expression7FunctorE = linkonce_odr dso_local constant [23 x i8] c"N10Expression7FunctorE\00", comdat, align 1
@_ZTIN10Expression7FunctorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN10Expression7FunctorE }, comdat, align 8
@_ZTIN8Scenario17VariableReferenceE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN8Scenario17VariableReferenceE, ptr @_ZTIN10Expression7FunctorE }, comdat, align 8
@_ZTVN10Expression7FunctorE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN10Expression7FunctorE, ptr @_ZN10Expression7FunctorD2Ev, ptr @_ZN10Expression7FunctorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK10Expression7Functor10getNumArgsEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@_ZTVN10Expression8ResolverE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN10Expression8ResolverE, ptr @_ZN10Expression8ResolverD2Ev, ptr @_ZN10Expression8ResolverD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN8ScenarioC1ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc
@_ZN8ScenarioD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN8ScenarioD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN8Resolver15resolveVariableEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %3 = load i8, ptr %1, align 1, !tbaa !273
  %4 = icmp eq i8 %3, 36
  %5 = zext i1 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
  %8 = getelementptr inbounds %class.Resolver, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !276
  invoke void @_ZN8Scenario17VariableReferenceC2EPS_PKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %9, ptr noundef nonnull %6) #17
          to label %10 unwind label %11

10:                                               ; preds = %2
  ret ptr %7

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %7) #18
  resume { ptr, i32 } %12
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReferenceC2EPS_PKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  tail call void @_ZN10Expression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN8Scenario17VariableReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !280
  %4 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %5 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !282
  %6 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %2) #17
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  tail call void @_ZN10Expression7FunctorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  resume { ptr, i32 } %9
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN8Resolver15resolveFunctionEPKci(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, i32 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %4 = tail call noundef zeroext i1 @_ZN12MathFunction8supportsEPKc(ptr noundef %1) #17
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16
  invoke void @_ZN12MathFunctionC1EPKc(ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef %1) #17
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %6) #18
  br label %15

10:                                               ; preds = %3
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, ptr noundef %1) #17
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #21
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #20
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi { ptr, i32 } [ %9, %8 ], [ %14, %13 ]
  resume { ptr, i32 } %16
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN12MathFunction8supportsEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN12MathFunctionC1EPKc(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !280
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %4 = alloca %class.Resolver, align 8
  store ptr %1, ptr %0, align 8, !tbaa !289
  %5 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorI13ValueIteratorSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %6 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #19
  %7 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !290
  %8 = icmp eq ptr %2, null
  br i1 %8, label %52, label %9, !prof !304

9:                                                ; preds = %3
  %10 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %11 unwind label %17

11:                                               ; preds = %9
  invoke void @_ZN10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %10) #17
          to label %12 unwind label %21

12:                                               ; preds = %11
  store ptr %10, ptr %7, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  call void @_ZN8ResolverC2EP8Scenario(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0) #17
  %13 = load ptr, ptr %7, align 8, !tbaa !290
  %14 = load ptr, ptr %13, align 8, !tbaa !280
  %15 = getelementptr inbounds ptr, ptr %14, i64 9
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(20) %13, ptr noundef nonnull %2, ptr noundef nonnull %4) #17
          to label %48 unwind label %25

17:                                               ; preds = %52, %9
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  br label %84

21:                                               ; preds = %11
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  tail call void @_ZdlPv(ptr noundef nonnull %10) #18
  br label %84

25:                                               ; preds = %12
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  %29 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #20
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = call ptr @__cxa_begin_catch(ptr %27) #20
  %33 = call ptr @__cxa_allocate_exception(i64 128) #20
  %34 = load ptr, ptr %32, align 8, !tbaa !280
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %32) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %33, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, ptr noundef %37) #17
          to label %38 unwind label %39

38:                                               ; preds = %31
  invoke void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
          to label %92 unwind label %41

39:                                               ; preds = %31
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %33) #20
  br label %43

41:                                               ; preds = %38
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  invoke void @__cxa_end_catch()
          to label %45 unwind label %89

45:                                               ; preds = %43
  %46 = extractvalue { ptr, i32 } %44, 0
  %47 = extractvalue { ptr, i32 } %44, 1
  br label %49

48:                                               ; preds = %12
  call void @_ZN10Expression8ResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %52

49:                                               ; preds = %45, %25
  %50 = phi i32 [ %47, %45 ], [ %28, %25 ]
  %51 = phi ptr [ %46, %45 ], [ %27, %25 ]
  call void @_ZN10Expression8ResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %84

52:                                               ; preds = %48, %3
  %53 = load ptr, ptr %0, align 8, !tbaa !305
  %54 = call noundef i64 @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %53) #19
  invoke void @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %54) #17
          to label %55 unwind label %17

55:                                               ; preds = %52
  %56 = load ptr, ptr %0, align 8, !tbaa !305
  %57 = call noundef i64 @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %56) #19
  %58 = trunc i64 %57 to i32
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %61, label %60, !prof !306

60:                                               ; preds = %73, %55
  ret void

61:                                               ; preds = %55, %73
  %62 = phi i64 [ %74, %73 ], [ 0, %55 ]
  %63 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %62) #19
  %64 = load ptr, ptr %0, align 8, !tbaa !305
  %65 = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %64, i64 noundef %62) #19
  %66 = getelementptr inbounds %"struct.SectionBasedConfiguration::IterationVariable", ptr %65, i64 0, i32 2
  %67 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %66) #19
  invoke void @_ZN13ValueIterator5parseEPKc(ptr noundef nonnull align 8 dereferenceable(36) %63, ptr noundef %67) #17
          to label %68 unwind label %80

68:                                               ; preds = %61
  %69 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %62) #19
  %70 = load ptr, ptr %0, align 8, !tbaa !305
  %71 = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %70, i64 noundef %62) #19
  %72 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(32) %71) #17
          to label %73 unwind label %80

73:                                               ; preds = %68
  store ptr %69, ptr %72, align 8, !tbaa !289
  %74 = add nuw nsw i64 %62, 1
  %75 = load ptr, ptr %0, align 8, !tbaa !305
  %76 = call noundef i64 @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %75) #19
  %77 = shl i64 %76, 32
  %78 = ashr exact i64 %77, 32
  %79 = icmp slt i64 %74, %78
  br i1 %79, label %61, label %60, !prof !307, !llvm.loop !308

80:                                               ; preds = %68, %61
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = extractvalue { ptr, i32 } %81, 0
  %83 = extractvalue { ptr, i32 } %81, 1
  br label %84

84:                                               ; preds = %80, %49, %21, %17
  %85 = phi i32 [ %83, %80 ], [ %20, %17 ], [ %50, %49 ], [ %24, %21 ]
  %86 = phi ptr [ %82, %80 ], [ %19, %17 ], [ %51, %49 ], [ %23, %21 ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #19
  call void @_ZNSt6vectorI13ValueIteratorSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %87 = insertvalue { ptr, i32 } poison, ptr %86, 0
  %88 = insertvalue { ptr, i32 } %87, i32 %85, 1
  resume { ptr, i32 } %88

89:                                               ; preds = %43
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #22
  unreachable

92:                                               ; preds = %38
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ValueIteratorSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZN10ExpressionC1Ev(ptr noundef nonnull align 8 dereferenceable(20)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8ResolverC2EP8Scenario(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !272 {
  tail call void @_ZN10Expression8ResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV8Resolver, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !280
  %3 = getelementptr inbounds %class.Resolver, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !276
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #3

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression8ResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br i1 %4, label %6, label %8, !prof !304

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #17
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !310
  %12 = getelementptr inbounds %class.ValueIterator, ptr %11, i64 %1
  tail call void @_ZNSt6vectorI13ValueIteratorSaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #19
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !311 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<SectionBasedConfiguration::IterationVariable, std::allocator<SectionBasedConfiguration::IterationVariable>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !312
  %4 = load ptr, ptr %0, align 8, !tbaa !314
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 7
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !315 {
  %3 = load ptr, ptr %0, align 8, !tbaa !310
  %4 = getelementptr inbounds %class.ValueIterator, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN13ValueIterator5parseEPKc(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(128) ptr @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !316 {
  %3 = load ptr, ptr %0, align 8, !tbaa !314
  %4 = getelementptr inbounds %"struct.SectionBasedConfiguration::IterationVariable", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::less", align 1
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.18", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %9 = tail call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  store ptr %9, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %10 = tail call ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  store ptr %10, ptr %4, align 8
  %11 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  br i1 %11, label %15, label %12, !prof !304

12:                                               ; preds = %2
  call void @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %13 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %14 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br i1 %14, label %16, label %19, !prof !304

15:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %16

16:                                               ; preds = %15, %12
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2ERKSt17_Rb_tree_iteratorISA_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  call void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS7_EEEbE4typeELb1EEES7_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #20
  %17 = load ptr, ptr %6, align 8
  %18 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %17, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #17
  store ptr %18, ptr %3, align 8, !tbaa.struct !317
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  br label %19

19:                                               ; preds = %16, %12
  %20 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %21 = getelementptr inbounds %"struct.std::pair", ptr %20, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ValueIteratorSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIP13ValueIteratorS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN8ScenarioD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 align 2 !prof !288 {
  %2 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  %3 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorI13ValueIteratorSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN8Scenario20getIterationVariableEPKc(ptr dead_on_unwind noalias writable sret(%"struct.Expression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @_ZNK8Scenario11getVariableB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) #17
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #17
  %7 = load i8, ptr %6, align 1, !tbaa !273
  %8 = icmp eq i8 %7, 34
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %10 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  invoke void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %10) #17
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN10Expression5ValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
          to label %12 unwind label %17

12:                                               ; preds = %11
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %54

13:                                               ; preds = %43, %47, %44
  %14 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %21

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %14, %13 ]
  %23 = extractvalue { ptr, i32 } %22, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #20
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = extractvalue { ptr, i32 } %22, 0
  %28 = call ptr @__cxa_begin_catch(ptr %27) #20
  %29 = call ptr @__cxa_allocate_exception(i64 128) #20
  %30 = load ptr, ptr %28, align 8, !tbaa !280
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %28) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %29, ptr noundef nonnull @.str.4, ptr noundef %2, ptr noundef %33) #17
          to label %34 unwind label %48

34:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
          to label %60 unwind label %50

35:                                               ; preds = %3
  %36 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %37 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(5) @.str.2) #23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(6) @.str.3) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  invoke void @_ZN10Expression5ValueC2Eb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %38) #17
          to label %54 unwind label %13

44:                                               ; preds = %39
  %45 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  %46 = invoke noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef %45, ptr noundef null) #17
          to label %47 unwind label %13

47:                                               ; preds = %44
  invoke void @_ZN10Expression5ValueC2Ed(ptr noundef nonnull align 8 dereferenceable(48) %0, double noundef %46) #17
          to label %54 unwind label %13

48:                                               ; preds = %26
  %49 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %29) #20
  br label %52

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  invoke void @__cxa_end_catch()
          to label %55 unwind label %57

54:                                               ; preds = %43, %47, %12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  ret void

55:                                               ; preds = %52, %21
  %56 = phi { ptr, i32 } [ %22, %21 ], [ %53, %52 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  resume { ptr, i32 } %56

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #22
  unreachable

60:                                               ; preds = %34
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK8Scenario11getVariableB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !319 {
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %8 = getelementptr inbounds %class.Scenario, ptr %1, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %9 unwind label %17

9:                                                ; preds = %3
  %10 = invoke ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
          to label %11 unwind label %19

11:                                               ; preds = %9
  store ptr %10, ptr %4, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %12 = call ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #19
  store ptr %12, ptr %7, align 8
  %13 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  br i1 %13, label %14, label %25, !prof !320

14:                                               ; preds = %11
  %15 = call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull @.str.9, ptr noundef %2) #17
          to label %16 unwind label %23

16:                                               ; preds = %14
  call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

17:                                               ; preds = %3
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %21

19:                                               ; preds = %9
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %29

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %15) #20
  br label %29

25:                                               ; preds = %11
  %26 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %27 = getelementptr inbounds %"struct.std::pair", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !321
  call void @_ZNK13ValueIterator3getB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %28) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void

29:                                               ; preds = %23, %21
  %30 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  resume { ptr, i32 } %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: optsize
declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression5ValueC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %3 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  invoke void @_ZN10Expression5ValueaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression5ValueC2Eb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %3 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  tail call void @_ZN10Expression5ValueaSEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) #17
  ret void
}

; Function Attrs: optsize
declare noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression5ValueC2Ed(ptr noundef nonnull align 8 dereferenceable(48) %0, double noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %3 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  tail call void @_ZN10Expression5ValueaSEd(ptr noundef nonnull align 8 dereferenceable(48) %0, double noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN8Scenario10getNumRunsEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %2 = tail call noundef zeroext i1 @_ZN8Scenario7restartEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %2, label %3, label %16, !prof !304

3:                                                ; preds = %1
  %4 = tail call noundef zeroext i1 @_ZN8Scenario4nextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %4, label %5, label %16, !prof !323

5:                                                ; preds = %3, %13
  %6 = phi i32 [ %14, %13 ], [ 1, %3 ]
  %7 = icmp eq i32 %6, 1000001
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.5) #17
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #20
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = add nuw nsw i32 %6, 1
  %15 = tail call noundef zeroext i1 @_ZN8Scenario4nextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %15, label %5, label %16, !prof !324, !llvm.loop !325

16:                                               ; preds = %13, %3, %1
  %17 = phi i32 [ 0, %1 ], [ 1, %3 ], [ %14, %13 ]
  ret i32 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN8Scenario7restartEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !319 {
  %2 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2
  %3 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %33, label %5, !prof !320

5:                                                ; preds = %1
  %6 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %14, label %33, !prof !326

9:                                                ; preds = %14
  %10 = and i8 %20, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %33, label %12, !prof !327

12:                                               ; preds = %9
  %13 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 1
  br label %26

14:                                               ; preds = %5, %14
  %15 = phi i64 [ %21, %14 ], [ 0, %5 ]
  %16 = phi i8 [ %20, %14 ], [ 0, %5 ]
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %15) #19
  tail call void @_ZN13ValueIterator7restartEv(ptr noundef nonnull align 8 dereferenceable(36) %17) #17
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %15) #19
  %19 = tail call noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr noundef nonnull align 8 dereferenceable(36) %18) #17
  %20 = select i1 %19, i8 %16, i8 1, !prof !320
  %21 = add nuw nsw i64 %15, 1
  %22 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %23 = shl i64 %22, 32
  %24 = ashr exact i64 %23, 32
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %14, label %9, !prof !328, !llvm.loop !329

26:                                               ; preds = %12, %31
  %27 = load ptr, ptr %13, align 8, !tbaa !290
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !330

29:                                               ; preds = %26
  %30 = tail call noundef zeroext i1 @_ZN8Scenario18evaluateConstraintEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %30, label %33, label %31, !prof !330

31:                                               ; preds = %29
  %32 = tail call noundef zeroext i1 @_ZN8Scenario3incEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %32, label %26, label %33, !llvm.loop !331

33:                                               ; preds = %31, %26, %29, %5, %9, %1
  %34 = phi i1 [ true, %1 ], [ false, %9 ], [ false, %5 ], [ true, %29 ], [ true, %26 ], [ false, %31 ]
  ret i1 %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN8Scenario4nextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !288 {
  %2 = tail call noundef zeroext i1 @_ZN8Scenario3incEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %2, label %3, label %12, !prof !332

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %3, %10
  %6 = load ptr, ptr %4, align 8, !tbaa !290
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = tail call noundef zeroext i1 @_ZN8Scenario18evaluateConstraintEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call noundef zeroext i1 @_ZN8Scenario3incEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %11, label %5, label %12, !llvm.loop !333

12:                                               ; preds = %8, %5, %10, %1
  %13 = phi i1 [ false, %1 ], [ true, %8 ], [ true, %5 ], [ false, %10 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !334 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !318
  %4 = load ptr, ptr %0, align 8, !tbaa !310
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 40
  ret i64 %8
}

; Function Attrs: optsize
declare void @_ZN13ValueIterator7restartEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN8Scenario18evaluateConstraintEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %2 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !290
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(20) %3) #17
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret i1 %7

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #20
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #20
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  %18 = load ptr, ptr %16, align 8, !tbaa !280
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %16) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull @.str.6, ptr noundef %21) #17
          to label %22 unwind label %23

22:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
          to label %34 unwind label %25

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #20
  br label %27

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  invoke void @__cxa_end_catch()
          to label %29 unwind label %31

29:                                               ; preds = %27, %9
  %30 = phi { ptr, i32 } [ %10, %9 ], [ %28, %27 ]
  resume { ptr, i32 } %30

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN8Scenario3incEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !288 {
  %2 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 2
  %3 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, -1
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %20, !prof !306

7:                                                ; preds = %1
  %8 = zext nneg i32 %5 to i64
  br label %9

9:                                                ; preds = %7, %14
  %10 = phi i64 [ %8, %7 ], [ %16, %14 ]
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #19
  tail call void @_ZN13ValueIteratorppEi(ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef 0) #17
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #19
  %13 = tail call noundef zeroext i1 @_ZNK13ValueIterator3endEv(ptr noundef nonnull align 8 dereferenceable(36) %12) #17
  br i1 %13, label %14, label %18, !prof !304

14:                                               ; preds = %9
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %10) #19
  tail call void @_ZN13ValueIterator7restartEv(ptr noundef nonnull align 8 dereferenceable(36) %15) #17
  %16 = add nsw i64 %10, -1
  %17 = icmp sgt i64 %10, 0
  br i1 %17, label %9, label %18, !prof !307, !llvm.loop !335

18:                                               ; preds = %9, %14
  %19 = xor i1 %13, true
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i1 [ false, %1 ], [ %19, %18 ]
  ret i1 %21
}

; Function Attrs: optsize
declare void @_ZN13ValueIteratorppEi(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN8Scenario7gotoRunEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %3 = tail call noundef zeroext i1 @_ZN8Scenario7restartEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %3, label %4, label %6, !prof !304

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %15, label %14, !prof !323

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull @.str.7) #17
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %23

11:                                               ; preds = %15
  %12 = add nuw nsw i32 %16, 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %15, !prof !336, !llvm.loop !337

14:                                               ; preds = %11, %4
  ret void

15:                                               ; preds = %4, %11
  %16 = phi i32 [ %12, %11 ], [ 0, %4 ]
  %17 = tail call noundef zeroext i1 @_ZN8Scenario4nextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #17
  br i1 %17, label %11, label %18

18:                                               ; preds = %15
  %19 = tail call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %19, ptr noundef nonnull @.str.8, i32 noundef %1) #17
          to label %20 unwind label %21

20:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi ptr [ %19, %21 ], [ %7, %9 ]
  %25 = phi { ptr, i32 } [ %22, %21 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %24) #20
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !338 {
  %3 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #24
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #17
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #17
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat !prof !316 {
  %3 = load ptr, ptr %0, align 8, !tbaa !339
  %4 = load ptr, ptr %1, align 8, !tbaa !339
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = load ptr, ptr %0, align 8, !tbaa !339
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #17
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZNK13ValueIterator3getB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK8Scenario19getIteratorPositionEPKc(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::allocator", align 1
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %7 = getelementptr inbounds %class.Scenario, ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
          to label %8 unwind label %16

8:                                                ; preds = %2
  %9 = invoke ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
          to label %10 unwind label %18

10:                                               ; preds = %8
  store ptr %9, ptr %3, align 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %11 = call ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #19
  store ptr %11, ptr %6, align 8
  %12 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  br i1 %12, label %13, label %24, !prof !332

13:                                               ; preds = %10
  %14 = call ptr @__cxa_allocate_exception(i64 128) #20
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %14, ptr noundef nonnull @.str.9, ptr noundef %1) #17
          to label %15 unwind label %22

15:                                               ; preds = %13
  call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #21
  unreachable

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %8
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %29

22:                                               ; preds = %13
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %14) #20
  br label %29

24:                                               ; preds = %10
  %25 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %26 = getelementptr inbounds %"struct.std::pair", ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !321
  %28 = call noundef i32 @_ZNK13ValueIterator11getPositionEv(ptr noundef nonnull align 8 dereferenceable(36) %27) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %28

29:                                               ; preds = %22, %20
  %30 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  resume { ptr, i32 } %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK13ValueIterator11getPositionEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !341
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK8Scenario3strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #17
  %5 = load ptr, ptr %1, align 8, !tbaa !305
  %6 = call noundef i64 @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %3, i64 16
  %11 = getelementptr inbounds %class.Scenario, ptr %1, i64 0, i32 2
  br label %13

12:                                               ; preds = %31, %2
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %3) #17
          to label %46 unwind label %47

13:                                               ; preds = %9, %31
  %14 = phi i64 [ 0, %9 ], [ %32, %31 ]
  %15 = icmp eq i64 %14, 0
  %16 = select i1 %15, ptr @.str.11, ptr @.str.10
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %16) #17
          to label %18 unwind label %38

18:                                               ; preds = %13
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.12) #17
          to label %20 unwind label %38

20:                                               ; preds = %18
  %21 = load ptr, ptr %1, align 8, !tbaa !305
  %22 = call noundef nonnull align 8 dereferenceable(128) ptr @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %21, i64 noundef %14) #19
  %23 = getelementptr inbounds %"struct.SectionBasedConfiguration::IterationVariable", ptr %22, i64 0, i32 1
  %24 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(32) %23) #17
          to label %25 unwind label %38

25:                                               ; preds = %20
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.13) #17
          to label %27 unwind label %38

27:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %28 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %14) #19
  invoke void @_ZNK13ValueIterator3getB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(36) %28) #17
          to label %29 unwind label %40

29:                                               ; preds = %27
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
          to label %31 unwind label %42

31:                                               ; preds = %29
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  %32 = add nuw nsw i64 %14, 1
  %33 = load ptr, ptr %1, align 8, !tbaa !305
  %34 = call noundef i64 @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %33) #19
  %35 = shl i64 %34, 32
  %36 = ashr exact i64 %35, 32
  %37 = icmp slt i64 %32, %36
  br i1 %37, label %13, label %12, !llvm.loop !348

38:                                               ; preds = %25, %20, %18, %13
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %49

40:                                               ; preds = %27
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %29
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %49

46:                                               ; preds = %12
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #19
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  ret void

47:                                               ; preds = %12
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %49

49:                                               ; preds = %38, %44, %47
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %45, %44 ], [ %39, %38 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #19
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  resume { ptr, i32 } %50
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %3 = load ptr, ptr %0, align 8, !tbaa !310
  %4 = getelementptr inbounds %class.ValueIterator, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8ResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN10Expression8ResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression7FunctorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN10Expression7FunctorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !280
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN8Scenario17VariableReferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !280
  %2 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZN10Expression7FunctorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN8Scenario17VariableReferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8Scenario17VariableReference3dupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
  %3 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !282
  %5 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  %6 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  invoke void @_ZN8Scenario17VariableReferenceC2EPS_PKc(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %4, ptr noundef %6) #17
          to label %7 unwind label %8

7:                                                ; preds = %1
  ret ptr %2

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8Scenario17VariableReference7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8Scenario17VariableReference11getArgTypesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  ret ptr @.str.11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10Expression7Functor10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !280
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #23
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNK8Scenario17VariableReference13getReturnTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  ret i8 68
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReference8evaluateEPN10Expression5ValueEi(ptr dead_on_unwind noalias writable sret(%"struct.Expression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 !prof !272 {
  %5 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !282
  %7 = getelementptr inbounds %"class.Scenario::VariableReference", ptr %1, i64 0, i32 2
  %8 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  tail call void @_ZN8Scenario20getIterationVariableEPKc(ptr dead_on_unwind writable sret(%"struct.Expression::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef %8) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN8Scenario17VariableReference3strEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = load ptr, ptr %1, align 8, !tbaa !280
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
          to label %10 unwind label %11

10:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  ret void

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression7FunctorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression7FunctorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #22
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSaI13ValueIteratorEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI13ValueIteratorEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt15__new_allocatorI13ValueIteratorEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI13ValueIteratorEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !349 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !350 {
  store i32 0, ptr %0, align 8, !tbaa !351
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !352 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !353
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !354
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !355
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !356
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression8ResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN10Expression8ResolverE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !280
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression8ResolverD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !357 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !280
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !357 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #16
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #17
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !358
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !272 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14) #17
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #17
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !357 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !362, !range !363, !noundef !364
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !365
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat !prof !288 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !366 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #17
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !319 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !367

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #19
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #17
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #19
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !368, !llvm.loop !369

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !371
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #17
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE7destroyISB_EEvRSD_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE10deallocateERSD_PSC_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #17
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
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE7destroyISB_EEvRSD_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE7destroyISB_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !372 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE7destroyISB_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE10deallocateERSD_PSC_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !288 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE10deallocateEPSC_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE10deallocateEPSC_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !353
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression5ValueaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !272 {
  store i32 83, ptr %0, align 8, !tbaa !373
  %3 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression5ValueaSEb(ptr noundef nonnull align 8 dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %3 = zext i1 %1 to i8
  store i32 66, ptr %0, align 8, !tbaa !373
  %4 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 4, !tbaa !377
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10Expression5ValueaSEd(ptr noundef nonnull align 8 dereferenceable(48) %0, double noundef %1) local_unnamed_addr #4 comdat align 2 !prof !272 {
  store i32 68, ptr %0, align 8, !tbaa !373
  %3 = getelementptr inbounds %"struct.Expression::Value", ptr %0, i64 0, i32 2
  store double %1, ptr %3, align 8, !tbaa !378
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !379 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !380 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #17
  store i64 %6, ptr %4, align 8, !tbaa !381
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !382

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #17
  %10 = load i64, ptr %4, align 8, !tbaa !381
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #17
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #17
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #19
  store ptr null, ptr %5, align 8, !tbaa !383
  %15 = load i64, ptr %4, align 8, !tbaa !381
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #17
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !380 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !289
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #17
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !380 {
  store ptr %1, ptr %0, align 8, !tbaa !383
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !380 {
  %2 = load ptr, ptr %0, align 8, !tbaa !383
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !385

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #17
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
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !380 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat !prof !380 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP13ValueIteratorS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !319 {
  tail call void @_ZSt8_DestroyIP13ValueIteratorEvT_S2_(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !372 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !386
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 40
  invoke void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #17
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI13ValueIteratorED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP13ValueIteratorEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !319 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIP13ValueIteratorEEvT_S4_(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIP13ValueIteratorEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !319 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !367

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyI13ValueIteratorEvPT_(ptr noundef %5) #17
  %6 = getelementptr inbounds %class.ValueIterator, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !368, !llvm.loop !387

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyI13ValueIteratorEvPT_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !288 {
  tail call void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #19
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN13ValueIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !319 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !388

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI13ValueIteratorEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #17
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI13ValueIteratorED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI13ValueIteratorEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !288 {
  tail call void @_ZNSt15__new_allocatorI13ValueIteratorE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI13ValueIteratorE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %61, label %4

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !386
  %8 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !318
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = sdiv exact i64 %12, 40
  %14 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !318
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIP13ValueIteratormS0_ET_S2_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #17
  store ptr %23, ptr %8, align 8, !tbaa !318
  br label %61

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !310
  %26 = load ptr, ptr %8, align 8, !tbaa !318
  %27 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.17) #17
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #17
  %29 = getelementptr inbounds %class.ValueIterator, ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIP13ValueIteratormS0_ET_S2_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #17
          to label %36 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #20
  br label %49

36:                                               ; preds = %24
  %37 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %38 = invoke noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIP13ValueIteratorS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %37) #17
          to label %52 unwind label %39

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #20
  %43 = icmp eq ptr %28, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %class.ValueIterator, ptr %29, i64 %1
  %46 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIP13ValueIteratorS0_EvT_S2_RSaIT0_E(ptr noundef nonnull %29, ptr noundef nonnull %45, ptr noundef nonnull align 1 dereferenceable(1) %46) #17
          to label %49 unwind label %47

47:                                               ; preds = %50, %49, %44
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %62

49:                                               ; preds = %32, %44, %39
  invoke void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #17
          to label %50 unwind label %47

50:                                               ; preds = %49
  invoke void @__cxa_rethrow() #21
          to label %65 unwind label %47

51:                                               ; preds = %47
  resume { ptr, i32 } %48

52:                                               ; preds = %36
  %53 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIP13ValueIteratorS0_EvT_S2_RSaIT0_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %53) #17
  %54 = load ptr, ptr %6, align 8, !tbaa !386
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %25 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 40
  tail call void @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %58) #17
  store ptr %28, ptr %0, align 8, !tbaa !310
  %59 = getelementptr inbounds %class.ValueIterator, ptr %29, i64 %1
  store ptr %59, ptr %8, align 8, !tbaa !318
  %60 = getelementptr inbounds %class.ValueIterator, ptr %28, i64 %27
  store ptr %60, ptr %6, align 8, !tbaa !386
  br label %61

61:                                               ; preds = %20, %52, %2
  ret void

62:                                               ; preds = %47
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #22
  unreachable

65:                                               ; preds = %50
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI13ValueIteratorSaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator, std::allocator<ValueIterator>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIP13ValueIteratorS0_EvT_S2_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #17
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
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !372 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %3 = tail call noundef i64 @_ZNSt6vectorI13ValueIteratorSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIP13ValueIteratormS0_ET_S2_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !288 {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIP13ValueIteratormET_S2_T0_(ptr noundef %0, i64 noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !381
  %6 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !332

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #24
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %13 = tail call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store i64 %13, ptr %5, align 8, !tbaa !381
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %15 = load i64, ptr %14, align 8, !tbaa !381
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  %17 = call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !332

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !332

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !332

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaI13ValueIteratorEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt34__uninitialized_move_if_noexcept_aIP13ValueIteratorS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !288 {
  %5 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorI13ValueIteratorPKS0_ET0_PT_(ptr noundef %0) #17
  %6 = tail call noundef ptr @_ZSt32__make_move_if_noexcept_iteratorI13ValueIteratorPKS0_ET0_PT_(ptr noundef %1) #17
  %7 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPK13ValueIteratorPS0_S0_ET0_T_S5_S4_RSaIT1_E(ptr noundef %5, ptr noundef %6, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %7
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI13ValueIteratorSaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !372 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  store i64 230584300921369395, ptr %2, align 8, !tbaa !381
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaI13ValueIteratorEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !381
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %6 = load i64, ptr %5, align 8, !tbaa !381
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !372 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI13ValueIteratorEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 !prof !372 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorI13ValueIteratorE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat !prof !389 {
  %3 = load i64, ptr %1, align 8, !tbaa !381
  %4 = load i64, ptr %0, align 8, !tbaa !381
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !390
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI13ValueIteratorE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 !prof !372 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorI13ValueIteratorE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI13ValueIteratorE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 !prof !391 {
  ret i64 230584300921369395
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIP13ValueIteratormET_S2_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !288 {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_(ptr noundef %0, i64 noundef %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4, !prof !307

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructI13ValueIteratorJEEvPT_DpOT0_(ptr noundef %5) #17
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %class.ValueIterator, ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !prof !306, !llvm.loop !392

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #20
  invoke void @_ZSt8_DestroyIP13ValueIteratorEvT_S2_(ptr noundef %0, ptr noundef %5) #17
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #21
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
  tail call void @__clang_call_terminate(ptr %23) #22
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI13ValueIteratorJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !288 {
  tail call void @_ZN13ValueIteratorC1EPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef null) #17
  ret void
}

; Function Attrs: optsize
declare void @_ZN13ValueIteratorC1EPKc(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat !prof !393 {
  %3 = load i64, ptr %0, align 8, !tbaa !381
  %4 = load i64, ptr %1, align 8, !tbaa !381
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !394
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI13ValueIteratorEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorI13ValueIteratorE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !395

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 461168601842738790
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 40
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #16
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPK13ValueIteratorPS0_S0_ET0_T_S5_S4_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !288 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt32__make_move_if_noexcept_iteratorI13ValueIteratorPKS0_ET0_PT_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !319 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !288 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ValueIteratorPS2_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ValueIteratorPS2_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !288 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %17, label %5, !prof !396

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZSt10_ConstructI13ValueIteratorJRKS0_EEvPT_DpOT0_(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(36) %7) #17
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %class.ValueIterator, ptr %7, i64 1
  %10 = getelementptr inbounds %class.ValueIterator, ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %17, label %5, !prof !336, !llvm.loop !397

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #20
  invoke void @_ZSt8_DestroyIP13ValueIteratorEvT_S2_(ptr noundef %2, ptr noundef %6) #17
          to label %16 unwind label %19

16:                                               ; preds = %12
  invoke void @__cxa_rethrow() #21
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
  tail call void @__clang_call_terminate(ptr %24) #22
  unreachable

25:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI13ValueIteratorJRKS0_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat !prof !272 {
  tail call void @_ZN13ValueIteratorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13ValueIteratorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %3 = getelementptr inbounds %class.ValueIterator, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.ValueIterator, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13ValueIterator4ItemESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  %3 = alloca %"class.std::allocator.14", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIN13ValueIterator4ItemEES2_E17_S_select_on_copyERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.14") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  invoke void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  %7 = call ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %8 = call ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %9 = load ptr, ptr %0, align 8, !tbaa !398
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #17
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !399
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !400 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !399
  %4 = load ptr, ptr %0, align 8, !tbaa !398
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 72
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIN13ValueIterator4ItemEES2_E17_S_select_on_copyERKS3_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !272 {
  tail call void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE37select_on_container_copy_constructionERKS2_(ptr dead_on_unwind writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !319 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !272 {
  tail call void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #17
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !272 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN13ValueIterator4ItemESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %2 = load ptr, ptr %0, align 8, !tbaa !398
  %3 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !401
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 72
  invoke void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #17
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #22
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE37select_on_container_copy_constructionERKS2_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.14") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 !prof !272 {
  tail call void @_ZNSaIN13ValueIterator4ItemEEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIN13ValueIterator4ItemEEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 !prof !272 {
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 !prof !272 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 !prof !272 {
  tail call void @_ZNSaIN13ValueIterator4ItemEEC2ERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !272 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #17
  store ptr %3, ptr %0, align 8, !tbaa !398
  %4 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !399
  %5 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<ValueIterator::Item, std::allocator<ValueIterator::Item>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !401
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !332

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !395

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 256204778801521550
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 72
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #16
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN13ValueIterator4ItemEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  ret i64 128102389400760775
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !272 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !272 {
  %4 = tail call noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !272 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br i1 %6, label %7, label %19

7:                                                ; preds = %3, %10
  %8 = phi ptr [ %12, %10 ], [ %2, %3 ]
  %9 = call noundef nonnull align 8 dereferenceable(68) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  invoke void @_ZSt10_ConstructIN13ValueIterator4ItemEJRKS1_EEvPT_DpOT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(68) %9) #17
          to label %10 unwind label %14

10:                                               ; preds = %7
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %12 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %8, i64 1
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br i1 %13, label %7, label %19, !llvm.loop !402

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #20
  invoke void @_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_(ptr noundef %2, ptr noundef %8) #17
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
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat !prof !272 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !289
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !289
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN13ValueIterator4ItemEJRKS1_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat !prof !272 {
  tail call void @_ZN13ValueIterator4ItemC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(68) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !403
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !403
  %3 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !403
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !288 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN13ValueIterator4ItemC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) unnamed_addr #0 comdat align 2 {
  %3 = load i8, ptr %1, align 8, !tbaa !405, !range !363, !noundef !364
  store i8 %3, ptr %0, align 8, !tbaa !405
  %4 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) #17
  %6 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %1, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(28) %7, i64 28, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !307

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_(ptr noundef %5) #17
  %6 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !306, !llvm.loop !407

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_(ptr noundef %0) local_unnamed_addr #4 comdat !prof !288 {
  tail call void @_ZN13ValueIterator4ItemD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13ValueIterator4ItemD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %0) unnamed_addr #4 comdat align 2 {
  %2 = getelementptr inbounds %"struct.ValueIterator::Item", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !272 {
  %3 = load ptr, ptr %1, align 8, !tbaa !289
  store ptr %3, ptr %0, align 8, !tbaa !403
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !319 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !388

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #17
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !288 {
  tail call void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat !prof !319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !408
  %4 = load ptr, ptr %1, align 8, !tbaa !408
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !272 {
  tail call void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 !prof !410 {
  %4 = tail call noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = load ptr, ptr %0, align 8, !tbaa !408
  %3 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEERSG_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  %8 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
          to label %9 unwind label %18

9:                                                ; preds = %5
  %10 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %8) #17
          to label %11 unwind label %18

11:                                               ; preds = %9
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = extractvalue { ptr, ptr } %10, 1
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !332

15:                                               ; preds = %11
  %16 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSJ_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %12, ptr nonnull %13) #17
          to label %17 unwind label %18

17:                                               ; preds = %15
  store ptr %16, ptr %6, align 8
  br label %21

18:                                               ; preds = %15, %9, %5
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  resume { ptr, i32 } %19

20:                                               ; preds = %11
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %12) #19
  br label %21

21:                                               ; preds = %20, %17
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  %22 = load ptr, ptr %6, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2ERKSt17_Rb_tree_iteratorISA_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !288 {
  %3 = load ptr, ptr %1, align 8, !tbaa !408
  store ptr %3, ptr %0, align 8, !tbaa !339
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS7_EEEbE4typeELb1EEES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !411 {
  invoke void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
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
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %5 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7, !prof !396

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(ptr noundef nonnull %8) #17
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #19
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #19
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !336, !llvm.loop !412

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #19
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !372 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
  %2 = alloca %"struct.std::_Select1st", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #20
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #17
  %4 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEclERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #20
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !316 {
  store ptr %1, ptr %0, align 8, !tbaa !408
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt10_Select1stISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEclERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 comdat align 2 !prof !413 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 comdat align 2 !prof !414 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !414 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !414 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !410 {
  %3 = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
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
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEERSG_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 !prof !288 {
  store ptr %1, ptr %0, align 8, !tbaa !289
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  store ptr %7, ptr %6, align 8, !tbaa !415
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %4 = alloca %"struct.std::pair.19", align 8
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %14 = call ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  store ptr %14, ptr %6, align 8
  %15 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %16 = icmp eq ptr %14, %15
  %17 = ptrtoint ptr %14 to i64
  br i1 %16, label %18, label %33, !prof !304

18:                                               ; preds = %3
  %19 = call noundef i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21, !prof !304

21:                                               ; preds = %18
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %23 = load ptr, ptr %22, align 8, !tbaa !289
  %24 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %23) #17
  %25 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !289
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %27) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  br label %89

28:                                               ; preds = %21, %18
  %29 = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %30 = extractvalue { ptr, ptr } %29, 0
  store ptr %30, ptr %4, align 8
  %31 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %32 = extractvalue { ptr, ptr } %29, 1
  store ptr %32, ptr %31, align 8
  br label %89

33:                                               ; preds = %3
  %34 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %14) #17
  %35 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %34) #17
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store i64 %17, ptr %8, align 8, !tbaa !289
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %38 = load ptr, ptr %37, align 8, !tbaa !289
  %39 = icmp eq ptr %38, %14
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(8) %42) #17
  br label %59

43:                                               ; preds = %36
  %44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  %45 = load ptr, ptr %44, align 8, !tbaa !408
  %46 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %45) #17
  %47 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load ptr, ptr %8, align 8, !tbaa !408
  %50 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %49) #19
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  store ptr null, ptr %9, align 8, !tbaa !289
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  br label %59

53:                                               ; preds = %48
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %59

54:                                               ; preds = %43
  %55 = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %56 = extractvalue { ptr, ptr } %55, 0
  store ptr %56, ptr %4, align 8
  %57 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %58 = extractvalue { ptr, ptr } %55, 1
  store ptr %58, ptr %57, align 8
  br label %59

59:                                               ; preds = %54, %53, %52, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %89

60:                                               ; preds = %33
  %61 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %14) #17
  %62 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  br i1 %62, label %63, label %88

63:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  %64 = load i64, ptr %6, align 8, !tbaa !289
  store i64 %64, ptr %10, align 8, !tbaa !289
  %65 = inttoptr i64 %64 to ptr
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %67 = load ptr, ptr %66, align 8, !tbaa !289
  %68 = icmp eq ptr %67, %65
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  store ptr null, ptr %11, align 8, !tbaa !289
  %70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %70) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  br label %87

71:                                               ; preds = %63
  %72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  %73 = load ptr, ptr %72, align 8, !tbaa !408
  %74 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %73) #17
  %75 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %74) #17
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load ptr, ptr %6, align 8, !tbaa !408
  %78 = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %77) #19
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #20
  store ptr null, ptr %12, align 8, !tbaa !289
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #20
  br label %87

81:                                               ; preds = %76
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  br label %87

82:                                               ; preds = %71
  %83 = call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %84 = extractvalue { ptr, ptr } %83, 0
  store ptr %84, ptr %4, align 8
  %85 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %86 = extractvalue { ptr, ptr } %83, 1
  store ptr %86, ptr %85, align 8
  br label %87

87:                                               ; preds = %82, %81, %80, %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  br label %89

88:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  store ptr null, ptr %13, align 8, !tbaa !289
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #20
  br label %89

89:                                               ; preds = %88, %87, %59, %28, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  %90 = load ptr, ptr %4, align 8
  %91 = insertvalue { ptr, ptr } poison, ptr %90, 0
  %92 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = insertvalue { ptr, ptr } %91, ptr %93, 1
  ret { ptr, ptr } %94
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !415
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(ptr noundef %3) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSJ_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %4 = load ptr, ptr %0, align 8, !tbaa !417
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !415
  %7 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2, ptr noundef %6) #17
  store ptr null, ptr %5, align 8, !tbaa !415
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ValueIterator *>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !415
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !304

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !417
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %3) #19
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE8allocateERSD_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !288 {
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %7 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #17
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
          to label %14 unwind label %8

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = tail call ptr @__cxa_begin_catch(ptr %10) #20
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) #19
  invoke void @__cxa_rethrow() #21
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
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE8allocateERSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !395

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 256204778801521550
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 72
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #16
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  ret i64 128102389400760775
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 !prof !288 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESI_IJEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESI_IJEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %6 = alloca %"class.std::tuple", align 8
  call void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %6) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !411 {
  tail call void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = alloca %"class.std::tuple.18", align 1
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !411 {
  %3 = load i64, ptr %1, align 8, !tbaa !289
  store i64 %3, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 !prof !288 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat !prof !411 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat !prof !411 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !411 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !411 {
  %2 = load ptr, ptr %0, align 8, !tbaa !418
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !339
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !356
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !338 {
  %2 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 !prof !420 {
  %4 = load ptr, ptr %1, align 8, !tbaa !289
  store ptr %4, ptr %0, align 8, !tbaa !421
  %5 = getelementptr inbounds %"struct.std::pair.19", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !289
  store ptr %6, ptr %5, align 8, !tbaa !423
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %3 = alloca %"struct.std::pair.19", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  store ptr %10, ptr %5, align 8, !tbaa !289
  %11 = icmp eq ptr %9, null
  br i1 %11, label %24, label %12, !prof !396

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %21, %20 ], [ %9, %2 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(ptr noundef nonnull %13) #17
  %15 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %14) #17
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #19
  br label %20

18:                                               ; preds = %12
  %19 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #19
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !prof !336, !llvm.loop !424

23:                                               ; preds = %20
  store ptr %13, ptr %5, align 8, !tbaa !289
  store ptr null, ptr %4, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %13) #19
  br i1 %15, label %25, label %31, !prof !304

24:                                               ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %10) #19
  br label %25

25:                                               ; preds = %24, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %26 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  store ptr %26, ptr %7, align 8
  %27 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  br i1 %27, label %28, label %29, !prof !304

28:                                               ; preds = %25
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br label %37

29:                                               ; preds = %25
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  br label %31

31:                                               ; preds = %29, %23
  %32 = load ptr, ptr %6, align 8, !tbaa !408
  %33 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %32) #17
  %34 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br label %37

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store ptr null, ptr %8, align 8, !tbaa !289
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %37

37:                                               ; preds = %36, %35, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  %38 = load ptr, ptr %3, align 8
  %39 = insertvalue { ptr, ptr } poison, ptr %38, 0
  %40 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = insertvalue { ptr, ptr } %39, ptr %41, 1
  ret { ptr, ptr } %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 !prof !425 {
  %4 = load ptr, ptr %1, align 8, !tbaa !289
  store ptr %4, ptr %0, align 8, !tbaa !421
  %5 = getelementptr inbounds %"struct.std::pair.19", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !289
  store ptr %6, ptr %5, align 8, !tbaa !423
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !408
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %2) #23
  store ptr %3, ptr %0, align 8, !tbaa !408
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !408
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %2) #23
  store ptr %3, ptr %0, align 8, !tbaa !408
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !288 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !354
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #19
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 !prof !288 {
  %4 = load ptr, ptr %1, align 8, !tbaa !289
  store ptr %4, ptr %0, align 8, !tbaa !421
  %5 = getelementptr inbounds %"struct.std::pair.19", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !289
  store ptr %6, ptr %5, align 8, !tbaa !423
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 !prof !288 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %14, !prof !304

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %14, label %10, !prof !304

10:                                               ; preds = %7
  %11 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(ptr noundef %3) #17
  %12 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #17
  %13 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br label %14

14:                                               ; preds = %10, %7, %4
  %15 = phi i1 [ true, %7 ], [ true, %4 ], [ %13, %10 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %15, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %16) #19
  %17 = getelementptr inbounds i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !356
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !356
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %3) #19
  %20 = load ptr, ptr %5, align 8
  ret ptr %20
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 !prof !411 {
  tail call void @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 comdat align 2 !prof !411 {
  store ptr %1, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !338 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %5 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %6 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %7 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %1) #17
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %8 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %9, label %14, label %10, !prof !426

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !339
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %11) #17
  %13 = call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  br i1 %13, label %14, label %16, !prof !426

14:                                               ; preds = %10, %2
  %15 = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !317
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 !prof !338 {
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7, !prof !427

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E(ptr noundef nonnull %8) #17
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  br i1 %11, label %14, label %12, !prof !426

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef nonnull %8) #19
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef nonnull %8) #19
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !428, !llvm.loop !429

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #19
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !353
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !316 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !338 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !371
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !272 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !315 {
  store ptr %1, ptr %0, align 8, !tbaa !339
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { builtin optsize allocsize(0) }
attributes #17 = { optsize }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!271}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!35 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEC2Ev, i64 2}
!36 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev, i64 2}
!37 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_Znwm, i64 1}
!38 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EE4sizeEv, i64 6}
!39 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm, i64 2}
!40 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm, i64 4}
!41 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS1_EEixEm, i64 4}
!42 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 2}
!43 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZN13ValueIterator5parseEPKc, i64 2}
!44 = !{ptr @_ZN8ScenarioC2ERKSt6vectorIN25SectionBasedConfiguration17IterationVariableESaIS2_EEPKc, ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, i64 2}
!45 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EEC2Ev, i64 2}
!46 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEC2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev, i64 2}
!47 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm, ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv, i64 4}
!48 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE6resizeEm, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE17_M_default_appendEm, i64 2}
!49 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_, i64 2}
!50 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv, i64 2}
!51 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_, i64 2}
!52 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE8key_compEv, i64 1}
!53 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEdeEv, i64 3}
!54 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 1}
!55 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2ERKSt17_Rb_tree_iteratorISA_E, i64 2}
!56 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS7_EEEbE4typeELb1EEES7_, i64 2}
!57 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, i64 2}
!58 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev, i64 2}
!59 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv, i64 2}
!60 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EED2Ev, ptr @_ZSt8_DestroyIP13ValueIteratorS0_EvT_S2_RSaIT0_E, i64 2}
!61 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EED2Ev, i64 2}
!62 = !{ptr @_ZN8ScenarioD2Ev, ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev, i64 2}
!63 = !{ptr @_ZN8ScenarioD2Ev, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EED2Ev, i64 2}
!64 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNSaIcEC2Ev, i64 4}
!65 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 4}
!66 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_, i64 4}
!67 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 4}
!68 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 4}
!69 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv, i64 4}
!70 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_, i64 4}
!71 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @__cxa_allocate_exception, i64 1}
!72 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!73 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEptEv, i64 3}
!74 = !{ptr @_ZNK8Scenario11getVariableB5cxx11EPKc, ptr @_ZNK13ValueIterator3getB5cxx11Ev, i64 3}
!75 = !{ptr @_ZN8Scenario10getNumRunsEv, ptr @_ZN8Scenario7restartEv, i64 2}
!76 = !{ptr @_ZN8Scenario10getNumRunsEv, ptr @_ZN8Scenario4nextEv, i64 2}
!77 = !{ptr @_ZN8Scenario7restartEv, ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv, i64 10}
!78 = !{ptr @_ZN8Scenario7restartEv, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm, i64 6}
!79 = !{ptr @_ZN8Scenario7restartEv, ptr @_ZN13ValueIterator7restartEv, i64 3}
!80 = !{ptr @_ZN8Scenario7restartEv, ptr @_ZNK13ValueIterator3endEv, i64 3}
!81 = !{ptr @_ZN8Scenario4nextEv, ptr @_ZN8Scenario3incEv, i64 7}
!82 = !{ptr @_ZN8Scenario4nextEv, ptr @_ZN8Scenario18evaluateConstraintEv, i64 5}
!83 = !{ptr @_ZN8Scenario3incEv, ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv, i64 2}
!84 = !{ptr @_ZN8Scenario3incEv, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EEixEm, i64 5}
!85 = !{ptr @_ZN8Scenario3incEv, ptr @_ZN13ValueIteratorppEi, i64 2}
!86 = !{ptr @_ZN8Scenario3incEv, ptr @_ZNK13ValueIterator3endEv, i64 2}
!87 = !{ptr @_ZN8Scenario3incEv, ptr @_ZN13ValueIterator7restartEv, i64 1}
!88 = !{ptr @_ZN8Scenario7gotoRunEi, ptr @_ZN8Scenario7restartEv, i64 2}
!89 = !{ptr @_ZN8Scenario7gotoRunEi, ptr @__cxa_allocate_exception, i64 1}
!90 = !{ptr @_ZN8Scenario7gotoRunEi, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!91 = !{ptr @_ZN8Scenario7gotoRunEi, ptr @_ZN8Scenario4nextEv, i64 1}
!92 = !{ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, i64 6}
!93 = !{ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv, i64 6}
!94 = !{ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEptEv, ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv, i64 6}
!95 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNSaIcEC2Ev, i64 2}
!96 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 2}
!97 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_, i64 2}
!98 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 2}
!99 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 2}
!100 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv, i64 2}
!101 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_, i64 2}
!102 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEptEv, i64 1}
!103 = !{ptr @_ZNK8Scenario19getIteratorPositionEPKc, ptr @_ZNK13ValueIterator11getPositionEv, i64 1}
!104 = !{ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE12_Vector_implC2Ev, i64 2}
!105 = !{ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE12_Vector_implC2Ev, ptr @_ZNSaI13ValueIteratorEC2Ev, i64 2}
!106 = !{ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE17_Vector_impl_dataC2Ev, i64 2}
!107 = !{ptr @_ZNSaI13ValueIteratorEC2Ev, ptr @_ZNSt15__new_allocatorI13ValueIteratorEC2Ev, i64 2}
!108 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev, i64 2}
!109 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev, ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev, i64 2}
!110 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev, ptr @_ZNSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, i64 2}
!111 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEC2Ev, ptr @_ZNSt15_Rb_tree_headerC2Ev, i64 2}
!112 = !{ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEC2Ev, i64 2}
!113 = !{ptr @_ZNSt15_Rb_tree_headerC2Ev, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 192152}
!114 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!115 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!116 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!117 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!118 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!119 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!120 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!121 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv, i64 2}
!122 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, i64 2}
!123 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEED2Ev, i64 2}
!124 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPSt18_Rb_tree_node_base, i64 2}
!125 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, i64 2}
!126 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPSt18_Rb_tree_node_base, i64 2}
!127 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E, i64 2}
!128 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE9_M_mbeginEv, i64 6}
!129 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E, i64 2}
!130 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E, i64 2}
!131 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv, i64 2}
!132 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv, i64 2}
!133 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE7destroyISB_EEvRSD_PT_, i64 2}
!134 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv, i64 2}
!135 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_put_nodeEPSt13_Rb_tree_nodeISA_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE10deallocateERSD_PSC_m, i64 2}
!136 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE7destroyISB_EEvRSD_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE7destroyISB_EEvPT_, i64 2}
!137 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv, i64 6}
!138 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE7destroyISB_EEvPT_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorED2Ev, i64 2}
!139 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE7_M_addrEv, i64 6}
!140 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE10deallocateERSD_PSC_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE10deallocateEPSC_m, i64 2}
!141 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!142 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!143 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!144 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!145 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!146 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!147 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!148 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!149 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!150 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!151 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!152 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!153 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!154 = !{ptr @_ZSt8_DestroyIP13ValueIteratorS0_EvT_S2_RSaIT0_E, ptr @_ZSt8_DestroyIP13ValueIteratorEvT_S2_, i64 4}
!155 = !{ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EED2Ev, ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE13_M_deallocateEPS0_m, i64 2}
!156 = !{ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EED2Ev, ptr @_ZNSt15__new_allocatorI13ValueIteratorED2Ev, i64 2}
!157 = !{ptr @_ZSt8_DestroyIP13ValueIteratorEvT_S2_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP13ValueIteratorEEvT_S4_, i64 4}
!158 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIP13ValueIteratorEEvT_S4_, ptr @_ZSt8_DestroyI13ValueIteratorEvPT_, i64 2}
!159 = !{ptr @_ZSt8_DestroyI13ValueIteratorEvPT_, ptr @_ZN13ValueIteratorD1Ev, i64 2}
!160 = !{ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE13_M_deallocateEPS0_m, ptr @_ZNSt16allocator_traitsISaI13ValueIteratorEE10deallocateERS1_PS0_m, i64 2}
!161 = !{ptr @_ZNSt16allocator_traitsISaI13ValueIteratorEE10deallocateERS1_PS0_m, ptr @_ZNSt15__new_allocatorI13ValueIteratorE10deallocateEPS0_m, i64 2}
!162 = !{ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseI13ValueIteratorSaIS0_EE19_M_get_Tp_allocatorEv, i64 8}
!163 = !{ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv, ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE11_S_max_sizeERKS1_, i64 8}
!164 = !{ptr @_ZSt27__uninitialized_default_n_aIP13ValueIteratormS0_ET_S2_T0_RSaIT1_E, ptr @_ZSt25__uninitialized_default_nIP13ValueIteratormET_S2_T0_, i64 2}
!165 = !{ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE8max_sizeEv, i64 4}
!166 = !{ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE4sizeEv, i64 8}
!167 = !{ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!168 = !{ptr @_ZNKSt6vectorI13ValueIteratorSaIS0_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 2}
!169 = !{ptr @_ZNSt12_Vector_baseI13ValueIteratorSaIS0_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaI13ValueIteratorEE8allocateERS1_m, i64 2}
!170 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIP13ValueIteratorS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt32__make_move_if_noexcept_iteratorI13ValueIteratorPKS0_ET0_PT_, i64 4}
!171 = !{ptr @_ZSt34__uninitialized_move_if_noexcept_aIP13ValueIteratorS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt22__uninitialized_copy_aIPK13ValueIteratorPS0_S0_ET0_T_S5_S4_RSaIT1_E, i64 2}
!172 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE11_S_max_sizeERKS1_, ptr @_ZNSt16allocator_traitsISaI13ValueIteratorEE8max_sizeERKS1_, i64 8}
!173 = !{ptr @_ZNSt6vectorI13ValueIteratorSaIS0_EE11_S_max_sizeERKS1_, ptr @_ZSt3minImERKT_S2_S2_, i64 8}
!174 = !{ptr @_ZNSt16allocator_traitsISaI13ValueIteratorEE8max_sizeERKS1_, ptr @_ZNKSt15__new_allocatorI13ValueIteratorE8max_sizeEv, i64 8}
!175 = !{ptr @_ZNKSt15__new_allocatorI13ValueIteratorE8max_sizeEv, ptr @_ZNKSt15__new_allocatorI13ValueIteratorE11_M_max_sizeEv, i64 8}
!176 = !{ptr @_ZSt25__uninitialized_default_nIP13ValueIteratormET_S2_T0_, ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_, i64 2}
!177 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP13ValueIteratormEET_S4_T0_, ptr @_ZSt10_ConstructI13ValueIteratorJEEvPT_DpOT0_, i64 2}
!178 = !{ptr @_ZSt10_ConstructI13ValueIteratorJEEvPT_DpOT0_, ptr @_ZN13ValueIteratorC1EPKc, i64 2}
!179 = !{ptr @_ZNSt16allocator_traitsISaI13ValueIteratorEE8allocateERS1_m, ptr @_ZNSt15__new_allocatorI13ValueIteratorE8allocateEmPKv, i64 2}
!180 = !{ptr @_ZSt22__uninitialized_copy_aIPK13ValueIteratorPS0_S0_ET0_T_S5_S4_RSaIT1_E, ptr @_ZSt18uninitialized_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_, i64 2}
!181 = !{ptr @_ZSt18uninitialized_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_, ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ValueIteratorPS2_EET0_T_S7_S6_, i64 2}
!182 = !{ptr @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPK13ValueIteratorPS2_EET0_T_S7_S6_, ptr @_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_, i64 2}
!183 = !{ptr @_ZSt16__do_uninit_copyIPK13ValueIteratorPS0_ET0_T_S5_S4_, ptr @_ZSt10_ConstructI13ValueIteratorJRKS0_EEvPT_DpOT0_, i64 1}
!184 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m, i64 2}
!185 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EED2Ev, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEED2Ev, i64 2}
!186 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m, i64 2}
!187 = !{ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE8allocateERS2_m, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE8allocateEmPKv, i64 2}
!188 = !{ptr @_ZSt8_DestroyIPN13ValueIterator4ItemEEvT_S3_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_, i64 2}
!189 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13ValueIterator4ItemEEEvT_S5_, ptr @_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_, i64 2}
!190 = !{ptr @_ZSt8_DestroyIN13ValueIterator4ItemEEvPT_, ptr @_ZN13ValueIterator4ItemD2Ev, i64 2}
!191 = !{ptr @_ZNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m, i64 2}
!192 = !{ptr @_ZNSt16allocator_traitsISaIN13ValueIterator4ItemEEE10deallocateERS2_PS1_m, ptr @_ZNSt15__new_allocatorIN13ValueIterator4ItemEE10deallocateEPS1_m, i64 2}
!193 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_, i64 2}
!194 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE3endEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv, i64 2}
!195 = !{ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, i64 7052580}
!196 = !{ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEdeEv, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv, i64 2}
!197 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEERSG_DpOT_, i64 2}
!198 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node6_M_keyEv, i64 2}
!199 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, i64 2}
!200 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSJ_E, i64 1}
!201 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, i64 2}
!202 = !{ptr @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS7_EEEbE4typeELb1EEES7_, ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_, i64 121}
!203 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv, i64 2}
!204 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv, i64 2}
!205 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11lower_boundERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_, i64 2}
!206 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E, i64 1}
!207 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 1}
!208 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base, i64 2}
!209 = !{ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv, i64 20}
!210 = !{ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE6_M_ptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE7_M_addrEv, i64 20}
!211 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base, i64 2}
!212 = !{ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_, i64 7052580}
!213 = !{ptr @_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_, ptr @__clang_call_terminate, i64 7}
!214 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEERSG_DpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_, i64 2}
!215 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE13_M_const_castEv, i64 2}
!216 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv, i64 2}
!217 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4sizeEv, i64 2}
!218 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, i64 1}
!219 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 1}
!220 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 1}
!221 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node6_M_keyEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E, i64 2}
!222 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSJ_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E, i64 2}
!223 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E, i64 1}
!224 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv, i64 2}
!225 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEPSt13_Rb_tree_nodeISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, i64 2}
!226 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv, i64 2}
!227 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE11_M_get_nodeEv, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE8allocateERSD_m, i64 2}
!228 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE21_M_get_Node_allocatorEv, i64 2}
!229 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE9_M_valptrEv, i64 2}
!230 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESL_IJEEEEEvPSt13_Rb_tree_nodeISA_EDpOT_, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_, i64 2}
!231 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE8allocateERSD_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE8allocateEmPKv, i64 2}
!232 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESJ_IJEEEEEvRSD_PT_DpOT0_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESI_IJEEEEEvPT_DpOT0_, i64 2}
!233 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESI_IJEEEEEvPT_DpOT0_, ptr @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_, i64 2}
!234 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEE9constructISB_JRKSt21piecewise_construct_tSt5tupleIJRS8_EESI_IJEEEEEvPT_DpOT0_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE, i64 2}
!235 = !{ptr @_ZNSt5tupleIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_, ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2EOS8_, i64 121}
!236 = !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESD_IJDpT0_EE, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE, i64 2}
!237 = !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE, ptr @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_, i64 2}
!238 = !{ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEC2IJRS6_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERSC_IJDpT1_EESt12_Index_tupleIJXspT0_EEESL_IJXspT2_EEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 2}
!239 = !{ptr @_ZSt3getILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSC_, ptr @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE, i64 121}
!240 = !{ptr @_ZSt12__get_helperILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEERT0_RSt11_Tuple_implIXT_EJS8_DpT1_EE, ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_, i64 121}
!241 = !{ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7_M_headERS8_, ptr @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE7_M_headERS8_, i64 121}
!242 = !{ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE13_M_const_castEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base, i64 2}
!243 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E, i64 6}
!244 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv, i64 2}
!245 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv, i64 2}
!246 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E, i64 1}
!247 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 2}
!248 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base, i64 2}
!249 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv, i64 2}
!250 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_, i64 2}
!251 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISK_SL_EEEbE4typeELb1EEEOSK_OSL_, i64 1}
!252 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 1}
!253 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5beginEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base, i64 2}
!254 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv, i64 2}
!255 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 2}
!256 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSI_PSt13_Rb_tree_nodeISA_E, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPSt18_Rb_tree_node_base, i64 2}
!257 = !{ptr @_ZNSt11_Tuple_implILm0EJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ES7_, ptr @_ZNSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEC2ES7_, i64 121}
!258 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_beginEv, i64 6}
!259 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_M_endEv, i64 6}
!260 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_, i64 6}
!261 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv, i64 7}
!262 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEESD_, i64 6}
!263 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 5}
!264 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE4findERS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 5}
!265 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE6_S_keyEPKSt13_Rb_tree_nodeISA_E, i64 6}
!266 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_, i64 6}
!267 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_S_leftEPKSt18_Rb_tree_node_base, i64 5}
!268 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_S_rightEPKSt18_Rb_tree_node_base, i64 1}
!269 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_, ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPKSt18_Rb_tree_node_base, i64 6}
!270 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE3endEv, ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEEC2EPKSt18_Rb_tree_node_base, i64 12}
!271 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!272 = !{!"function_entry_count", i64 0}
!273 = !{!274, !274, i64 0}
!274 = !{!"omnipotent char", !275, i64 0}
!275 = !{!"Simple C++ TBAA"}
!276 = !{!277, !279, i64 8}
!277 = !{!"_ZTS8Resolver", !278, i64 0, !279, i64 8}
!278 = !{!"_ZTSN10Expression8ResolverE"}
!279 = !{!"any pointer", !274, i64 0}
!280 = !{!281, !281, i64 0}
!281 = !{!"vtable pointer", !275, i64 0}
!282 = !{!283, !279, i64 8}
!283 = !{!"_ZTSN8Scenario17VariableReferenceE", !284, i64 0, !279, i64 8, !285, i64 16}
!284 = !{!"_ZTSN10Expression7FunctorE"}
!285 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !286, i64 0, !287, i64 8, !274, i64 16}
!286 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !279, i64 0}
!287 = !{!"long", !274, i64 0}
!288 = !{!"function_entry_count", i64 2}
!289 = !{!279, !279, i64 0}
!290 = !{!291, !279, i64 8}
!291 = !{!"_ZTS8Scenario", !279, i64 0, !279, i64 8, !292, i64 16, !296, i64 40}
!292 = !{!"_ZTSSt6vectorI13ValueIteratorSaIS0_EE", !293, i64 0}
!293 = !{!"_ZTSSt12_Vector_baseI13ValueIteratorSaIS0_EE", !294, i64 0}
!294 = !{!"_ZTSNSt12_Vector_baseI13ValueIteratorSaIS0_EE12_Vector_implE", !295, i64 0}
!295 = !{!"_ZTSNSt12_Vector_baseI13ValueIteratorSaIS0_EE17_Vector_impl_dataE", !279, i64 0, !279, i64 8, !279, i64 16}
!296 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !297, i64 0}
!297 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !298, i64 0}
!298 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !299, i64 0, !301, i64 8}
!299 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !300, i64 0}
!300 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!301 = !{!"_ZTSSt15_Rb_tree_header", !302, i64 0, !287, i64 32}
!302 = !{!"_ZTSSt18_Rb_tree_node_base", !303, i64 0, !279, i64 8, !279, i64 16, !279, i64 24}
!303 = !{!"_ZTSSt14_Rb_tree_color", !274, i64 0}
!304 = !{!"branch_weights", i32 3, i32 1}
!305 = !{!291, !279, i64 0}
!306 = !{!"branch_weights", i32 191, i32 1}
!307 = !{!"branch_weights", i32 1, i32 191}
!308 = distinct !{!308, !309}
!309 = !{!"llvm.loop.mustprogress"}
!310 = !{!295, !279, i64 0}
!311 = !{!"function_entry_count", i64 22}
!312 = !{!313, !279, i64 8}
!313 = !{!"_ZTSNSt12_Vector_baseIN25SectionBasedConfiguration17IterationVariableESaIS1_EE17_Vector_impl_dataE", !279, i64 0, !279, i64 8, !279, i64 16}
!314 = !{!313, !279, i64 0}
!315 = !{!"function_entry_count", i64 18}
!316 = !{!"function_entry_count", i64 12}
!317 = !{i64 0, i64 8, !289}
!318 = !{!295, !279, i64 8}
!319 = !{!"function_entry_count", i64 4}
!320 = !{!"branch_weights", i32 1, i32 5}
!321 = !{!322, !279, i64 32}
!322 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorE", !285, i64 0, !279, i64 32}
!323 = !{!"branch_weights", i32 1, i32 2}
!324 = !{!"branch_weights", i32 0, i32 1}
!325 = distinct !{!325, !309}
!326 = !{!"branch_weights", i32 159, i32 1}
!327 = !{!"branch_weights", i32 346658785, i32 1800824863}
!328 = !{!"branch_weights", i32 1, i32 159}
!329 = distinct !{!329, !309}
!330 = !{!"branch_weights", i32 5, i32 1}
!331 = distinct !{!331, !309}
!332 = !{!"branch_weights", i32 1, i32 3}
!333 = distinct !{!333, !309}
!334 = !{!"function_entry_count", i64 28}
!335 = distinct !{!335, !309}
!336 = !{!"branch_weights", i32 1, i32 0}
!337 = distinct !{!337, !309}
!338 = !{!"function_entry_count", i64 6}
!339 = !{!340, !279, i64 0}
!340 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE", !279, i64 0}
!341 = !{!342, !347, i64 32}
!342 = !{!"_ZTS13ValueIterator", !343, i64 0, !347, i64 24, !347, i64 28, !347, i64 32}
!343 = !{!"_ZTSSt6vectorIN13ValueIterator4ItemESaIS1_EE", !344, i64 0}
!344 = !{!"_ZTSSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE", !345, i64 0}
!345 = !{!"_ZTSNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE12_Vector_implE", !346, i64 0}
!346 = !{!"_ZTSNSt12_Vector_baseIN13ValueIterator4ItemESaIS1_EE17_Vector_impl_dataE", !279, i64 0, !279, i64 8, !279, i64 16}
!347 = !{!"int", !274, i64 0}
!348 = distinct !{!348, !309}
!349 = !{!"function_entry_count", i64 74225}
!350 = !{!"function_entry_count", i64 192152}
!351 = !{!301, !303, i64 0}
!352 = !{!"function_entry_count", i64 197751}
!353 = !{!301, !279, i64 8}
!354 = !{!301, !279, i64 16}
!355 = !{!301, !279, i64 24}
!356 = !{!301, !287, i64 32}
!357 = !{!"function_entry_count", i64 1}
!358 = !{!359, !347, i64 8}
!359 = !{!"_ZTS10cException", !360, i64 0, !347, i64 8, !285, i64 16, !361, i64 48, !285, i64 56, !285, i64 88, !347, i64 120}
!360 = !{!"_ZTSSt9exception"}
!361 = !{!"bool", !274, i64 0}
!362 = !{!359, !361, i64 48}
!363 = !{i8 0, i8 2}
!364 = !{}
!365 = !{!359, !347, i64 120}
!366 = !{!"function_entry_count", i64 2107073}
!367 = !{!"branch_weights", i32 2, i32 3}
!368 = !{!"branch_weights", i32 3, i32 0}
!369 = distinct !{!369, !309}
!370 = !{!302, !279, i64 24}
!371 = !{!302, !279, i64 16}
!372 = !{!"function_entry_count", i64 8}
!373 = !{!374, !375, i64 0}
!374 = !{!"_ZTSN10Expression5ValueE", !375, i64 0, !361, i64 4, !376, i64 8, !285, i64 16}
!375 = !{!"_ZTSN10Expression5ValueUt_E", !274, i64 0}
!376 = !{!"double", !274, i64 0}
!377 = !{!374, !361, i64 4}
!378 = !{!374, !376, i64 8}
!379 = !{!"function_entry_count", i64 1891507}
!380 = !{!"function_entry_count", i64 1889443}
!381 = !{!287, !287, i64 0}
!382 = !{!"branch_weights", i32 1257663, i32 631782}
!383 = !{!384, !279, i64 0}
!384 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !279, i64 0}
!385 = !{!"branch_weights", i32 1889444, i32 1}
!386 = !{!295, !279, i64 16}
!387 = distinct !{!387, !309}
!388 = !{!"branch_weights", i32 3, i32 3}
!389 = !{!"function_entry_count", i64 295467}
!390 = !{!"branch_weights", i32 2, i32 295467}
!391 = !{!"function_entry_count", i64 10}
!392 = distinct !{!392, !309}
!393 = !{!"function_entry_count", i64 147735}
!394 = !{!"branch_weights", i32 61980, i32 85757}
!395 = !{!"branch_weights", i32 1, i32 2000}
!396 = !{!"branch_weights", i32 2, i32 1}
!397 = distinct !{!397, !309}
!398 = !{!346, !279, i64 0}
!399 = !{!346, !279, i64 8}
!400 = !{!"function_entry_count", i64 30}
!401 = !{!346, !279, i64 16}
!402 = distinct !{!402, !309}
!403 = !{!404, !279, i64 0}
!404 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKN13ValueIterator4ItemESt6vectorIS2_SaIS2_EEEE", !279, i64 0}
!405 = !{!406, !361, i64 0}
!406 = !{!"_ZTSN13ValueIterator4ItemE", !361, i64 0, !285, i64 8, !376, i64 40, !376, i64 48, !376, i64 56, !347, i64 64}
!407 = distinct !{!407, !309}
!408 = !{!409, !279, i64 0}
!409 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP13ValueIteratorEE", !279, i64 0}
!410 = !{!"function_entry_count", i64 7052580}
!411 = !{!"function_entry_count", i64 121}
!412 = distinct !{!412, !309}
!413 = !{!"function_entry_count", i64 14}
!414 = !{!"function_entry_count", i64 20}
!415 = !{!416, !279, i64 8}
!416 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_P13ValueIteratorESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeE", !279, i64 0, !279, i64 8}
!417 = !{!416, !279, i64 0}
!418 = !{!419, !279, i64 0}
!419 = !{!"_ZTSSt10_Head_baseILm0ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !279, i64 0}
!420 = !{!"function_entry_count", i64 435559}
!421 = !{!422, !279, i64 0}
!422 = !{!"_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E", !279, i64 0, !279, i64 8}
!423 = !{!422, !279, i64 8}
!424 = distinct !{!424, !309}
!425 = !{!"function_entry_count", i64 377582}
!426 = !{!"branch_weights", i32 1, i32 7}
!427 = !{!"branch_weights", i32 1, i32 223}
!428 = !{!"branch_weights", i32 223, i32 1}
!429 = distinct !{!429, !309}
