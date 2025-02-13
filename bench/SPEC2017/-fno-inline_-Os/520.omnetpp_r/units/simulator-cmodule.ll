; ModuleID = 'simulator/cmodule.cc'
source_filename = "simulator/cmodule.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::set.8" = type { %"class.std::_Rb_tree.9" }
%"class.std::_Rb_tree.9" = type { %"struct.std::_Rb_tree<cGate::Name, cGate::Name, std::_Identity<cGate::Name>, std::less<cGate::Name>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<cGate::Name, cGate::Name, std::_Identity<cGate::Name>, std::less<cGate::Name>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.13", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.13" = type { %"struct.std::less.14" }
%"struct.std::less.14" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%class.cModule = type { %class.cComponent, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%class.cComponent = type { %class.cDefaultList, ptr, i16, ptr, i16, i16, ptr, ptr }
%class.cDefaultList = type { %class.cNoncopyableOwnedObject.base, ptr, i32, i32 }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.cModule::SubmoduleIterator" = type { ptr }
%"class.cModule::GateIterator" = type <{ ptr, i32, i8, [3 x i8], i32, [4 x i8] }>
%class.cEnvir = type { ptr, i8, i8, i8, %"class.std::basic_ostream" }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.cSimulation = type { %class.cNoncopyableOwnedObject.base, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %class.SimTime, i64, ptr, ptr, ptr, %class.cMessageHeap }
%class.SimTime = type { i64 }
%class.cMessageHeap = type { %class.cOwnedObject.base, ptr, i32, i32, i64 }
%class.cGate = type { %class.cObject, ptr, i32, ptr, ptr, ptr }
%"struct.cGate::Desc" = type { ptr, ptr, i32, %union.anon.16, %union.anon.17 }
%union.anon.16 = type { ptr }
%union.anon.17 = type { ptr }
%class.cPar = type { %class.cObject, ptr, ptr }
%"struct.cGate::Name" = type <{ %class.opp_string, %class.opp_string, %class.opp_string, i32, [4 x i8] }>
%class.opp_string = type { ptr }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::pair" = type <{ %"struct.std::_Rb_tree_const_iterator", i8, [7 x i8] }>
%"struct.std::pair.32" = type <{ %"struct.std::_Rb_tree_iterator", i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.less_gatePairConnectedInside = type { ptr }
%struct.less_gatePairConnectedOutside = type { ptr }
%class.cContextSwitcher = type { ptr }
%class.cContextTypeSwitcher = type { i32 }
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%"class.cModule::ChannelIterator" = type <{ %"class.std::vector.26", i32, [4 x i8] }>
%"class.std::vector.26" = type { %"struct.std::_Vector_base.27" }
%"struct.std::_Vector_base.27" = type { %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl" }
%"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl" = type { %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.cMethodCallContextSwitcher = type { %class.cContextSwitcher }
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%struct._Guard = type { ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [32 x i8] }
%"struct.std::_Identity" = type { i8 }
%"struct.std::_Rb_tree<cGate::Name, cGate::Name, std::_Identity<cGate::Name>, std::less<cGate::Name>>::_Alloc_node" = type { ptr }
%"struct.std::pair.35" = type { ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { %struct.less_gateConnectedInside }
%struct.less_gateConnectedInside = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.37" = type { %struct.less_gateConnectedOutside }
%struct.less_gateConnectedOutside = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.38" = type { %struct.less_gatePairConnectedInside }
%"struct.__gnu_cxx::__ops::_Iter_comp_val.39" = type { %struct.less_gatePairConnectedOutside }
%"class.__gnu_cxx::__normal_iterator.40" = type { ptr }

$_ZN11cSimulation14getActiveEnvirEv = comdat any

$__clang_call_terminate = comdat any

$_ZN7cModule17SubmoduleIteratorC2EPKS_ = comdat any

$_ZNK7cModule17SubmoduleIterator3endEv = comdat any

$_ZNK7cModule17SubmoduleIteratorclEv = comdat any

$_ZN11cSimulation19getActiveSimulationEv = comdat any

$_ZNK11cSimulation17getActivityModuleEv = comdat any

$_ZN7cModule17SubmoduleIteratorppEi = comdat any

$_ZN7cModule12GateIteratorC2EPKS_ = comdat any

$_ZNK7cModule12GateIteratorclEv = comdat any

$_ZNK5cGate11getNextGateEv = comdat any

$_ZNK5cGate15getPreviousGateEv = comdat any

$_ZNK7cModule8isVectorEv = comdat any

$_Z10opp_strlenPKc = comdat any

$_Z15opp_appendindexPcj = comdat any

$_ZNK7cModule8getIndexEv = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EEC2Ev = comdat any

$_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EED2Ev = comdat any

$_ZNK5cGate4Desc8isVectorEv = comdat any

$_ZNK5cGate4Desc8gateSizeEv = comdat any

$_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE5clearEv = comdat any

$_ZN5cGate4DescC2Ev = comdat any

$_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE4findERKS1_ = comdat any

$_ZSteqRKSt23_Rb_tree_const_iteratorIN5cGate4NameEES4_ = comdat any

$_ZNKSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE3endEv = comdat any

$_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE6insertERKS1_ = comdat any

$_ZNKSt23_Rb_tree_const_iteratorIN5cGate4NameEEdeEv = comdat any

$_ZN5cGate4NameD2Ev = comdat any

$_ZNK10opp_string5c_strEv = comdat any

$_ZNK5cGate4Desc7getTypeEv = comdat any

$_ZNK5cGate4Desc7nameForENS_4TypeE = comdat any

$_ZN5cGate4Desc12setInputGateEPS_ = comdat any

$_ZN5cGate4Desc13setOutputGateEPS_ = comdat any

$_ZN5cGate4Desc11capacityForEi = comdat any

$_ZN5cGate4Desc12setInputGateEPS_i = comdat any

$_ZN5cGate4Desc13setOutputGateEPS_i = comdat any

$_ZNSt6vectorIPKcSaIS1_EEC2Ev = comdat any

$_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EED2Ev = comdat any

$_ZSt11lower_boundIPP5cGateS1_24less_gateConnectedInsideET_S4_S4_RKT0_T1_ = comdat any

$_ZSt11lower_boundIPP5cGateS1_25less_gateConnectedOutsideET_S4_S4_RKT0_T1_ = comdat any

$_ZSt11lower_boundIPP5cGateS1_28less_gatePairConnectedInsideET_S4_S4_RKT0_T1_ = comdat any

$_ZN28less_gatePairConnectedInsideC2EPP5cGate = comdat any

$_ZSt11lower_boundIPP5cGateS1_29less_gatePairConnectedOutsideET_S4_S4_RKT0_T1_ = comdat any

$_ZN29less_gatePairConnectedOutsideC2EPP5cGate = comdat any

$_ZNK5cGate8getIndexEv = comdat any

$_ZNK5cGate4sizeEv = comdat any

$_ZNK7cObject6isNameEPKc = comdat any

$_ZNK7cModule5getIdEv = comdat any

$_ZN10opp_stringC2EPKc = comdat any

$_ZN10opp_string6bufferEv = comdat any

$_ZN10opp_stringD2Ev = comdat any

$_ZNK7cModule13getModuleTypeEv = comdat any

$_ZNK7cModule17buildInsideCalledEv = comdat any

$_ZNK10cComponent19parametersFinalizedEv = comdat any

$_ZN12cNamedObject7setFlagEib = comdat any

$_ZNK11cSimulation14getContextTypeEv = comdat any

$_ZN7cModule15ChannelIteratorC2EPKS_ = comdat any

$_ZNK7cModule15ChannelIterator3endEv = comdat any

$_ZN7cModule15ChannelIteratorclEv = comdat any

$_ZN7cModule15ChannelIteratorppEi = comdat any

$_ZN7cModule15ChannelIteratorD2Ev = comdat any

$_ZNK10cComponent11initializedEv = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE5clearEv = comdat any

$_ZNK5cGate10getChannelEv = comdat any

$_ZNK5cGate7getTypeEv = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE9push_backEOS1_ = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cDefaultList11isSoftOwnerEv = comdat any

$_ZN12cDefaultList17setPerformFinalGCEb = comdat any

$_ZN10cComponent10initializeEi = comdat any

$_ZNK10cComponent13numInitStagesEv = comdat any

$_ZNK7cModule8isModuleEv = comdat any

$_ZNK10cComponent12getNumParamsEv = comdat any

$_ZN7cModule13doBuildInsideEv = comdat any

$_ZNK7cModule13isPlaceholderEv = comdat any

$_ZN7cModule17SubmoduleIterator4initEPKS_ = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EEC2Ev = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessIN5cGate4NameEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEED2Ev = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE7destroyIS2_EEvRS4_PT_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE10deallocateERS4_PS3_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE10deallocateEPS3_m = comdat any

$_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE9_M_mbeginEv = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIPKcEC2Ev = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIPKcEC2Ev = comdat any

$_ZNK5cGate4Desc7indexOfEPKS_ = comdat any

$_ZNK5cGate13getVectorSizeEv = comdat any

$_Z10opp_strcmpPKcS0_ = comdat any

$_Z10opp_strdupPKc = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EEC2Ev = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EED2Ev = comdat any

$_ZNSt12_Vector_baseIP8cChannelSaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIP8cChannelSaIS1_EE12_Vector_implC2Ev = comdat any

$_ZNSaIP8cChannelEC2Ev = comdat any

$_ZNSt12_Vector_baseIP8cChannelSaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIP8cChannelEC2Ev = comdat any

$_ZSt8_DestroyIPP8cChannelS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIP8cChannelSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPP8cChannelEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPP8cChannelEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseIP8cChannelSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIP8cChannelED2Ev = comdat any

$_ZNSt16allocator_traitsISaIP8cChannelEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIP8cChannelE10deallocateEPS1_m = comdat any

$_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EEixEm = comdat any

$_ZNK5cGate4Desc9getTypeOfEPKS_ = comdat any

$_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPPKcEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_ = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIPKcED2Ev = comdat any

$_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2ERKSt17_Rb_tree_iteratorIS1_E = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorIN5cGate4NameEES4_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv = comdat any

$_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt9_IdentityIN5cGate4NameEEclERKS1_ = comdat any

$_ZNKSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE7_M_addrEv = comdat any

$_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_ = comdat any

$_ZNSt4pairISt23_Rb_tree_const_iteratorIN5cGate4NameEEbEC2IRSt17_Rb_tree_iteratorIS2_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeC2ERS7_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_ = comdat any

$_ZNSt4pairISt17_Rb_tree_iteratorIN5cGate4NameEEbEC2IS3_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN5cGate4NameEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_ = comdat any

$_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEmmEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_ = comdat any

$_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeclIRKS1_EEPSt13_Rb_tree_nodeIS1_EOT_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_create_nodeIJRKS1_EEEPSt13_Rb_tree_nodeIS1_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE8allocateERS4_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_ = comdat any

$_ZN5cGate4NameC2ERKS0_ = comdat any

$_ZN10opp_stringC2ERKS_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIPKcEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EE3endEv = comdat any

$_ZNSt6vectorIPKcSaIS1_EE4backEv = comdat any

$_ZNSt15__new_allocatorIPKcE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_ = comdat any

$_ZN9__gnu_cxxmiIPPKcSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNKSt6vectorIPKcSaIS1_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIPKcSaIS1_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIPKcEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIPKcE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIPKcE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIPKcEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIPKcE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPPKcS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IPKcS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPPKcET_S3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEEET_S8_S8_RKT0_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15__iter_comp_valI24less_gateConnectedInsideEENS0_14_Iter_comp_valIT_EES4_ = comdat any

$_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_ = comdat any

$_ZSt7advanceIPP5cGatelEvRT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEclIPP5cGateKS6_EEbT_RT0_ = comdat any

$_ZSt10__distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPP5cGateENSt15iterator_traitsIT_E17iterator_categoryERKS4_ = comdat any

$_ZSt9__advanceIPP5cGatelEvRT_T0_St26random_access_iterator_tag = comdat any

$_ZN24less_gateConnectedInsideclEP5cGateS1_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEC2ES2_ = comdat any

$_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEEET_S8_S8_RKT0_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15__iter_comp_valI25less_gateConnectedOutsideEENS0_14_Iter_comp_valIT_EES4_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEclIPP5cGateKS6_EEbT_RT0_ = comdat any

$_ZN25less_gateConnectedOutsideclEP5cGateS1_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEC2ES2_ = comdat any

$_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEEET_S8_S8_RKT0_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15__iter_comp_valI28less_gatePairConnectedInsideEENS0_14_Iter_comp_valIT_EES4_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEclIPP5cGateKS6_EEbT_RT0_ = comdat any

$_ZN28less_gatePairConnectedInsideclEP5cGateS1_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEC2ES2_ = comdat any

$_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEEET_S8_S8_RKT0_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15__iter_comp_valI29less_gatePairConnectedOutsideEENS0_14_Iter_comp_valIT_EES4_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEclIPP5cGateKS6_EEbT_RT0_ = comdat any

$_ZN29less_gatePairConnectedOutsideclEP5cGateS1_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEC2ES2_ = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIP8cChannelEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE3endEv = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE4backEv = comdat any

$_ZNSt15__new_allocatorIP8cChannelE9constructIS1_JS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIP8cChannelSaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPP8cChannelSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIP8cChannelSaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNKSt6vectorIP8cChannelSaIS1_EE8max_sizeEv = comdat any

$_ZNSt6vectorIP8cChannelSaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIP8cChannelEE8max_sizeERKS2_ = comdat any

$_ZNKSt15__new_allocatorIP8cChannelE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIP8cChannelE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIP8cChannelEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIP8cChannelE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPP8cChannelS2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IP8cChannelS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPP8cChannelET_S3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN7cModule18lastmodulefullpathB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN7cModule21lastmodulefullpathmodE = dso_local local_unnamed_addr global ptr null, align 8
@_ZTV7cModule = dso_local unnamed_addr constant { [75 x ptr] } { [75 x ptr] [ptr null, ptr @_ZTI7cModule, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN12cDefaultList18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN12cDefaultList14yieldOwnershipEP12cOwnedObjectP7cObject, ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModuleD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cModule11getFullNameEv, ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNK12cDefaultList4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN12cDefaultList4takeEP12cOwnedObject, ptr @_ZN12cDefaultList4dropEP12cOwnedObject, ptr @_ZN12cDefaultList10parsimPackEP11cCommBuffer, ptr @_ZN12cDefaultList12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cModule12forEachChildEP8cVisitor, ptr @_ZN7cModule7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cDefaultList11isSoftOwnerEv, ptr @_ZN12cDefaultList17setPerformFinalGCEb, ptr @_ZN10cComponent16setComponentTypeEP14cComponentType, ptr @_ZN10cComponent6addParEP8cParImpl, ptr @_ZN10cComponent25recordParametersAsScalarsEv, ptr @_ZN10cComponent10initializeEi, ptr @_ZNK10cComponent13numInitStagesEv, ptr @_ZN10cComponent10initializeEv, ptr @_ZN10cComponent6finishEv, ptr @_ZN10cComponent21handleParameterChangeEPKc, ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZNK7cModule13getPropertiesEv, ptr @_ZNK10cComponent14getNedTypeNameEv, ptr @_ZNK7cModule8isModuleEv, ptr @_ZNK7cModule15getParentModuleEv, ptr @_ZN7cModule14callInitializeEv, ptr @_ZN7cModule14callInitializeEi, ptr @_ZN7cModule10callFinishEv, ptr @_ZNK10cComponent12getNumParamsEv, ptr @_ZN10cComponent3parEi, ptr @_ZN10cComponent3parEPKc, ptr @_ZNK10cComponent7findParEPKc, ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN7cModule18initializeChannelsEi, ptr @__cxa_pure_virtual, ptr @_ZN7cModule5setIdEi, ptr @_ZN7cModule8setIndexEii, ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE, ptr @_ZN7cModule13doBuildInsideEv, ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZN7cModule31getOrCreateFirstUnconnectedGateEPKccbb, ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZN7cModule11buildInsideEv, ptr @_ZNK7cModule8isSimpleEv, ptr @_ZNK7cModule13isPlaceholderEv, ptr @_ZN7cModule4gateEPKci, ptr @_ZN7cModule8gateHalfEPKcN5cGate4TypeEi, ptr @_ZNK7cModule7hasGateEPKci, ptr @_ZNK7cModule8findGateEPKci, ptr @_ZN7cModule4gateEi, ptr @_ZN7cModule10deleteGateEPKc, ptr @_ZNK7cModule12getGateNamesEv, ptr @_ZNK7cModule8gateTypeEPKc, ptr @_ZNK7cModule12isGateVectorEPKc, ptr @_ZNK7cModule8gateSizeEPKc, ptr @_ZNK7cModule10gateBaseIdEPKc, ptr @__cxa_pure_virtual, ptr @_ZN7cModule12deleteModuleEv, ptr @_ZN7cModule14changeParentToEPS_] }, align 8
@.str = private unnamed_addr constant [60 x i8] c"Cannot delete a compound module from one of its submodules!\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTI7cObject = external constant ptr
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTI13cSimpleModule = external constant ptr
@_ZN7cModule8namePoolE = dso_local global %"class.std::set.8" zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"Cannot delete gate `%s', it is still connected\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"cannot add gate `%s[]': too many vector gates (limit is %d)\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"cannot add gate `%s': too many scalar gates (limit is %d)\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"no such gate or gate vector: `%s'\00", align 1
@.str.8 = private unnamed_addr constant [98 x i8] c"Invalid gate Id %d: size of `%s[]' is only %d, so index %d (deduced from the Id) is out of bounds\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"addGate(): Gate `%s' already present\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"addGate(): Wrong gate name `%s', must be without `$i'/`$o' suffix\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"no `%s' or `%s[]' gate\00", align 1
@.str.12 = private unnamed_addr constant [72 x i8] c"setGateSize(): wrong gate name `%s', suffix `$i'/`$o' not accepted here\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"setGateSize(): gate `%s' is not a vector gate\00", align 1
@.str.14 = private unnamed_addr constant [65 x i8] c"setGateSize(): negative vector size (%d) requested for gate %s[]\00", align 1
@.str.15 = private unnamed_addr constant [69 x i8] c"setGateSize(): vector size for gate %s[] too large (%d), limit is %d\00", align 1
@.str.16 = private unnamed_addr constant [82 x i8] c"setGateSize(): Cannot shrink gate vector %s[] to size %d, gate %s still connected\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"gateBaseId(): no such gate or gate vector: `%s'\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"gateBaseId(): inout gate `%s' cannot be referenced without $i/$o suffix\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"Inout gate `%s' cannot be referenced without $i/$o suffix\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Scalar gate `%s' referenced with index\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"%s when accessing vector gate `%s'\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"No gate index specified\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Negative gate index specified\00", align 1
@.str.24 = private unnamed_addr constant [74 x i8] c"Gate index %d out of range when accessing vector gate `%s[]' with size %d\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"Cannot delete one half of an inout gate: `%s'\00", align 1
@.str.26 = private unnamed_addr constant [66 x i8] c"getOrCreateFirstUnconnectedGate(): gate `%s' is not a vector gate\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"getOrCreateFirstUnconnectedGate(): gate `%s' AND suffix `%c' given\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"getOrCreateFirstUnconnectedGate(): inout gate specified but no suffix\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"getOrCreateFirstUnconnectedGate(): wrong gate name suffix `%c'\00", align 1
@.str.30 = private unnamed_addr constant [70 x i8] c"getOrCreateFirstUnconnectedGatePair(): gate `%s' is not a vector gate\00", align 1
@.str.31 = private unnamed_addr constant [85 x i8] c"getOrCreateFirstUnconnectedGatePair(): inout gate expected, without `$i'/`$o' suffix\00", align 1
@.str.32 = private unnamed_addr constant [93 x i8] c"Gate `%s' is not connected to a submodule (or internally to another gate of the same module)\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"loose\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"directIn\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"Gate `%s' is not connected to sibling or parent module\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"getModuleByRelativePath(): syntax error in path `%s'\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"has no ancestor parameter called `%s'\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"buildInside() already called for this module\00", align 1
@.str.39 = private unnamed_addr constant [90 x i8] c"it is not supported to delete module which contains the currently executing simple module\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"changeParentTo(): got NULL pointer\00", align 1
@.str.41 = private unnamed_addr constant [82 x i8] c"changeParentTo(): gates of the module must not be connected (%s is connected now)\00", align 1
@.str.42 = private unnamed_addr constant [69 x i8] c"changeParentTo(): cannot move module under one of its own submodules\00", align 1
@.str.43 = private unnamed_addr constant [79 x i8] c"internal function initializeChannels() may only be called via callInitialize()\00", align 1
@.str.44 = private unnamed_addr constant [78 x i8] c"internal function initializeModules() may only be called via callInitialize()\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"initialize() already called for this module\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"%s during initialize(): %s\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"%s during finish(): %s\00", align 1
@_ZTS7cModule = dso_local constant [9 x i8] c"7cModule\00", align 1
@_ZTI10cComponent = external constant ptr
@_ZTI7cModule = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7cModule, ptr @_ZTI10cComponent }, align 8
@_ZN11cSimulation5evPtrE = external local_unnamed_addr global ptr, align 8
@_ZN11cSimulation6simPtrE = external local_unnamed_addr global ptr, align 8
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.50 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.52 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%d]\00", align 1
@.str.54 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmodule.cc, ptr null }]

@_ZN7cModuleD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7cModuleD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #30
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #31
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7cModule18lastmodulefullpathB5cxx11E) #32
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN7cModule18lastmodulefullpathB5cxx11E, ptr nonnull @__dso_handle) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModuleC2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 !prof !510 {
  tail call void @_ZN10cComponentC2EPKc(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null) #30
  store ptr getelementptr inbounds ({ [75 x ptr] }, ptr @_ZTV7cModule, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !511
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  store i32 -1, ptr %2, align 8, !tbaa !514
  %3 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 9
  store i32 0, ptr %3, align 8, !tbaa !526
  %4 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 10
  store i32 -1, ptr %4, align 4, !tbaa !527
  %5 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !528
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !529
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN10cComponentC2EPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7cModuleD2Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !510 {
  %2 = alloca %"class.cModule::SubmoduleIterator", align 8
  %3 = alloca %"class.cModule::GateIterator", align 8
  store ptr getelementptr inbounds ({ [75 x ptr] }, ptr @_ZTV7cModule, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !511
  %4 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %5 = getelementptr inbounds %class.cEnvir, ptr %4, i64 0, i32 2
  %6 = load i8, ptr %5, align 1, !tbaa !530, !range !534, !noundef !535
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13, !prof !536

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %10 = load ptr, ptr %9, align 8, !tbaa !511
  %11 = getelementptr inbounds ptr, ptr %10, i64 20
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(288) %9, ptr noundef nonnull %0) #30
          to label %13 unwind label %86

13:                                               ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  invoke void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0) #30
          to label %14 unwind label %86

14:                                               ; preds = %13
  %15 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  br i1 %15, label %16, label %19, !prof !537

16:                                               ; preds = %34, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #31
  invoke void @_ZN7cModule12GateIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull %0) #30
          to label %17 unwind label %86

17:                                               ; preds = %16
  %18 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  br i1 %18, label %36, label %37, !prof !537

19:                                               ; preds = %14, %34
  %20 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  %21 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #30
  %22 = call noundef ptr @_ZNK11cSimulation17getActivityModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %21) #30
  %23 = icmp eq ptr %20, %22
  br i1 %23, label %24, label %27, !prof !537

24:                                               ; preds = %19
  %25 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %25, ptr noundef nonnull @.str) #30
          to label %26 unwind label %86

26:                                               ; preds = %24
  invoke void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
          to label %91 unwind label %86

27:                                               ; preds = %19
  %28 = call noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #30
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %28, align 8, !tbaa !511
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull align 8 dereferenceable(176) %28) #32
  br label %34

34:                                               ; preds = %30, %27
  %35 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  br i1 %35, label %16, label %19, !prof !538, !llvm.loop !539

36:                                               ; preds = %56, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #31
  invoke void @_ZN7cModule10clearGatesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
          to label %59 unwind label %86

37:                                               ; preds = %17, %56
  %38 = invoke noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
          to label %39 unwind label %84

39:                                               ; preds = %37
  %40 = call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %38) #30
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42, !prof !541

42:                                               ; preds = %39
  %43 = call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %38) #30
  %44 = call noundef ptr @_ZNK5cGate15getPreviousGateEv(ptr noundef nonnull align 8 dereferenceable(48) %43) #30
  %45 = icmp eq ptr %44, %38
  br i1 %45, label %46, label %47, !prof !542

46:                                               ; preds = %42
  invoke void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48) %38) #30
          to label %47 unwind label %84

47:                                               ; preds = %46, %42, %39
  %48 = call noundef ptr @_ZNK5cGate15getPreviousGateEv(ptr noundef nonnull align 8 dereferenceable(48) %38) #30
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !541

50:                                               ; preds = %47
  %51 = call noundef ptr @_ZNK5cGate15getPreviousGateEv(ptr noundef nonnull align 8 dereferenceable(48) %38) #30
  %52 = call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %51) #30
  %53 = icmp eq ptr %52, %38
  br i1 %53, label %54, label %56, !prof !542

54:                                               ; preds = %50
  %55 = call noundef ptr @_ZNK5cGate15getPreviousGateEv(ptr noundef nonnull align 8 dereferenceable(48) %38) #30
  invoke void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48) %55) #30
          to label %56 unwind label %84

56:                                               ; preds = %54, %50, %47
  %57 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 poison) #30, !llvm.loop !543
  %58 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  br i1 %58, label %36, label %37, !prof !544

59:                                               ; preds = %36
  %60 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !514
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %65, label %63, !prof !545

63:                                               ; preds = %59
  %64 = call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #30
  invoke void @_ZN11cSimulation16deregisterModuleEP7cModule(ptr noundef nonnull align 8 dereferenceable(224) %64, ptr noundef nonnull %0) #30
          to label %65 unwind label %86

65:                                               ; preds = %63, %59
  %66 = load ptr, ptr %0, align 8, !tbaa !511
  %67 = getelementptr inbounds ptr, ptr %66, i64 37
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
          to label %70 unwind label %86

70:                                               ; preds = %65
  %71 = icmp eq ptr %69, null
  br i1 %71, label %78, label %72, !prof !546

72:                                               ; preds = %70
  %73 = load ptr, ptr %0, align 8, !tbaa !511
  %74 = getelementptr inbounds ptr, ptr %73, i64 37
  %75 = load ptr, ptr %74, align 8
  %76 = invoke noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
          to label %77 unwind label %86

77:                                               ; preds = %72
  call void @_ZN7cModule15removeSubmoduleEPS_(ptr noundef nonnull align 8 dereferenceable(176) %76, ptr noundef nonnull %0) #30
  br label %78

78:                                               ; preds = %77, %70
  %79 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !528
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  call void @_ZdaPv(ptr noundef nonnull %80) #34
  br label %83

83:                                               ; preds = %82, %78
  call void @_ZN10cComponentD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #32
  ret void

84:                                               ; preds = %37, %46, %54
  %85 = landingpad { ptr, i32 }
          catch ptr null
  br label %88

86:                                               ; preds = %8, %13, %24, %26, %16, %36, %63, %65, %72
  %87 = landingpad { ptr, i32 }
          catch ptr null
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi { ptr, i32 } [ %85, %84 ], [ %87, %86 ]
  %90 = extractvalue { ptr, i32 } %89, 0
  call void @__clang_call_terminate(ptr %90) #35
  unreachable

91:                                               ; preds = %26
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation14getActiveEnvirEv() local_unnamed_addr #5 comdat align 2 !prof !547 {
  %1 = load ptr, ptr @_ZN11cSimulation5evPtrE, align 8, !tbaa !548
  ret ptr %1
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #31
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !549 {
  tail call void @_ZN7cModule17SubmoduleIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !550 {
  %2 = load ptr, ptr %0, align 8, !tbaa !551
  %3 = icmp eq ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !553 {
  %2 = load ptr, ptr %0, align 8, !tbaa !551
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11cSimulation19getActiveSimulationEv() local_unnamed_addr #5 comdat align 2 !prof !554 {
  %1 = load ptr, ptr @_ZN11cSimulation6simPtrE, align 8, !tbaa !548
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11cSimulation17getActivityModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 comdat align 2 !prof !555 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !556
  ret ptr %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !561 {
  %3 = load ptr, ptr %0, align 8, !tbaa !551
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !562

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.cModule, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !563
  store ptr %7, ptr %0, align 8, !tbaa !551
  br label %8

8:                                                ; preds = %2, %5
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7cModule12GateIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !564 {
  tail call void @_ZN7cModule12GateIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #9 align 2 !prof !565 {
  %2 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !566
  %4 = load ptr, ptr %0, align 8, !tbaa !568
  %5 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !569
  %7 = icmp sge i32 %3, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #6 comdat align 2 !prof !570 {
  %2 = tail call noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !571 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !572
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5cGate15getPreviousGateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !574 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !575
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN5cGate10disconnectEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN7cModule12GateIteratorppEi(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, i32 %1) local_unnamed_addr #5 align 2 !prof !570 {
  %3 = tail call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  br i1 %3, label %9, label %4, !prof !576

4:                                                ; preds = %2, %6
  tail call void @_ZN7cModule12GateIterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  %5 = tail call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  br i1 %5, label %9, label %6, !prof !577

6:                                                ; preds = %4
  %7 = tail call noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  %8 = icmp eq ptr %7, null
  br i1 %8, label %4, label %9, !prof !578, !llvm.loop !579

9:                                                ; preds = %6, %4, %2
  %10 = phi ptr [ null, %2 ], [ %7, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule10clearGatesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 align 2 !prof !510 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !569
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7, !prof !580

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  br label %11

7:                                                ; preds = %11, %1
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !529
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %19

11:                                               ; preds = %5, %11
  %12 = phi i64 [ 0, %5 ], [ %15, %11 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !529
  %14 = getelementptr inbounds %"struct.cGate::Desc", ptr %13, i64 %12
  tail call void @_ZN7cModule15disposeGateDescEPN5cGate4DescEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %14, i1 noundef zeroext false) #30
  %15 = add nuw nsw i64 %12, 1
  %16 = load i32, ptr %2, align 8, !tbaa !569
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %11, label %7, !prof !581, !llvm.loop !582

19:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef nonnull %9) #34
  br label %20

20:                                               ; preds = %19, %7
  store ptr null, ptr %8, align 8, !tbaa !529
  store i32 0, ptr %2, align 8, !tbaa !569
  ret void
}

; Function Attrs: optsize
declare void @_ZN11cSimulation16deregisterModuleEP7cModule(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN7cModule15removeSubmoduleEPS_(ptr nocapture noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !555 {
  %3 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !563
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !583
  br i1 %5, label %10, label %8, !prof !584

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 3
  store ptr %7, ptr %9, align 8, !tbaa !583
  br label %10

10:                                               ; preds = %2, %8
  %11 = icmp eq ptr %7, null
  br i1 %11, label %14, label %12, !prof !580

12:                                               ; preds = %10
  %13 = getelementptr inbounds %class.cModule, ptr %7, i64 0, i32 4
  store ptr %4, ptr %13, align 8, !tbaa !563
  br label %14

14:                                               ; preds = %12, %10
  %15 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !585
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %20, !prof !580

18:                                               ; preds = %14
  %19 = load ptr, ptr %3, align 8, !tbaa !563
  store ptr %19, ptr %15, align 8, !tbaa !585
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !586
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %24, label %25, !prof !584

24:                                               ; preds = %20
  store ptr %7, ptr %21, align 8, !tbaa !586
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  store ptr null, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !548
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize
declare void @_ZN10cComponentD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN7cModuleD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #12 align 2 {
  tail call void @llvm.trap() #35
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !587 {
  %3 = alloca %"class.cModule::GateIterator", align 8
  %4 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 5
  %5 = load i16, ptr %4, align 2, !tbaa !588
  %6 = icmp sgt i16 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 6
  br label %11

9:                                                ; preds = %11, %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #31
  call void @_ZN7cModule12GateIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull %0) #30
  %10 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  br i1 %10, label %22, label %23

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %18, %11 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !589
  %14 = getelementptr inbounds %class.cPar, ptr %13, i64 %12
  %15 = load ptr, ptr %1, align 8, !tbaa !511
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %14) #30
  %18 = add nuw nsw i64 %12, 1
  %19 = load i16, ptr %4, align 2, !tbaa !588
  %20 = sext i16 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %11, label %9, !llvm.loop !590

22:                                               ; preds = %23, %9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #31
  call void @_ZN12cDefaultList12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #30
  ret void

23:                                               ; preds = %9, %23
  %24 = call noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  %25 = load ptr, ptr %1, align 8, !tbaa !511
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %24) #30
  %28 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 poison) #30
  %29 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  br i1 %29, label %22, label %23, !llvm.loop !591
}

; Function Attrs: optsize
declare void @_ZN12cDefaultList12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7cModule5setIdEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #14 align 2 !prof !510 {
  %3 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !514
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule8setIndexEii(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 align 2 !prof !592 {
  %4 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 9
  store i32 %1, ptr %4, align 8, !tbaa !526
  %5 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 10
  store i32 %2, ptr %5, align 4, !tbaa !527
  tail call void @_ZN7cModule14updateFullNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule14updateFullNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 align 2 !prof !593 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !528
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !594

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #34
  store ptr null, ptr %2, align 8, !tbaa !528
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call noundef zeroext i1 @_ZNK7cModule8isVectorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  br i1 %7, label %8, label %24, !prof !595

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8, !tbaa !511
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  %13 = tail call noundef i32 @_Z10opp_strlenPKc(ptr noundef %12) #30
  %14 = add nsw i32 %13, 10
  %15 = sext i32 %14 to i64
  %16 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %15) #36
  store ptr %16, ptr %2, align 8, !tbaa !528
  %17 = load ptr, ptr %0, align 8, !tbaa !511
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  %21 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %20) #32
  %22 = load ptr, ptr %2, align 8, !tbaa !528
  %23 = tail call noundef i32 @_ZNK7cModule8getIndexEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  tail call void @_Z15opp_appendindexPcj(ptr noundef %22, i32 noundef %23) #30
  br label %24

24:                                               ; preds = %8, %6
  %25 = load ptr, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !548
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %28, !prof !596

27:                                               ; preds = %24
  store ptr null, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !548
  br label %28

28:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule15insertSubmoduleEPS_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !555 {
  %3 = load ptr, ptr %0, align 8, !tbaa !511
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) #30
  %6 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 4
  store ptr null, ptr %6, align 8, !tbaa !563
  %7 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !586
  %9 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !583
  %10 = icmp eq ptr %8, null
  br i1 %10, label %13, label %11, !prof !584

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.cModule, ptr %8, i64 0, i32 4
  store ptr %1, ptr %12, align 8, !tbaa !563
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !585
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !584

17:                                               ; preds = %13
  store ptr %1, ptr %14, align 8, !tbaa !585
  br label %18

18:                                               ; preds = %17, %13
  store ptr %1, ptr %7, align 8, !tbaa !586
  store ptr null, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !548
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK7cModule15getParentModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 !prof !597 {
  %2 = load ptr, ptr %0, align 8, !tbaa !511
  %3 = getelementptr inbounds ptr, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(36) %0) #30
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @__dynamic_cast(ptr nonnull %5, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI7cModule, i64 0) #31
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !510 {
  tail call void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) #30
  tail call void @_ZN7cModule14updateFullNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  ret void
}

; Function Attrs: optsize
declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule8isVectorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !598 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 4, !tbaa !527
  %4 = icmp sgt i32 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strlenPKc(ptr noundef %0) local_unnamed_addr #5 comdat !prof !599 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !600

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %5 = trunc i64 %4 to i32
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_Z15opp_appendindexPcj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 comdat !prof !599 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %3 ]
  %5 = load i8, ptr %4, align 1, !tbaa !601
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br i1 %6, label %8, label %3, !prof !602, !llvm.loop !603

8:                                                ; preds = %3
  store i8 91, ptr %4, align 1, !tbaa !601
  %9 = icmp ult i32 %1, 10
  br i1 %9, label %10, label %15, !prof !604

10:                                               ; preds = %8
  %11 = trunc i32 %1 to i8
  %12 = or disjoint i8 %11, 48
  %13 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %12, ptr %7, align 1, !tbaa !601
  %14 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 93, ptr %13, align 1, !tbaa !601
  store i8 0, ptr %14, align 1, !tbaa !601
  br label %28

15:                                               ; preds = %8
  %16 = icmp ult i32 %1, 100
  br i1 %16, label %17, label %26, !prof !605

17:                                               ; preds = %15
  %18 = trunc i32 %1 to i8
  %19 = udiv i8 %18, 10
  %20 = or disjoint i8 %19, 48
  %21 = getelementptr inbounds i8, ptr %4, i64 2
  store i8 %20, ptr %7, align 1, !tbaa !601
  %22 = urem i8 %18, 10
  %23 = or disjoint i8 %22, 48
  %24 = getelementptr inbounds i8, ptr %4, i64 3
  store i8 %23, ptr %21, align 1, !tbaa !601
  %25 = getelementptr inbounds i8, ptr %4, i64 4
  store i8 93, ptr %24, align 1, !tbaa !601
  store i8 0, ptr %25, align 1, !tbaa !601
  br label %28

26:                                               ; preds = %15
  %27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %1) #32
  br label %28

28:                                               ; preds = %26, %17, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7cModule8getIndexEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !592 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !526
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK7cModule11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 !prof !606 {
  %2 = tail call noundef zeroext i1 @_ZNK7cModule8isVectorEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  br i1 %2, label %3, label %6, !prof !607

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !528
  br label %11

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !511
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi ptr [ %5, %3 ], [ %10, %6 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK7cModule11getFullPathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !608 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = load ptr, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !548
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %43, label %8, !prof !609

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !511
  %10 = getelementptr inbounds ptr, ptr %9, i64 37
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(176) %1) #30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20, !prof !610

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8, !tbaa !511
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(176) %1) #30
  %19 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7cModule18lastmodulefullpathB5cxx11E, ptr noundef %18) #30
  br label %42

20:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  %21 = load ptr, ptr %1, align 8, !tbaa !511
  %22 = getelementptr inbounds ptr, ptr %21, i64 37
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(176) %1) #30
  %25 = load ptr, ptr %24, align 8, !tbaa !511
  %26 = getelementptr inbounds ptr, ptr %25, i64 8
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(176) %24) #30
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2) #30
          to label %28 unwind label %36

28:                                               ; preds = %20
  %29 = load ptr, ptr %1, align 8, !tbaa !511
  %30 = getelementptr inbounds ptr, ptr %29, i64 7
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(176) %1) #30
          to label %33 unwind label %38

33:                                               ; preds = %28
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %32) #30
          to label %34 unwind label %38

34:                                               ; preds = %33
  %35 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) @_ZN7cModule18lastmodulefullpathB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  br label %42

36:                                               ; preds = %20
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %40

38:                                               ; preds = %33, %28
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  resume { ptr, i32 } %41

42:                                               ; preds = %34, %14
  store ptr %1, ptr @_ZN7cModule21lastmodulefullpathmodE, align 8, !tbaa !548
  br label %43

43:                                               ; preds = %42, %2
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @_ZN7cModule18lastmodulefullpathB5cxx11E) #30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !611 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule8isSimpleEv(ptr noundef nonnull readonly align 8 dereferenceable(176) %0) unnamed_addr #18 align 2 !prof !612 {
  %2 = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTI7cModule, ptr nonnull @_ZTI13cSimpleModule, i64 0) #31
  %3 = icmp ne ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK7cModule13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 !prof !587 {
  %2 = load ptr, ptr %0, align 8, !tbaa !511
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  %6 = tail call noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
  %7 = icmp eq ptr %5, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = tail call noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %5) #30
  %10 = load ptr, ptr %0, align 8, !tbaa !511
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  %14 = load ptr, ptr %6, align 8, !tbaa !511
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(168) %6) #30
  %18 = load ptr, ptr %9, align 8, !tbaa !511
  %19 = getelementptr inbounds ptr, ptr %18, i64 27
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(168) %9, ptr noundef %13, ptr noundef %17) #30
  br label %27

22:                                               ; preds = %1
  %23 = load ptr, ptr %6, align 8, !tbaa !511
  %24 = getelementptr inbounds ptr, ptr %23, i64 24
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(168) %6) #30
  br label %27

27:                                               ; preds = %22, %8
  %28 = phi ptr [ %21, %8 ], [ %26, %22 ]
  ret ptr %28
}

; Function Attrs: optsize
declare noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !613 {
  %3 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #36
  invoke void @_ZN5cGateC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #30
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret ptr %3

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %3) #34
  resume { ptr, i32 } %6
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare void @_ZN5cGateC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7cModule8namePoolE) #32
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EED2Ev, ptr nonnull @_ZN7cModule8namePoolE, ptr nonnull @__dso_handle) #31
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !615 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %36, label %5, !prof !616

5:                                                ; preds = %3
  br i1 %2, label %6, label %22, !prof !617

6:                                                ; preds = %5
  %7 = tail call noundef ptr @_ZNK5cGate15getPreviousGateEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %9, %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %14 = load ptr, ptr %1, align 8, !tbaa !511
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
          to label %18 unwind label %20

18:                                               ; preds = %12
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %17) #30
          to label %19 unwind label %20

19:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

20:                                               ; preds = %18, %12
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #31
  resume { ptr, i32 } %21

22:                                               ; preds = %9, %5
  %23 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %24 = getelementptr inbounds %class.cEnvir, ptr %23, i64 0, i32 2
  %25 = load i8, ptr %24, align 1, !tbaa !530, !range !534, !noundef !535
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %32, !prof !618

27:                                               ; preds = %22
  %28 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %29 = load ptr, ptr %28, align 8, !tbaa !511
  %30 = getelementptr inbounds ptr, ptr %29, i64 22
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(288) %28, ptr noundef nonnull %1) #30
  br label %32

32:                                               ; preds = %27, %22
  %33 = load ptr, ptr %1, align 8, !tbaa !511
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(48) %1) #32
  br label %36

36:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule15disposeGateDescEPN5cGate4DescEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 !prof !619 {
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !620
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7, !prof !622

7:                                                ; preds = %3
  %8 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #30
  br i1 %8, label %9, label %15, !prof !623

9:                                                ; preds = %7
  %10 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #30
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %20, !prof !624

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 4
  br label %24

15:                                               ; preds = %7
  %16 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !601
  tail call void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %17, i1 noundef zeroext %2) #30
  %18 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !601
  tail call void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %19, i1 noundef zeroext %2) #30
  br label %48

20:                                               ; preds = %37, %9
  %21 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !601
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %42

24:                                               ; preds = %12, %37
  %25 = phi i64 [ 0, %12 ], [ %38, %37 ]
  %26 = load ptr, ptr %13, align 8, !tbaa !601
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !625

28:                                               ; preds = %24
  %29 = getelementptr inbounds ptr, ptr %26, i64 %25
  %30 = load ptr, ptr %29, align 8, !tbaa !548
  tail call void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %30, i1 noundef zeroext %2) #30
  br label %31

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %14, align 8, !tbaa !601
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !625

34:                                               ; preds = %31
  %35 = getelementptr inbounds ptr, ptr %32, i64 %25
  %36 = load ptr, ptr %35, align 8, !tbaa !548
  tail call void @_ZN7cModule17disposeGateObjectEP5cGateb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %36, i1 noundef zeroext %2) #30
  br label %37

37:                                               ; preds = %31, %34
  %38 = add nuw nsw i64 %25, 1
  %39 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #30
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %24, label %20, !prof !626, !llvm.loop !627

42:                                               ; preds = %20
  tail call void @_ZdaPv(ptr noundef nonnull %22) #34
  br label %43

43:                                               ; preds = %42, %20
  %44 = getelementptr inbounds %"struct.cGate::Desc", ptr %1, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !601
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @_ZdaPv(ptr noundef nonnull %45) #34
  br label %48

48:                                               ; preds = %43, %47, %15
  store ptr null, ptr %4, align 8, !tbaa !620
  br label %49

49:                                               ; preds = %48, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !628 {
  %2 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !629
  %4 = icmp sgt i32 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !630 {
  %2 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !629
  %4 = icmp sgt i32 %3, -1
  %5 = select i1 %4, i32 %3, i32 1, !prof !631
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule14clearNamePoolsEv() local_unnamed_addr #6 align 2 !prof !614 {
  tail call void @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7cModule8namePoolE) #32
  tail call void @_ZN5cGate17clearFullnamePoolEv() #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !614 {
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: optsize
declare void @_ZN5cGate17clearFullnamePoolEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN7cModule14adjustGateDescEP5cGatePNS0_4DescE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #19 align 2 !prof !632 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %14, label %5, !prof !633

5:                                                ; preds = %3
  %6 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !634
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !529
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = getelementptr inbounds i8, ptr %2, i64 %12
  store ptr %13, ptr %6, align 8, !tbaa !634
  br label %14

14:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !619 {
  %5 = alloca %"struct.cGate::Name", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !569
  br i1 %3, label %10, label %17, !prof !623

10:                                               ; preds = %4
  %11 = icmp sgt i32 %9, 2045
  br i1 %11, label %12, label %24, !prof !635

12:                                               ; preds = %10
  %13 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %13, ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef 2046) #30
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #31
  br label %129

17:                                               ; preds = %4
  %18 = icmp sgt i32 %9, 524285
  br i1 %18, label %19, label %24, !prof !636

19:                                               ; preds = %17
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef 524286) #30
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #31
  br label %129

24:                                               ; preds = %17, %10
  %25 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %26 = add nsw i32 %9, 1
  %27 = sext i32 %26 to i64
  %28 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %27, i64 40)
  %29 = extractvalue { i64, i1 } %28, 1
  %30 = extractvalue { i64, i1 } %28, 0
  %31 = select i1 %29, i64 -1, i64 %30
  %32 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %31) #36
  %33 = icmp eq i32 %26, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !529
  %37 = sext i32 %9 to i64
  %38 = mul nsw i64 %37, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %32, ptr align 8 %36, i64 %38, i1 false)
  br label %54

39:                                               ; preds = %24
  %40 = getelementptr inbounds %"struct.cGate::Desc", ptr %32, i64 %27
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi ptr [ %32, %39 ], [ %43, %41 ]
  tail call void @_ZN5cGate4DescC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %42) #30
  %43 = getelementptr inbounds %"struct.cGate::Desc", ptr %42, i64 1
  %44 = icmp eq ptr %43, %40
  br i1 %44, label %45, label %41

45:                                               ; preds = %41
  %46 = load i32, ptr %25, align 8, !tbaa !569
  %47 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !529
  %49 = sext i32 %46 to i64
  %50 = mul nsw i64 %49, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %32, ptr align 8 %48, i64 %50, i1 false)
  %51 = icmp sgt i32 %46, 0
  br i1 %51, label %59, label %54, !prof !637

52:                                               ; preds = %97
  %53 = load ptr, ptr %47, align 8, !tbaa !529
  br label %54

54:                                               ; preds = %34, %52, %45
  %55 = phi ptr [ %47, %52 ], [ %47, %45 ], [ %35, %34 ]
  %56 = phi i32 [ %99, %52 ], [ %46, %45 ], [ -1, %34 ]
  %57 = phi ptr [ %53, %52 ], [ %48, %45 ], [ %36, %34 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %104, label %102

59:                                               ; preds = %45, %97
  %60 = phi i64 [ %98, %97 ], [ 0, %45 ]
  %61 = load ptr, ptr %47, align 8, !tbaa !529
  %62 = getelementptr inbounds %"struct.cGate::Desc", ptr %61, i64 %60
  %63 = getelementptr inbounds %"struct.cGate::Desc", ptr %61, i64 %60, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !620
  %65 = icmp eq ptr %64, null
  br i1 %65, label %97, label %66, !prof !638

66:                                               ; preds = %59
  %67 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %62) #30
  br i1 %67, label %68, label %74, !prof !639

68:                                               ; preds = %66
  %69 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %62) #30
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %97, !prof !640

71:                                               ; preds = %68
  %72 = getelementptr inbounds %"struct.cGate::Desc", ptr %61, i64 %60, i32 3
  %73 = getelementptr inbounds %"struct.cGate::Desc", ptr %61, i64 %60, i32 4
  br label %79

74:                                               ; preds = %66
  %75 = getelementptr inbounds %"struct.cGate::Desc", ptr %61, i64 %60, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !601
  tail call void @_ZN7cModule14adjustGateDescEP5cGatePNS0_4DescE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %76, ptr noundef nonnull %32) #30
  %77 = getelementptr inbounds %"struct.cGate::Desc", ptr %61, i64 %60, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !601
  tail call void @_ZN7cModule14adjustGateDescEP5cGatePNS0_4DescE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %78, ptr noundef nonnull %32) #30
  br label %97

79:                                               ; preds = %71, %92
  %80 = phi i64 [ 0, %71 ], [ %93, %92 ]
  %81 = load ptr, ptr %72, align 8, !tbaa !601
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds ptr, ptr %81, i64 %80
  %85 = load ptr, ptr %84, align 8, !tbaa !548
  tail call void @_ZN7cModule14adjustGateDescEP5cGatePNS0_4DescE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %85, ptr noundef nonnull %32) #30
  br label %86

86:                                               ; preds = %83, %79
  %87 = load ptr, ptr %73, align 8, !tbaa !601
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds ptr, ptr %87, i64 %80
  %91 = load ptr, ptr %90, align 8, !tbaa !548
  tail call void @_ZN7cModule14adjustGateDescEP5cGatePNS0_4DescE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %91, ptr noundef nonnull %32) #30
  br label %92

92:                                               ; preds = %86, %89
  %93 = add nuw nsw i64 %80, 1
  %94 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %62) #30
  %95 = sext i32 %94 to i64
  %96 = icmp slt i64 %93, %95
  br i1 %96, label %79, label %97, !prof !641, !llvm.loop !642

97:                                               ; preds = %92, %68, %74, %59
  %98 = add nuw nsw i64 %60, 1
  %99 = load i32, ptr %25, align 8, !tbaa !569
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %59, label %52, !prof !643, !llvm.loop !644

102:                                              ; preds = %54
  tail call void @_ZdaPv(ptr noundef nonnull %57) #34
  %103 = load i32, ptr %25, align 8, !tbaa !569
  br label %104

104:                                              ; preds = %102, %54
  %105 = phi i32 [ %103, %102 ], [ %56, %54 ]
  store ptr %32, ptr %55, align 8, !tbaa !529
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %25, align 8, !tbaa !569
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  call void @_ZN5cGate4NameC1EPKcNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %1, i32 noundef %2) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #31
  %107 = invoke ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7cModule8namePoolE, ptr noundef nonnull align 8 dereferenceable(28) %5) #30
          to label %108 unwind label %115

108:                                              ; preds = %104
  store ptr %107, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #31
  %109 = call ptr @_ZNKSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7cModule8namePoolE) #32
  store ptr %109, ptr %7, align 8
  %110 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorIN5cGate4NameEES4_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #31
  br i1 %110, label %111, label %119, !prof !645

111:                                              ; preds = %108
  %112 = invoke { ptr, i8 } @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7cModule8namePoolE, ptr noundef nonnull align 8 dereferenceable(28) %5) #30
          to label %113 unwind label %117

113:                                              ; preds = %111
  %114 = extractvalue { ptr, i8 } %112, 0
  store ptr %114, ptr %6, align 8, !tbaa.struct !646
  br label %119

115:                                              ; preds = %104
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %127

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          cleanup
  br label %127

119:                                              ; preds = %113, %108
  %120 = sext i32 %105 to i64
  %121 = getelementptr inbounds %"struct.cGate::Desc", ptr %32, i64 %120
  %122 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNKSt23_Rb_tree_const_iteratorIN5cGate4NameEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #32
  %123 = getelementptr inbounds %"struct.cGate::Desc", ptr %32, i64 %120, i32 1
  store ptr %122, ptr %123, align 8, !tbaa !620
  %124 = xor i1 %3, true
  %125 = sext i1 %124 to i32
  %126 = getelementptr inbounds %"struct.cGate::Desc", ptr %32, i64 %120, i32 2
  store i32 %125, ptr %126, align 8, !tbaa !629
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #31
  call void @_ZN5cGate4NameD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  ret ptr %121

127:                                              ; preds = %117, %115
  %128 = phi { ptr, i32 } [ %118, %117 ], [ %116, %115 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #31
  call void @_ZN5cGate4NameD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  br label %129

129:                                              ; preds = %127, %22, %15
  %130 = phi { ptr, i32 } [ %16, %15 ], [ %128, %127 ], [ %23, %22 ]
  resume { ptr, i32 } %130
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5cGate4DescC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !647 {
  store ptr null, ptr %0, align 8, !tbaa !648
  %2 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 2
  store i32 -1, ptr %2, align 8, !tbaa !629
  %3 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !620
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: optsize
declare void @_ZN5cGate4NameC1EPKcNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #6 comdat align 2 !prof !619 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %5 = tail call ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #30
  store ptr %5, ptr %4, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2ERKSt17_Rb_tree_iteratorIS1_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  %6 = load ptr, ptr %3, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorIN5cGate4NameEES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !619 {
  %3 = load ptr, ptr %0, align 8, !tbaa !649
  %4 = load ptr, ptr %1, align 8, !tbaa !649
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !619 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE6insertERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %3 = alloca %"struct.std::pair", align 8
  %4 = alloca %"struct.std::pair.32", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  %5 = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #30
  %6 = extractvalue { ptr, i8 } %5, 0
  store ptr %6, ptr %4, align 8
  %7 = getelementptr inbounds { ptr, i8 }, ptr %4, i64 0, i32 1
  %8 = extractvalue { ptr, i8 } %5, 1
  store i8 %8, ptr %7, align 8
  call void @_ZNSt4pairISt23_Rb_tree_const_iteratorIN5cGate4NameEEbEC2IRSt17_Rb_tree_iteratorIS2_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  %9 = load ptr, ptr %3, align 8
  %10 = insertvalue { ptr, i8 } poison, ptr %9, 0
  %11 = getelementptr inbounds { ptr, i8 }, ptr %3, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = insertvalue { ptr, i8 } %10, i8 %12, 1
  ret { ptr, i8 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNKSt23_Rb_tree_const_iteratorIN5cGate4NameEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !619 {
  %2 = load ptr, ptr %0, align 8, !tbaa !649
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #30
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5cGate4NameD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 comdat align 2 {
  %2 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 2
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  %3 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 1
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %2) local_unnamed_addr #5 align 2 !prof !652 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %13, !prof !653

7:                                                ; preds = %3
  %8 = add i64 %4, 4294967294
  %9 = and i64 %8, 4294967295
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !601
  %12 = icmp eq i8 %11, 36
  br i1 %12, label %14, label %13, !prof !654

13:                                               ; preds = %3, %7
  store i8 0, ptr %2, align 1, !tbaa !601
  br label %31

14:                                               ; preds = %7
  %15 = add i64 %4, 4294967295
  %16 = and i64 %15, 4294967295
  %17 = getelementptr inbounds i8, ptr %1, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !601
  store i8 %18, ptr %2, align 1, !tbaa !601
  switch i8 %18, label %99 [
    i8 0, label %31
    i8 105, label %25
    i8 111, label %19
  ], !prof !655

19:                                               ; preds = %14
  %20 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !569
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %99, !prof !656

23:                                               ; preds = %19
  %24 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  br label %74

25:                                               ; preds = %14
  %26 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !569
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %99, !prof !657

29:                                               ; preds = %25
  %30 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  br label %55

31:                                               ; preds = %14, %13
  %32 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !569
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %99, !prof !658

35:                                               ; preds = %31
  %36 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  br label %37

37:                                               ; preds = %35, %50
  %38 = phi i32 [ %33, %35 ], [ %51, %50 ]
  %39 = phi i64 [ 0, %35 ], [ %52, %50 ]
  %40 = load ptr, ptr %36, align 8, !tbaa !529
  %41 = getelementptr inbounds %"struct.cGate::Desc", ptr %40, i64 %39, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !620
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44, !prof !659

44:                                               ; preds = %37
  %45 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %42) #30
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %1) #37
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %93, label %48, !prof !660

48:                                               ; preds = %44
  %49 = load i32, ptr %32, align 8, !tbaa !569
  br label %50

50:                                               ; preds = %48, %37
  %51 = phi i32 [ %49, %48 ], [ %38, %37 ]
  %52 = add nuw nsw i64 %39, 1
  %53 = sext i32 %51 to i64
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %37, label %99, !prof !661, !llvm.loop !662

55:                                               ; preds = %29, %69
  %56 = phi i32 [ %27, %29 ], [ %70, %69 ]
  %57 = phi i64 [ 0, %29 ], [ %71, %69 ]
  %58 = load ptr, ptr %30, align 8, !tbaa !529
  %59 = getelementptr inbounds %"struct.cGate::Desc", ptr %58, i64 %57, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !620
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62, !prof !663

62:                                               ; preds = %55
  %63 = getelementptr inbounds %"struct.cGate::Name", ptr %60, i64 0, i32 1
  %64 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %63) #30
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %64, ptr noundef nonnull dereferenceable(1) %1) #37
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %95, label %67, !prof !664

67:                                               ; preds = %62
  %68 = load i32, ptr %26, align 8, !tbaa !569
  br label %69

69:                                               ; preds = %67, %55
  %70 = phi i32 [ %68, %67 ], [ %56, %55 ]
  %71 = add nuw nsw i64 %57, 1
  %72 = sext i32 %70 to i64
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %55, label %99, !prof !665, !llvm.loop !666

74:                                               ; preds = %23, %88
  %75 = phi i32 [ %21, %23 ], [ %89, %88 ]
  %76 = phi i64 [ 0, %23 ], [ %90, %88 ]
  %77 = load ptr, ptr %24, align 8, !tbaa !529
  %78 = getelementptr inbounds %"struct.cGate::Desc", ptr %77, i64 %76, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !620
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81, !prof !667

81:                                               ; preds = %74
  %82 = getelementptr inbounds %"struct.cGate::Name", ptr %79, i64 0, i32 2
  %83 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %82) #30
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) %1) #37
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %97, label %86, !prof !668

86:                                               ; preds = %81
  %87 = load i32, ptr %20, align 8, !tbaa !569
  br label %88

88:                                               ; preds = %86, %74
  %89 = phi i32 [ %87, %86 ], [ %75, %74 ]
  %90 = add nuw nsw i64 %76, 1
  %91 = sext i32 %89 to i64
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %74, label %99, !prof !669, !llvm.loop !670

93:                                               ; preds = %44
  %94 = trunc i64 %39 to i32
  br label %99

95:                                               ; preds = %62
  %96 = trunc i64 %57 to i32
  br label %99

97:                                               ; preds = %81
  %98 = trunc i64 %76 to i32
  br label %99

99:                                               ; preds = %88, %69, %50, %97, %95, %93, %14, %19, %25, %31
  %100 = phi i32 [ -1, %14 ], [ -1, %31 ], [ -1, %25 ], [ -1, %19 ], [ %94, %93 ], [ %96, %95 ], [ %98, %97 ], [ -1, %50 ], [ -1, %69 ], [ -1, %88 ]
  ret i32 %100
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !671 {
  %2 = load ptr, ptr %0, align 8, !tbaa !672
  %3 = icmp eq ptr %2, null
  %4 = select i1 %3, ptr @.str.54, ptr %2, !prof !674
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !675 {
  %4 = tail call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11, !prof !676

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %1) #30
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #31
  resume { ptr, i32 } %10

11:                                               ; preds = %3
  %12 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !529
  %14 = zext nneg i32 %4 to i64
  %15 = getelementptr inbounds %"struct.cGate::Desc", ptr %13, i64 %14
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN7cModule4gateEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !677 {
  %3 = icmp ult i32 %1, 1048576
  br i1 %3, label %4, label %63, !prof !678

4:                                                ; preds = %2
  %5 = lshr i32 %1, 1
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !569
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %14, label %9, !prof !679

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %143

14:                                               ; preds = %4
  %15 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !529
  %17 = zext nneg i32 %5 to i64
  %18 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17
  %19 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !620
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %27, !prof !680

22:                                               ; preds = %14
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %143

27:                                               ; preds = %14
  %28 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %18) #30
  br i1 %28, label %29, label %34, !prof !680

29:                                               ; preds = %27
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %31 unwind label %32

31:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %143

34:                                               ; preds = %27
  %35 = and i32 %1, 1
  %36 = icmp eq i32 %35, 0
  %37 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %18) #30
  br i1 %36, label %38, label %40, !prof !680

38:                                               ; preds = %34
  %39 = icmp eq i32 %37, 79
  br i1 %39, label %42, label %47, !prof !679

40:                                               ; preds = %34
  %41 = icmp eq i32 %37, 73
  br i1 %41, label %42, label %49, !prof !680

42:                                               ; preds = %40, %38
  %43 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %44 unwind label %45

44:                                               ; preds = %42
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %143

47:                                               ; preds = %38
  %48 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 3
  br label %51

49:                                               ; preds = %40
  %50 = getelementptr inbounds %"struct.cGate::Desc", ptr %16, i64 %17, i32 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi ptr [ %48, %47 ], [ %50, %49 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !601
  %54 = getelementptr inbounds %class.cGate, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !681
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %35, %56
  br i1 %57, label %141, label %58, !prof !679

58:                                               ; preds = %51
  %59 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %59, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %60 unwind label %61

60:                                               ; preds = %58
  tail call void @__cxa_throw(ptr nonnull %59, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

61:                                               ; preds = %58
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %143

63:                                               ; preds = %2
  %64 = lshr i32 %1, 20
  %65 = add nsw i32 %64, -1
  %66 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !569
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %74, label %69, !prof !682

69:                                               ; preds = %63
  %70 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %70, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %71 unwind label %72

71:                                               ; preds = %69
  tail call void @__cxa_throw(ptr nonnull %70, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

72:                                               ; preds = %69
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %143

74:                                               ; preds = %63
  %75 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !529
  %77 = zext nneg i32 %65 to i64
  %78 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77
  %79 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !620
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %87, !prof !683

82:                                               ; preds = %74
  %83 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %83, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %84 unwind label %85

84:                                               ; preds = %82
  tail call void @__cxa_throw(ptr nonnull %83, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

85:                                               ; preds = %82
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %143

87:                                               ; preds = %74
  %88 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %78) #30
  br i1 %88, label %94, label %89, !prof !682

89:                                               ; preds = %87
  %90 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %90, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %91 unwind label %92

91:                                               ; preds = %89
  tail call void @__cxa_throw(ptr nonnull %90, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

92:                                               ; preds = %89
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %143

94:                                               ; preds = %87
  %95 = and i32 %1, 524288
  %96 = icmp eq i32 %95, 0
  %97 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %78) #30
  br i1 %96, label %100, label %98, !prof !682

98:                                               ; preds = %94
  %99 = icmp eq i32 %97, 73
  br i1 %99, label %102, label %111

100:                                              ; preds = %94
  %101 = icmp eq i32 %97, 79
  br i1 %101, label %102, label %107, !prof !683

102:                                              ; preds = %100, %98
  %103 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %103, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %104 unwind label %105

104:                                              ; preds = %102
  tail call void @__cxa_throw(ptr nonnull %103, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

105:                                              ; preds = %102
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %143

107:                                              ; preds = %100
  %108 = and i32 %1, 524287
  %109 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %78) #30
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %132, label %115, !prof !682

111:                                              ; preds = %98
  %112 = and i32 %1, 524287
  %113 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %78) #30
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %130, label %115, !prof !682

115:                                              ; preds = %111, %107
  %116 = phi i32 [ %112, %111 ], [ %108, %107 ]
  %117 = icmp ult i32 %116, 100000
  %118 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  br i1 %117, label %119, label %126

119:                                              ; preds = %115
  %120 = select i1 %96, i32 73, i32 79
  %121 = tail call noundef ptr @_ZNK5cGate4Desc7nameForENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(40) %78, i32 noundef %120) #30
  %122 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %78) #30
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %118, ptr noundef nonnull %0, ptr noundef nonnull @.str.8, i32 noundef %1, ptr noundef %121, i32 noundef %122, i32 noundef %116) #30
          to label %123 unwind label %124

123:                                              ; preds = %119
  tail call void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

124:                                              ; preds = %119
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %143

126:                                              ; preds = %115
  invoke void (ptr, ptr, i32, ...) @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124) %118, ptr noundef nonnull %0, i32 noundef 19, i32 noundef %1) #30
          to label %127 unwind label %128

127:                                              ; preds = %126
  tail call void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

128:                                              ; preds = %126
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %143

130:                                              ; preds = %111
  %131 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 4
  br label %134

132:                                              ; preds = %107
  %133 = getelementptr inbounds %"struct.cGate::Desc", ptr %76, i64 %77, i32 3
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi ptr [ %133, %132 ], [ %131, %130 ]
  %136 = phi i32 [ %108, %132 ], [ %112, %130 ]
  %137 = load ptr, ptr %135, align 8, !tbaa !601
  %138 = zext nneg i32 %136 to i64
  %139 = getelementptr inbounds ptr, ptr %137, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !548
  br label %141

141:                                              ; preds = %51, %134
  %142 = phi ptr [ %140, %134 ], [ %53, %51 ]
  ret ptr %142

143:                                              ; preds = %72, %105, %128, %124, %92, %85, %12, %61, %45, %32, %25
  %144 = phi ptr [ %70, %72 ], [ %103, %105 ], [ %118, %128 ], [ %118, %124 ], [ %90, %92 ], [ %83, %85 ], [ %10, %12 ], [ %59, %61 ], [ %43, %45 ], [ %30, %32 ], [ %23, %25 ]
  %145 = phi { ptr, i32 } [ %73, %72 ], [ %106, %105 ], [ %129, %128 ], [ %125, %124 ], [ %93, %92 ], [ %86, %85 ], [ %13, %12 ], [ %62, %61 ], [ %46, %45 ], [ %33, %32 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %144) #31
  resume { ptr, i32 } %145
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, i32 noundef, ...) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !684 {
  %2 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !620
  %4 = getelementptr inbounds %"struct.cGate::Name", ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !685
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5cGate4Desc7nameForENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !587 {
  %3 = icmp eq i32 %1, 66
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !620
  br i1 %3, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !685
  %9 = icmp eq i32 %8, 66
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = icmp eq i32 %1, 73
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 1
  br label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"struct.cGate::Name", ptr %5, i64 0, i32 2
  br label %16

16:                                               ; preds = %6, %2, %12, %14
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ], [ %5, %6 ], [ %5, %2 ]
  %18 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #30
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule7addGateEPKcN5cGate4TypeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !619 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #31
  %6 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5) #30
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %13, !prof !622

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.9, ptr noundef %1) #30
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %56

13:                                               ; preds = %4
  %14 = load i8, ptr %5, align 1, !tbaa !601
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16, !prof !688

16:                                               ; preds = %13
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull %0, ptr noundef nonnull @.str.10, ptr noundef %1) #30
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %56

21:                                               ; preds = %13
  %22 = tail call noundef ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #30
  store ptr %0, ptr %22, align 8, !tbaa !648
  br i1 %3, label %55, label %23, !prof !623

23:                                               ; preds = %21
  %24 = icmp eq i32 %2, 79
  br i1 %24, label %41, label %25, !prof !689

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !511
  %27 = getelementptr inbounds ptr, ptr %26, i64 50
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %2) #30
  tail call void @_ZN5cGate4Desc12setInputGateEPS_(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef %29) #30
  %30 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %31 = getelementptr inbounds %class.cEnvir, ptr %30, i64 0, i32 2
  %32 = load i8, ptr %31, align 1, !tbaa !530, !range !534, !noundef !535
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %39, !prof !690

34:                                               ; preds = %25
  %35 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %36 = load ptr, ptr %35, align 8, !tbaa !511
  %37 = getelementptr inbounds ptr, ptr %36, i64 21
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(288) %35, ptr noundef %29) #30
  br label %39

39:                                               ; preds = %34, %25
  %40 = icmp eq i32 %2, 73
  br i1 %40, label %55, label %41, !prof !689

41:                                               ; preds = %23, %39
  %42 = load ptr, ptr %0, align 8, !tbaa !511
  %43 = getelementptr inbounds ptr, ptr %42, i64 50
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %2) #30
  tail call void @_ZN5cGate4Desc13setOutputGateEPS_(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef %45) #30
  %46 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %47 = getelementptr inbounds %class.cEnvir, ptr %46, i64 0, i32 2
  %48 = load i8, ptr %47, align 1, !tbaa !530, !range !534, !noundef !535
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %55, !prof !690

50:                                               ; preds = %41
  %51 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %52 = load ptr, ptr %51, align 8, !tbaa !511
  %53 = getelementptr inbounds ptr, ptr %52, i64 21
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(288) %51, ptr noundef %45) #30
  br label %55

55:                                               ; preds = %50, %41, %39, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #31
  ret void

56:                                               ; preds = %19, %11
  %57 = phi ptr [ %17, %19 ], [ %9, %11 ]
  %58 = phi { ptr, i32 } [ %20, %19 ], [ %12, %11 ]
  tail call void @__cxa_free_exception(ptr %57) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #31
  resume { ptr, i32 } %58
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5cGate4Desc12setInputGateEPS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !691 {
  %3 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !601
  %4 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !634
  %5 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  store i32 -4, ptr %5, align 8, !tbaa !681
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5cGate4Desc13setOutputGateEPS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !691 {
  %3 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !601
  %4 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !634
  %5 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  store i32 -3, ptr %5, align 8, !tbaa !681
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule11setGateSizeEPKci(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !692 {
  %4 = alloca i8, align 1
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #31
  %7 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #30
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14, !prof !693

9:                                                ; preds = %3
  %10 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %10, ptr noundef nonnull %0, ptr noundef nonnull @.str.11, ptr noundef %1, ptr noundef %1) #30
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #31
  br label %222

14:                                               ; preds = %3
  %15 = load i8, ptr %4, align 1, !tbaa !601
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17, !prof !694

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef %1) #30
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #31
  br label %222

22:                                               ; preds = %14
  %23 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !529
  %25 = zext nneg i32 %7 to i64
  %26 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25
  %27 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %26) #30
  br i1 %27, label %33, label %28, !prof !694

28:                                               ; preds = %22
  %29 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %29, ptr noundef nonnull %0, ptr noundef nonnull @.str.13, ptr noundef %1) #30
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %29) #31
  br label %222

33:                                               ; preds = %22
  %34 = icmp slt i32 %2, 0
  br i1 %34, label %35, label %40, !prof !693

35:                                               ; preds = %33
  %36 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %2, ptr noundef %1) #30
          to label %37 unwind label %38

37:                                               ; preds = %35
  tail call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %36) #31
  br label %222

40:                                               ; preds = %33
  %41 = icmp ugt i32 %2, 524287
  br i1 %41, label %42, label %47, !prof !693

42:                                               ; preds = %40
  %43 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull %0, ptr noundef nonnull @.str.15, ptr noundef %1, i32 noundef %2, i32 noundef 524287) #30
          to label %44 unwind label %45

44:                                               ; preds = %42
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

45:                                               ; preds = %42
  %46 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %43) #31
  br label %222

47:                                               ; preds = %40
  %48 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !629
  %50 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %26) #30
  %51 = tail call noundef i32 @_ZN5cGate4Desc11capacityForEi(i32 noundef %49) #30
  %52 = tail call noundef i32 @_ZN5cGate4Desc11capacityForEi(i32 noundef %2) #30
  %53 = icmp sgt i32 %49, %2
  br i1 %53, label %54, label %176, !prof !693

54:                                               ; preds = %47
  %55 = icmp eq i32 %50, 79
  %56 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 3
  %57 = icmp eq i32 %50, 73
  %58 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 4
  br label %60

59:                                               ; preds = %166
  br i1 %55, label %174, label %173

60:                                               ; preds = %170, %54
  %61 = phi i32 [ %49, %54 ], [ %62, %170 ]
  %62 = add nsw i32 %61, -1
  br i1 %55, label %63, label %65

63:                                               ; preds = %60
  %64 = zext nneg i32 %62 to i64
  br label %103

65:                                               ; preds = %60
  %66 = load ptr, ptr %56, align 8, !tbaa !601
  %67 = zext nneg i32 %62 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !548
  %70 = tail call noundef ptr @_ZNK5cGate15getPreviousGateEv(ptr noundef nonnull align 8 dereferenceable(48) %69) #30
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = tail call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %69) #30
  %74 = icmp eq ptr %73, null
  br i1 %74, label %91, label %75

75:                                               ; preds = %72, %65
  %76 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  %77 = load ptr, ptr %69, align 8, !tbaa !511
  %78 = getelementptr inbounds ptr, ptr %77, i64 8
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %69) #30
          to label %80 unwind label %85

80:                                               ; preds = %75
  %81 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %76, ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %2, ptr noundef %81) #30
          to label %84 unwind label %82

82:                                               ; preds = %80
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  br label %89

84:                                               ; preds = %80
  invoke void @__cxa_throw(ptr nonnull %76, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
          to label %224 unwind label %87

85:                                               ; preds = %75
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  br label %89

87:                                               ; preds = %84
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  br label %222

89:                                               ; preds = %82, %85
  %90 = phi { ptr, i32 } [ %86, %85 ], [ %83, %82 ]
  call void @__cxa_free_exception(ptr %76) #31
  br label %222

91:                                               ; preds = %72
  %92 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %93 = getelementptr inbounds %class.cEnvir, ptr %92, i64 0, i32 2
  %94 = load i8, ptr %93, align 1, !tbaa !530, !range !534, !noundef !535
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %98 = load ptr, ptr %97, align 8, !tbaa !511
  %99 = getelementptr inbounds ptr, ptr %98, i64 22
  %100 = load ptr, ptr %99, align 8
  tail call void %100(ptr noundef nonnull align 8 dereferenceable(288) %97, ptr noundef nonnull %69) #30
  br label %101

101:                                              ; preds = %96, %91
  br i1 %57, label %102, label %103

102:                                              ; preds = %101
  store i32 %62, ptr %48, align 8, !tbaa !629
  br label %140

103:                                              ; preds = %63, %101
  %104 = phi i64 [ %64, %63 ], [ %67, %101 ]
  %105 = load ptr, ptr %58, align 8, !tbaa !601
  %106 = getelementptr inbounds ptr, ptr %105, i64 %104
  %107 = load ptr, ptr %106, align 8, !tbaa !548
  %108 = tail call noundef ptr @_ZNK5cGate15getPreviousGateEv(ptr noundef nonnull align 8 dereferenceable(48) %107) #30
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = tail call noundef ptr @_ZNK5cGate11getNextGateEv(ptr noundef nonnull align 8 dereferenceable(48) %107) #30
  %112 = icmp eq ptr %111, null
  br i1 %112, label %129, label %113

113:                                              ; preds = %110, %103
  %114 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #31
  %115 = load ptr, ptr %107, align 8, !tbaa !511
  %116 = getelementptr inbounds ptr, ptr %115, i64 8
  %117 = load ptr, ptr %116, align 8
  invoke void %117(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %107) #30
          to label %118 unwind label %123

118:                                              ; preds = %113
  %119 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %114, ptr noundef nonnull %0, ptr noundef nonnull @.str.16, ptr noundef %1, i32 noundef %2, ptr noundef %119) #30
          to label %122 unwind label %120

120:                                              ; preds = %118
  %121 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  br label %127

122:                                              ; preds = %118
  invoke void @__cxa_throw(ptr nonnull %114, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
          to label %224 unwind label %125

123:                                              ; preds = %113
  %124 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  br label %127

125:                                              ; preds = %122
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  br label %222

127:                                              ; preds = %120, %123
  %128 = phi { ptr, i32 } [ %124, %123 ], [ %121, %120 ]
  call void @__cxa_free_exception(ptr %114) #31
  br label %222

129:                                              ; preds = %110
  %130 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %131 = getelementptr inbounds %class.cEnvir, ptr %130, i64 0, i32 2
  %132 = load i8, ptr %131, align 1, !tbaa !530, !range !534, !noundef !535
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %136 = load ptr, ptr %135, align 8, !tbaa !511
  %137 = getelementptr inbounds ptr, ptr %136, i64 22
  %138 = load ptr, ptr %137, align 8
  tail call void %138(ptr noundef nonnull align 8 dereferenceable(288) %135, ptr noundef nonnull %107) #30
  br label %139

139:                                              ; preds = %134, %129
  store i32 %62, ptr %48, align 8, !tbaa !629
  br i1 %55, label %155, label %140

140:                                              ; preds = %102, %139
  %141 = phi i64 [ %67, %102 ], [ %104, %139 ]
  %142 = phi i1 [ true, %102 ], [ false, %139 ]
  %143 = load ptr, ptr %56, align 8, !tbaa !601
  %144 = getelementptr inbounds ptr, ptr %143, i64 %141
  %145 = load ptr, ptr %144, align 8, !tbaa !548
  %146 = icmp eq ptr %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %140
  %148 = load ptr, ptr %145, align 8, !tbaa !511
  %149 = getelementptr inbounds ptr, ptr %148, i64 4
  %150 = load ptr, ptr %149, align 8
  tail call void %150(ptr noundef nonnull align 8 dereferenceable(48) %145) #32
  %151 = load ptr, ptr %56, align 8, !tbaa !601
  br label %152

152:                                              ; preds = %140, %147
  %153 = phi ptr [ %143, %140 ], [ %151, %147 ]
  %154 = getelementptr inbounds ptr, ptr %153, i64 %141
  store ptr null, ptr %154, align 8, !tbaa !548
  br i1 %142, label %171, label %155

155:                                              ; preds = %139, %152
  %156 = phi i64 [ %104, %139 ], [ %141, %152 ]
  %157 = load ptr, ptr %58, align 8, !tbaa !601
  %158 = getelementptr inbounds ptr, ptr %157, i64 %156
  %159 = load ptr, ptr %158, align 8, !tbaa !548
  %160 = icmp eq ptr %159, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %155
  %162 = load ptr, ptr %159, align 8, !tbaa !511
  %163 = getelementptr inbounds ptr, ptr %162, i64 4
  %164 = load ptr, ptr %163, align 8
  tail call void %164(ptr noundef nonnull align 8 dereferenceable(48) %159) #32
  %165 = load ptr, ptr %58, align 8, !tbaa !601
  br label %166

166:                                              ; preds = %155, %161
  %167 = phi ptr [ %165, %161 ], [ %157, %155 ]
  %168 = getelementptr inbounds ptr, ptr %167, i64 %156
  store ptr null, ptr %168, align 8, !tbaa !548
  %169 = icmp sgt i32 %62, %2
  br i1 %169, label %170, label %59

170:                                              ; preds = %166, %171
  br label %60, !llvm.loop !695

171:                                              ; preds = %152
  %172 = icmp sgt i32 %62, %2
  br i1 %172, label %170, label %173

173:                                              ; preds = %171, %59
  tail call fastcc void @_ZL12reallocGatevRPP5cGateii(ptr noundef nonnull align 8 dereferenceable(8) %56, i32 noundef %51, i32 noundef %52) #30
  br i1 %57, label %175, label %174

174:                                              ; preds = %59, %173
  tail call fastcc void @_ZL12reallocGatevRPP5cGateii(ptr noundef nonnull align 8 dereferenceable(8) %58, i32 noundef %51, i32 noundef %52) #30
  br label %175

175:                                              ; preds = %174, %173
  store i32 %2, ptr %48, align 8, !tbaa !629
  br label %176

176:                                              ; preds = %175, %47
  %177 = icmp slt i32 %49, %2
  br i1 %177, label %178, label %221, !prof !694

178:                                              ; preds = %176
  %179 = icmp eq i32 %50, 79
  br i1 %179, label %183, label %180, !prof !696

180:                                              ; preds = %178
  %181 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 3
  tail call fastcc void @_ZL12reallocGatevRPP5cGateii(ptr noundef nonnull align 8 dereferenceable(8) %181, i32 noundef %51, i32 noundef %52) #30
  %182 = icmp eq i32 %50, 73
  br i1 %182, label %185, label %183, !prof !697

183:                                              ; preds = %178, %180
  %184 = getelementptr inbounds %"struct.cGate::Desc", ptr %24, i64 %25, i32 4
  tail call fastcc void @_ZL12reallocGatevRPP5cGateii(ptr noundef nonnull align 8 dereferenceable(8) %184, i32 noundef %51, i32 noundef %52) #30
  br label %185

185:                                              ; preds = %180, %183
  %186 = phi i1 [ false, %183 ], [ true, %180 ]
  store i32 %2, ptr %48, align 8, !tbaa !629
  br label %187

187:                                              ; preds = %185, %218
  %188 = phi i32 [ %219, %218 ], [ %49, %185 ]
  br i1 %179, label %203, label %189, !prof !625

189:                                              ; preds = %187
  %190 = load ptr, ptr %0, align 8, !tbaa !511
  %191 = getelementptr inbounds ptr, ptr %190, i64 50
  %192 = load ptr, ptr %191, align 8
  %193 = tail call noundef ptr %192(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %50) #30
  tail call void @_ZN5cGate4Desc12setInputGateEPS_i(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef %193, i32 noundef %188) #30
  %194 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %195 = getelementptr inbounds %class.cEnvir, ptr %194, i64 0, i32 2
  %196 = load i8, ptr %195, align 1, !tbaa !530, !range !534, !noundef !535
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %203, !prof !698

198:                                              ; preds = %189
  %199 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %200 = load ptr, ptr %199, align 8, !tbaa !511
  %201 = getelementptr inbounds ptr, ptr %200, i64 21
  %202 = load ptr, ptr %201, align 8
  tail call void %202(ptr noundef nonnull align 8 dereferenceable(288) %199, ptr noundef %193) #30
  br label %203

203:                                              ; preds = %198, %189, %187
  br i1 %186, label %218, label %204, !prof !625

204:                                              ; preds = %203
  %205 = load ptr, ptr %0, align 8, !tbaa !511
  %206 = getelementptr inbounds ptr, ptr %205, i64 50
  %207 = load ptr, ptr %206, align 8
  %208 = tail call noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %50) #30
  tail call void @_ZN5cGate4Desc13setOutputGateEPS_i(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef %208, i32 noundef %188) #30
  %209 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %210 = getelementptr inbounds %class.cEnvir, ptr %209, i64 0, i32 2
  %211 = load i8, ptr %210, align 1, !tbaa !530, !range !534, !noundef !535
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %218, !prof !698

213:                                              ; preds = %204
  %214 = tail call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %215 = load ptr, ptr %214, align 8, !tbaa !511
  %216 = getelementptr inbounds ptr, ptr %215, i64 21
  %217 = load ptr, ptr %216, align 8
  tail call void %217(ptr noundef nonnull align 8 dereferenceable(288) %214, ptr noundef %208) #30
  br label %218

218:                                              ; preds = %213, %204, %203
  %219 = add i32 %188, 1
  %220 = icmp eq i32 %219, %2
  br i1 %220, label %221, label %187, !prof !699, !llvm.loop !700

221:                                              ; preds = %218, %176
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #31
  ret void

222:                                              ; preds = %125, %87, %31, %38, %45, %127, %89, %20, %12
  %223 = phi { ptr, i32 } [ %13, %12 ], [ %21, %20 ], [ %39, %38 ], [ %46, %45 ], [ %32, %31 ], [ %90, %89 ], [ %88, %87 ], [ %128, %127 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #31
  resume { ptr, i32 } %223

224:                                              ; preds = %122, %84
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN5cGate4Desc11capacityForEi(i32 noundef %0) local_unnamed_addr #5 comdat align 2 !prof !701 {
  %2 = icmp slt i32 %0, 8
  br i1 %2, label %9, label %3, !prof !702

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 32
  br i1 %4, label %9, label %5, !prof !703

5:                                                ; preds = %3
  %6 = icmp ult i32 %0, 256
  %7 = select i1 %6, i32 15, i32 63, !prof !704
  %8 = select i1 %6, i32 496, i32 2147483584, !prof !704
  br label %9

9:                                                ; preds = %5, %3, %1
  %10 = phi i32 [ 1, %1 ], [ 3, %3 ], [ %7, %5 ]
  %11 = phi i32 [ -2, %1 ], [ 60, %3 ], [ %8, %5 ]
  %12 = add nsw i32 %10, %0
  %13 = and i32 %12, %11
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL12reallocGatevRPP5cGateii(ptr nocapture noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !705 !PGOFuncName !706 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %26, label %5, !prof !707

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = icmp slt i32 %2, 0
  %8 = shl nuw nsw i64 %6, 3
  %9 = select i1 %7, i64 -1, i64 %8
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #36
  %11 = load ptr, ptr %0, align 8, !tbaa !548
  %12 = icmp slt i32 %1, %2
  %13 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %10, ptr align 8 %11, i64 %15, i1 false)
  br i1 %12, label %16, label %22, !prof !708

16:                                               ; preds = %5
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %10, i64 %17
  %19 = sub nsw i32 %2, %1
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %18, i8 0, i64 %21, i1 false)
  br label %22

22:                                               ; preds = %16, %5
  %23 = icmp eq ptr %11, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  tail call void @_ZdaPv(ptr noundef nonnull %11) #34
  br label %25

25:                                               ; preds = %24, %22
  store ptr %10, ptr %0, align 8, !tbaa !548
  br label %26

26:                                               ; preds = %25, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5cGate4Desc12setInputGateEPS_i(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !709 {
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !601
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  store ptr %1, ptr %7, align 8, !tbaa !548
  %8 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !634
  %9 = shl i32 %2, 2
  %10 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !681
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN5cGate4Desc13setOutputGateEPS_i(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 comdat align 2 !prof !709 {
  %4 = getelementptr inbounds %"struct.cGate::Desc", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !601
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  store ptr %1, ptr %7, align 8, !tbaa !548
  %8 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 1
  store ptr %0, ptr %8, align 8, !tbaa !634
  %9 = shl i32 %2, 2
  %10 = or disjoint i32 %9, 1
  %11 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  store i32 %10, ptr %11, align 8, !tbaa !681
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK7cModule8gateSizeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !710 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %4 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #30
  %5 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK7cModule10gateBaseIdEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %4 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #30
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %7, ptr noundef nonnull %0, ptr noundef nonnull @.str.17, ptr noundef %1) #30
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %45

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !529
  %14 = zext nneg i32 %4 to i64
  %15 = getelementptr inbounds %"struct.cGate::Desc", ptr %13, i64 %14
  %16 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #30
  %17 = icmp ne i32 %16, 66
  %18 = load i8, ptr %3, align 1
  %19 = icmp ne i8 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %11
  %22 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef %1) #30
          to label %23 unwind label %24

23:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %45

26:                                               ; preds = %11
  %27 = icmp eq i8 %18, 105
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #30
  %30 = icmp ne i32 %29, 73
  %31 = zext i1 %30 to i32
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ 0, %26 ], [ %31, %28 ]
  %34 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #30
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = shl nuw i32 %4, 1
  %37 = or disjoint i32 %33, %36
  br label %43

38:                                               ; preds = %32
  %39 = shl i32 %4, 20
  %40 = add i32 %39, 1048576
  %41 = shl nuw nsw i32 %33, 19
  %42 = or disjoint i32 %41, %40
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ %42, %38 ], [ %37, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  ret i32 %44

45:                                               ; preds = %24, %9
  %46 = phi ptr [ %22, %24 ], [ %7, %9 ]
  %47 = phi { ptr, i32 } [ %25, %24 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %46) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN7cModule4gateEPKci(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !711 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #31
  %5 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #30
  %6 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #30
  %7 = icmp ne i32 %6, 66
  %8 = load i8, ptr %4, align 1
  %9 = icmp ne i8 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %16, label %11, !prof !712

11:                                               ; preds = %3
  %12 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull %0, ptr noundef nonnull @.str.19, ptr noundef %1) #30
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %67

16:                                               ; preds = %3
  %17 = icmp eq i8 %8, 105
  br i1 %17, label %21, label %18, !prof !713

18:                                               ; preds = %16
  %19 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #30
  %20 = icmp eq i32 %19, 73
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i1 [ true, %16 ], [ %20, %18 ]
  %23 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #30
  br i1 %23, label %35, label %24, !prof !714

24:                                               ; preds = %21
  %25 = icmp eq i32 %2, -1
  br i1 %25, label %31, label %26, !prof !715

26:                                               ; preds = %24
  %27 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef %1) #30
          to label %28 unwind label %29

28:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %67

31:                                               ; preds = %24
  %32 = getelementptr inbounds %"struct.cGate::Desc", ptr %5, i64 0, i32 3
  %33 = getelementptr inbounds %"struct.cGate::Desc", ptr %5, i64 0, i32 4
  %34 = select i1 %22, ptr %32, ptr %33, !prof !716
  br label %64

35:                                               ; preds = %21
  %36 = icmp slt i32 %2, 0
  br i1 %36, label %37, label %44, !prof !717

37:                                               ; preds = %35
  %38 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %39 = icmp eq i32 %2, -1
  %40 = select i1 %39, ptr @.str.22, ptr @.str.23
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %40, ptr noundef %1) #30
          to label %41 unwind label %42

41:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

42:                                               ; preds = %37
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %67

44:                                               ; preds = %35
  %45 = getelementptr inbounds %"struct.cGate::Desc", ptr %5, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !629
  %47 = icmp sgt i32 %46, %2
  br i1 %47, label %54, label %48, !prof !718

48:                                               ; preds = %44
  %49 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %50 = load i32, ptr %45, align 8, !tbaa !629
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %49, ptr noundef nonnull %0, ptr noundef nonnull @.str.24, i32 noundef %2, ptr noundef %1, i32 noundef %50) #30
          to label %51 unwind label %52

51:                                               ; preds = %48
  tail call void @__cxa_throw(ptr nonnull %49, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

52:                                               ; preds = %48
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %67

54:                                               ; preds = %44
  %55 = zext nneg i32 %2 to i64
  br i1 %22, label %56, label %60, !prof !719

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"struct.cGate::Desc", ptr %5, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !601
  %59 = getelementptr inbounds ptr, ptr %58, i64 %55
  br label %64

60:                                               ; preds = %54
  %61 = getelementptr inbounds %"struct.cGate::Desc", ptr %5, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !601
  %63 = getelementptr inbounds ptr, ptr %62, i64 %55
  br label %64

64:                                               ; preds = %56, %60, %31
  %65 = phi ptr [ %34, %31 ], [ %59, %56 ], [ %63, %60 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !601
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #31
  ret ptr %66

67:                                               ; preds = %29, %42, %52, %14
  %68 = phi ptr [ %27, %29 ], [ %38, %42 ], [ %49, %52 ], [ %12, %14 ]
  %69 = phi { ptr, i32 } [ %30, %29 ], [ %43, %42 ], [ %53, %52 ], [ %15, %14 ]
  tail call void @__cxa_free_exception(ptr %68) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #31
  resume { ptr, i32 } %69
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK7cModule8findGateEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 align 2 !prof !587 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #31
  %5 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #30
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !529
  %10 = zext nneg i32 %5 to i64
  %11 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10
  %12 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #30
  %13 = icmp ne i32 %12, 66
  %14 = load i8, ptr %4, align 1
  %15 = icmp ne i8 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %7
  %18 = icmp eq i8 %14, 105
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #30
  %21 = icmp eq i32 %20, 73
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i1 [ true, %17 ], [ %21, %19 ]
  %24 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #30
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = icmp eq i32 %2, -1
  br i1 %26, label %27, label %52

27:                                               ; preds = %25
  br i1 %23, label %28, label %30

28:                                               ; preds = %27
  %29 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 3
  br label %48

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 4
  br label %48

32:                                               ; preds = %22
  %33 = icmp slt i32 %2, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !629
  %37 = icmp sgt i32 %36, %2
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = zext nneg i32 %2 to i64
  br i1 %23, label %40, label %44

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !601
  %43 = getelementptr inbounds ptr, ptr %42, i64 %39
  br label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !601
  %47 = getelementptr inbounds ptr, ptr %46, i64 %39
  br label %48

48:                                               ; preds = %30, %28, %44, %40
  %49 = phi ptr [ %43, %40 ], [ %47, %44 ], [ %29, %28 ], [ %31, %30 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !601
  %51 = tail call noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48) %50) #30
  br label %52

52:                                               ; preds = %48, %7, %32, %34, %25, %3
  %53 = phi i32 [ -1, %3 ], [ -1, %7 ], [ -1, %25 ], [ -1, %34 ], [ -1, %32 ], [ %51, %48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #31
  ret i32 %53
}

; Function Attrs: optsize
declare noundef i32 @_ZNK5cGate5getIdEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN7cModule8gateHalfEPKcN5cGate4TypeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 align 2 !prof !720 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #31
  %6 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %5) #30
  %7 = icmp eq i32 %2, 73
  %8 = getelementptr inbounds %"struct.cGate::Desc", ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !620
  %10 = getelementptr inbounds %"struct.cGate::Name", ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %"struct.cGate::Name", ptr %9, i64 0, i32 1
  %12 = select i1 %7, ptr %11, ptr %10, !prof !721
  %13 = tail call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #30
  %14 = load ptr, ptr %0, align 8, !tbaa !511
  %15 = getelementptr inbounds ptr, ptr %14, i64 59
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %13, i32 noundef %3) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #31
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule7hasGateEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #5 align 2 !prof !722 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #31
  %5 = call noundef i32 @_ZNK7cModule12findGateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #30
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %18, label %7, !prof !723

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !529
  %10 = zext nneg i32 %5 to i64
  %11 = icmp eq i32 %2, -1
  br i1 %11, label %18, label %12, !prof !724

12:                                               ; preds = %7
  %13 = icmp sgt i32 %2, -1
  br i1 %13, label %14, label %18, !prof !723

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 %10, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !629
  %17 = icmp sgt i32 %16, %2
  br label %18

18:                                               ; preds = %7, %14, %12, %3
  %19 = phi i1 [ false, %3 ], [ true, %7 ], [ false, %12 ], [ %17, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #31
  ret i1 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule10deleteGateEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %4 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #30
  %5 = load i8, ptr %3, align 1, !tbaa !601
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %8, ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef %1) #30
          to label %9 unwind label %10

9:                                                ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  tail call void @_ZN7cModule15disposeGateDescEPN5cGate4DescEb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %4, i1 noundef zeroext true) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK7cModule12getGateNamesEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %3 = alloca ptr, align 8
  tail call void @_ZNSt6vectorIPKcSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %4 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !569
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 8
  br label %9

9:                                                ; preds = %7, %22
  %10 = phi i32 [ %5, %7 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %7 ], [ %24, %22 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !529
  %13 = getelementptr inbounds %"struct.cGate::Desc", ptr %12, i64 %11, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !620
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %17 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %14) #30
  store ptr %17, ptr %3, align 8, !tbaa !548
  invoke void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #30
          to label %18 unwind label %20

18:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  %19 = load i32, ptr %4, align 8, !tbaa !569
  br label %22

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  call void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  resume { ptr, i32 } %21

22:                                               ; preds = %9, %18
  %23 = phi i32 [ %10, %9 ], [ %19, %18 ]
  %24 = add nuw nsw i64 %11, 1
  %25 = sext i32 %23 to i64
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %9, label %27, !llvm.loop !725

27:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !726 {
  tail call void @_ZNSt12_Vector_baseIPKcSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !727 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !728 {
  %2 = load ptr, ptr %0, align 8, !tbaa !729
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !731
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  invoke void @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #30
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #35
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK7cModule8gateTypeEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !587 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %4 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #30
  %5 = load i8, ptr %3, align 1, !tbaa !601
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = icmp eq i8 %5, 105
  %9 = select i1 %8, i32 73, i32 79
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !620
  %13 = getelementptr inbounds %"struct.cGate::Name", ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !685
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i32 [ %9, %7 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  ret i32 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule12isGateVectorEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !587 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  %4 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #30
  %5 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN7cModule31getOrCreateFirstUnconnectedGateEPKccbb(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i8 noundef signext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #31
  %9 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #30
  %10 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #30
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %12, ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef %1) #30
          to label %13 unwind label %14

13:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %100

16:                                               ; preds = %5
  %17 = load i8, ptr %6, align 1, !tbaa !601
  %18 = icmp ne i8 %17, 0
  %19 = icmp ne i8 %2, 0
  %20 = and i1 %19, %18
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  %23 = sext i8 %2 to i32
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %22, ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef %1, i32 noundef %23) #30
          to label %24 unwind label %25

24:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %100

27:                                               ; preds = %16
  %28 = or i8 %17, %2
  switch i8 %28, label %40 [
    i8 0, label %29
    i8 111, label %46
    i8 105, label %46
  ]

29:                                               ; preds = %27
  %30 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #30
  %31 = icmp eq i32 %30, 66
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %33, ptr noundef nonnull %0, ptr noundef nonnull @.str.28) #30
          to label %34 unwind label %35

34:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %100

37:                                               ; preds = %29
  %38 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #30
  %39 = icmp eq i32 %38, 73
  br label %48

40:                                               ; preds = %27
  %41 = sext i8 %28 to i32
  %42 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %42, ptr noundef nonnull %0, ptr noundef nonnull @.str.29, i32 noundef %41) #30
          to label %43 unwind label %44

43:                                               ; preds = %40
  tail call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

44:                                               ; preds = %40
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %100

46:                                               ; preds = %27, %27
  %47 = icmp eq i8 %28, 105
  br label %48

48:                                               ; preds = %46, %37
  %49 = phi i1 [ %47, %46 ], [ %39, %37 ]
  %50 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 3
  %51 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 4
  %52 = select i1 %49, ptr %50, ptr %51
  %53 = load ptr, ptr %52, align 8, !tbaa !601
  %54 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !629
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #31
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %53, i64 %56
  br i1 %3, label %58, label %60

58:                                               ; preds = %48
  store ptr null, ptr %7, align 8, !tbaa !548
  %59 = call noundef ptr @_ZSt11lower_boundIPP5cGateS1_24less_gateConnectedInsideET_S4_S4_RKT0_T1_(ptr noundef %53, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(8) %7) #30
  br label %62

60:                                               ; preds = %48
  store ptr null, ptr %8, align 8, !tbaa !548
  %61 = call noundef ptr @_ZSt11lower_boundIPP5cGateS1_25less_gateConnectedOutsideET_S4_S4_RKT0_T1_(ptr noundef %53, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(8) %8) #30
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi ptr [ %61, %60 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #31
  %64 = getelementptr inbounds ptr, ptr %53, i64 %56
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  br i1 %4, label %71, label %67

67:                                               ; preds = %66
  %68 = icmp sgt i32 %55, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %67
  %70 = zext nneg i32 %55 to i64
  br label %81

71:                                               ; preds = %66
  %72 = getelementptr inbounds %"struct.cGate::Desc", ptr %9, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !620
  %74 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %73) #30
  %75 = add nsw i32 %55, 1
  %76 = load ptr, ptr %0, align 8, !tbaa !511
  %77 = getelementptr inbounds ptr, ptr %76, i64 53
  %78 = load ptr, ptr %77, align 8
  call void %78(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %74, i32 noundef %75) #30
  %79 = load ptr, ptr %52, align 8, !tbaa !601
  %80 = getelementptr inbounds ptr, ptr %79, i64 %56
  br label %95

81:                                               ; preds = %69, %92
  %82 = phi i64 [ 0, %69 ], [ %93, %92 ]
  %83 = getelementptr inbounds ptr, ptr %53, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !548
  br i1 %3, label %85, label %87

85:                                               ; preds = %81
  %86 = call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %84) #30
  br i1 %86, label %92, label %89

87:                                               ; preds = %81
  %88 = call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %84) #30
  br i1 %88, label %92, label %89

89:                                               ; preds = %87, %85
  %90 = and i64 %82, 4294967295
  %91 = getelementptr inbounds ptr, ptr %53, i64 %90
  br label %95

92:                                               ; preds = %85, %87
  %93 = add nuw nsw i64 %82, 1
  %94 = icmp eq i64 %93, %70
  br i1 %94, label %98, label %81, !llvm.loop !732

95:                                               ; preds = %62, %71, %89
  %96 = phi ptr [ %91, %89 ], [ %80, %71 ], [ %63, %62 ]
  %97 = load ptr, ptr %96, align 8, !tbaa !548
  br label %98

98:                                               ; preds = %92, %95, %67
  %99 = phi ptr [ null, %67 ], [ %97, %95 ], [ null, %92 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #31
  ret ptr %99

100:                                              ; preds = %35, %44, %25, %14
  %101 = phi ptr [ %33, %35 ], [ %42, %44 ], [ %22, %25 ], [ %12, %14 ]
  %102 = phi { ptr, i32 } [ %36, %35 ], [ %45, %44 ], [ %26, %25 ], [ %15, %14 ]
  tail call void @__cxa_free_exception(ptr %101) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #31
  resume { ptr, i32 } %102
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt11lower_boundIPP5cGateS1_24less_gateConnectedInsideET_S4_S4_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !587 {
  tail call void @_ZN9__gnu_cxx5__ops15__iter_comp_valI24less_gateConnectedInsideEENS0_14_Iter_comp_valIT_EES4_() #30
  %4 = tail call noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt11lower_boundIPP5cGateS1_25less_gateConnectedOutsideET_S4_S4_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !587 {
  tail call void @_ZN9__gnu_cxx5__ops15__iter_comp_valI25less_gateConnectedOutsideEENS0_14_Iter_comp_valIT_EES4_() #30
  %4 = tail call noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  ret ptr %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !733 {
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca %struct.less_gatePairConnectedInside, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.less_gatePairConnectedOutside, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #31
  %12 = call noundef ptr @_ZNK7cModule8gateDescEPKcRc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %7) #30
  %13 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %12) #30
  br i1 %13, label %19, label %14, !prof !734

14:                                               ; preds = %6
  %15 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %15, ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %1) #30
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %98

19:                                               ; preds = %6
  %20 = load i8, ptr %7, align 1, !tbaa !601
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22, !prof !734

22:                                               ; preds = %19
  %23 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %23, ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #30
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %98

27:                                               ; preds = %19
  %28 = getelementptr inbounds %"struct.cGate::Desc", ptr %12, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !629
  %30 = getelementptr inbounds %"struct.cGate::Desc", ptr %12, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !601
  %32 = getelementptr inbounds %"struct.cGate::Desc", ptr %12, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !601
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #31
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds ptr, ptr %31, i64 %34
  br i1 %2, label %36, label %39, !prof !735

36:                                               ; preds = %27
  store ptr null, ptr %8, align 8, !tbaa !548
  call void @_ZN28less_gatePairConnectedInsideC2EPP5cGate(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %33) #30
  %37 = load ptr, ptr %9, align 8
  %38 = call noundef ptr @_ZSt11lower_boundIPP5cGateS1_28less_gatePairConnectedInsideET_S4_S4_RKT0_T1_(ptr noundef %31, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr %37) #30
  br label %42

39:                                               ; preds = %27
  store ptr null, ptr %10, align 8, !tbaa !548
  call void @_ZN29less_gatePairConnectedOutsideC2EPP5cGate(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %33) #30
  %40 = load ptr, ptr %11, align 8
  %41 = call noundef ptr @_ZSt11lower_boundIPP5cGateS1_29less_gatePairConnectedOutsideET_S4_S4_RKT0_T1_(ptr noundef %31, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr %40) #30
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %41, %39 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #31
  %44 = getelementptr inbounds ptr, ptr %31, i64 %34
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %52, label %46, !prof !734

46:                                               ; preds = %42
  %47 = load ptr, ptr %43, align 8, !tbaa !548
  store ptr %47, ptr %4, align 8, !tbaa !548
  %48 = call noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %47) #30
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %33, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !548
  store ptr %51, ptr %5, align 8, !tbaa !548
  br label %97

52:                                               ; preds = %42
  br i1 %3, label %57, label %53, !prof !734

53:                                               ; preds = %52
  %54 = icmp sgt i32 %29, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %53
  %56 = zext nneg i32 %29 to i64
  br label %71

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"struct.cGate::Desc", ptr %12, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !620
  %60 = call noundef ptr @_ZNK10opp_string5c_strEv(ptr noundef nonnull align 8 dereferenceable(8) %59) #30
  %61 = add nsw i32 %29, 1
  %62 = load ptr, ptr %0, align 8, !tbaa !511
  %63 = getelementptr inbounds ptr, ptr %62, i64 53
  %64 = load ptr, ptr %63, align 8
  call void %64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %60, i32 noundef %61) #30
  %65 = load ptr, ptr %30, align 8, !tbaa !601
  %66 = getelementptr inbounds ptr, ptr %65, i64 %34
  %67 = load ptr, ptr %66, align 8, !tbaa !548
  store ptr %67, ptr %4, align 8, !tbaa !548
  %68 = load ptr, ptr %32, align 8, !tbaa !601
  %69 = getelementptr inbounds ptr, ptr %68, i64 %34
  %70 = load ptr, ptr %69, align 8, !tbaa !548
  store ptr %70, ptr %5, align 8, !tbaa !548
  br label %97

71:                                               ; preds = %55, %93
  %72 = phi i64 [ 0, %55 ], [ %94, %93 ]
  %73 = getelementptr inbounds ptr, ptr %31, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !548
  br i1 %2, label %75, label %77

75:                                               ; preds = %71
  %76 = call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %74) #30
  br i1 %76, label %93, label %79

77:                                               ; preds = %71
  %78 = call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %74) #30
  br i1 %78, label %93, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds ptr, ptr %33, i64 %72
  %81 = load ptr, ptr %80, align 8, !tbaa !548
  %82 = call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %81) #30
  br i1 %82, label %93, label %87

83:                                               ; preds = %77
  %84 = getelementptr inbounds ptr, ptr %33, i64 %72
  %85 = load ptr, ptr %84, align 8, !tbaa !548
  %86 = call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %85) #30
  br i1 %86, label %93, label %87

87:                                               ; preds = %83, %79
  %88 = and i64 %72, 4294967295
  %89 = getelementptr inbounds ptr, ptr %31, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !548
  store ptr %90, ptr %4, align 8, !tbaa !548
  %91 = getelementptr inbounds ptr, ptr %33, i64 %88
  %92 = load ptr, ptr %91, align 8, !tbaa !548
  store ptr %92, ptr %5, align 8, !tbaa !548
  br label %97

93:                                               ; preds = %75, %77, %83, %79
  %94 = add nuw nsw i64 %72, 1
  %95 = icmp eq i64 %94, %56
  br i1 %95, label %96, label %71, !llvm.loop !736

96:                                               ; preds = %93, %53
  store ptr null, ptr %5, align 8, !tbaa !548
  store ptr null, ptr %4, align 8, !tbaa !548
  br label %97

97:                                               ; preds = %87, %96, %57, %46
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #31
  ret void

98:                                               ; preds = %25, %17
  %99 = phi ptr [ %23, %25 ], [ %15, %17 ]
  %100 = phi { ptr, i32 } [ %26, %25 ], [ %18, %17 ]
  tail call void @__cxa_free_exception(ptr %99) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #31
  resume { ptr, i32 } %100
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt11lower_boundIPP5cGateS1_28less_gatePairConnectedInsideET_S4_S4_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %3) local_unnamed_addr #6 comdat !prof !587 {
  %5 = tail call ptr @_ZN9__gnu_cxx5__ops15__iter_comp_valI28less_gatePairConnectedInsideEENS0_14_Iter_comp_valIT_EES4_(ptr %3) #30
  %6 = tail call noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %5) #30
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN28less_gatePairConnectedInsideC2EPP5cGate(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !587 {
  store ptr %1, ptr %0, align 8, !tbaa !737
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt11lower_boundIPP5cGateS1_29less_gatePairConnectedOutsideET_S4_S4_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %3) local_unnamed_addr #6 comdat !prof !733 {
  %5 = tail call ptr @_ZN9__gnu_cxx5__ops15__iter_comp_valI29less_gatePairConnectedOutsideEENS0_14_Iter_comp_valIT_EES4_(ptr %3) #30
  %6 = tail call noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %5) #30
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN29less_gatePairConnectedOutsideC2EPP5cGate(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !733 {
  store ptr %1, ptr %0, align 8, !tbaa !739
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !741 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !634
  %4 = tail call noundef i32 @_ZNK5cGate4Desc7indexOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %0) #30
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK7cModule9gateCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(176) %0) local_unnamed_addr #5 align 2 !prof !587 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !569
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 8
  br label %9

7:                                                ; preds = %30, %1
  %8 = phi i32 [ 0, %1 ], [ %31, %30 ]
  ret i32 %8

9:                                                ; preds = %5, %30
  %10 = phi i64 [ 0, %5 ], [ %32, %30 ]
  %11 = phi i32 [ 0, %5 ], [ %31, %30 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !529
  %13 = getelementptr inbounds %"struct.cGate::Desc", ptr %12, i64 %10, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !620
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"struct.cGate::Desc", ptr %12, i64 %10
  %18 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #30
  %19 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %17) #30
  %20 = icmp eq i32 %19, 66
  br i1 %18, label %24, label %21

21:                                               ; preds = %16
  %22 = select i1 %20, i32 2, i32 1
  %23 = add nsw i32 %22, %11
  br label %30

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"struct.cGate::Desc", ptr %12, i64 %10, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !629
  %27 = zext i1 %20 to i32
  %28 = shl nsw i32 %26, %27
  %29 = add nsw i32 %28, %11
  br label %30

30:                                               ; preds = %21, %24, %9
  %31 = phi i32 [ %29, %24 ], [ %23, %21 ], [ %11, %9 ]
  %32 = add nuw nsw i64 %10, 1
  %33 = load i32, ptr %2, align 8, !tbaa !569
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %9, label %7, !llvm.loop !742
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK7cModule13gateByOrdinalEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !587 {
  %3 = alloca %"class.cModule::GateIterator", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #31
  call void @_ZN7cModule12GateIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull %0) #30
  %4 = call noundef ptr @_ZN7cModule12GateIteratorpLEi(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 noundef %1) #30
  %5 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = call noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #31
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN7cModule12GateIteratorpLEi(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !587 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %6, %2
  %5 = tail call noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  ret ptr %5

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = tail call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 poison) #30
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %4, label %6, !llvm.loop !743
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK7cModule24checkInternalConnectionsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !744 {
  %2 = alloca %"class.cModule::GateIterator", align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.cModule::SubmoduleIterator", align 8
  %5 = alloca %"class.cModule::GateIterator", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #31
  call void @_ZN7cModule12GateIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull %0) #30
  %7 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %2) #30
  br i1 %7, label %8, label %10, !prof !745

8:                                                ; preds = %34, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0) #30
  %9 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %9, label %37, label %38, !prof !745

10:                                               ; preds = %1, %34
  %11 = call noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %2) #30
  %12 = call noundef i32 @_ZNK5cGate4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %11) #30
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %34, label %14, !prof !746

14:                                               ; preds = %10
  %15 = call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %11) #30
  br i1 %15, label %34, label %16, !prof !747

16:                                               ; preds = %14
  %17 = call ptr @__cxa_allocate_exception(i64 128) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  %18 = load ptr, ptr %11, align 8, !tbaa !511
  %19 = getelementptr inbounds ptr, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %11) #30
          to label %21 unwind label %26

21:                                               ; preds = %16
  %22 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef %22) #30
          to label %25 unwind label %23

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  br label %30

25:                                               ; preds = %21
  invoke void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
          to label %85 unwind label %28

26:                                               ; preds = %16
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  br label %30

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  br label %32

30:                                               ; preds = %23, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %24, %23 ]
  call void @__cxa_free_exception(ptr %17) #31
  br label %32

32:                                               ; preds = %28, %30
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #31
  br label %83

34:                                               ; preds = %14, %10
  %35 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %2, i32 poison) #30
  %36 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %2) #30
  br i1 %36, label %8, label %10, !prof !748, !llvm.loop !749

37:                                               ; preds = %41, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret i1 true

38:                                               ; preds = %8, %41
  %39 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #31
  call void @_ZN7cModule12GateIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef %39) #30
  %40 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %5) #30
  br i1 %40, label %41, label %44, !prof !750

41:                                               ; preds = %80, %38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #31
  %42 = call noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #30
  %43 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %43, label %37, label %38, !prof !751, !llvm.loop !752

44:                                               ; preds = %38, %80
  %45 = call noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %5) #30
  %46 = call noundef i32 @_ZNK5cGate4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %45) #30
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %80, label %48, !prof !617

48:                                               ; preds = %44
  %49 = call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %45) #30
  br i1 %49, label %80, label %50, !prof !618

50:                                               ; preds = %48
  %51 = call noundef ptr @_ZNK5cGate13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(48) %45) #30
  %52 = load ptr, ptr %51, align 8, !tbaa !511
  %53 = getelementptr inbounds ptr, ptr %52, i64 24
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef zeroext i1 %54(ptr noundef nonnull align 8 dereferenceable(40) %51, ptr noundef nonnull @.str.33, ptr noundef null) #30
  br i1 %55, label %80, label %56

56:                                               ; preds = %50
  %57 = call noundef ptr @_ZNK5cGate13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(48) %45) #30
  %58 = load ptr, ptr %57, align 8, !tbaa !511
  %59 = getelementptr inbounds ptr, ptr %58, i64 24
  %60 = load ptr, ptr %59, align 8
  %61 = call noundef zeroext i1 %60(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull @.str.34, ptr noundef null) #30
  br i1 %61, label %80, label %62

62:                                               ; preds = %56
  %63 = call ptr @__cxa_allocate_exception(i64 128) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #31
  %64 = load ptr, ptr %45, align 8, !tbaa !511
  %65 = getelementptr inbounds ptr, ptr %64, i64 8
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %45) #30
          to label %67 unwind label %72

67:                                               ; preds = %62
  %68 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %63, ptr noundef nonnull %0, ptr noundef nonnull @.str.35, ptr noundef %68) #30
          to label %71 unwind label %69

69:                                               ; preds = %67
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  br label %76

71:                                               ; preds = %67
  invoke void @__cxa_throw(ptr nonnull %63, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
          to label %85 unwind label %74

72:                                               ; preds = %62
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  br label %76

74:                                               ; preds = %71
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #31
  br label %78

76:                                               ; preds = %69, %72
  %77 = phi { ptr, i32 } [ %73, %72 ], [ %70, %69 ]
  call void @__cxa_free_exception(ptr %63) #31
  br label %78

78:                                               ; preds = %74, %76
  %79 = phi { ptr, i32 } [ %77, %76 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  br label %83

80:                                               ; preds = %56, %50, %48, %44
  %81 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %5, i32 poison) #30
  %82 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %5) #30
  br i1 %82, label %41, label %44, !prof !753, !llvm.loop !754

83:                                               ; preds = %78, %32
  %84 = phi { ptr, i32 } [ %33, %32 ], [ %79, %78 ]
  resume { ptr, i32 } %84

85:                                               ; preds = %71, %25
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !755 {
  %2 = tail call noundef i32 @_ZNK5cGate13getVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #30
  ret i32 %2
}

; Function Attrs: optsize
declare noundef ptr @_ZNK5cGate13getPropertiesEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN7cModule13findSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !587 {
  %4 = alloca %"class.cModule::SubmoduleIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0) #30
  %5 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, -1
  br label %8

8:                                                ; preds = %6, %22
  %9 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %10 = call noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1) #30
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  br i1 %7, label %12, label %15

12:                                               ; preds = %11
  %13 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %14 = call noundef zeroext i1 @_ZNK7cModule8isVectorEv(ptr noundef nonnull align 8 dereferenceable(176) %13) #30
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %11
  %16 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %17 = call noundef i32 @_ZNK7cModule8getIndexEv(ptr noundef nonnull align 8 dereferenceable(176) %16) #30
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %12
  %20 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %21 = call noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %20) #30
  br label %25

22:                                               ; preds = %8, %15
  %23 = call noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #30
  %24 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %24, label %25, label %8, !llvm.loop !756

25:                                               ; preds = %22, %3, %19
  %26 = phi i32 [ %21, %19 ], [ -1, %3 ], [ -1, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret i32 %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !757 {
  %3 = load ptr, ptr %0, align 8, !tbaa !511
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  %7 = tail call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %6, ptr noundef %1) #30
  %8 = icmp eq i32 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7cModule5getIdEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !758 {
  %2 = getelementptr inbounds %class.cModule, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !514
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !759 {
  %4 = alloca %"class.cModule::SubmoduleIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0) #30
  %5 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %5, label %24, label %6, !prof !760

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, -1
  br label %8

8:                                                ; preds = %6, %21
  %9 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %10 = call noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1) #30
  br i1 %10, label %11, label %21, !prof !761

11:                                               ; preds = %8
  br i1 %7, label %12, label %15, !prof !762

12:                                               ; preds = %11
  %13 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %14 = call noundef zeroext i1 @_ZNK7cModule8isVectorEv(ptr noundef nonnull align 8 dereferenceable(176) %13) #30
  br i1 %14, label %15, label %19, !prof !763

15:                                               ; preds = %12, %11
  %16 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %17 = call noundef i32 @_ZNK7cModule8getIndexEv(ptr noundef nonnull align 8 dereferenceable(176) %16) #30
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %12
  %20 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br label %24

21:                                               ; preds = %8, %15
  %22 = call noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #30
  %23 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %23, label %24, label %8, !prof !764, !llvm.loop !765

24:                                               ; preds = %21, %3, %19
  %25 = phi ptr [ %20, %19 ], [ null, %3 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret ptr %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN7cModule23getModuleByRelativePathEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %3 = alloca %class.opp_string, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  call void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #30
  %4 = call noundef ptr @_ZN10opp_string6bufferEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  %5 = call ptr @strtok(ptr noundef %4, ptr noundef nonnull @.str.2) #32
  br label %6

6:                                                ; preds = %32, %2
  %7 = phi ptr [ %0, %2 ], [ %33, %32 ]
  %8 = phi ptr [ %5, %2 ], [ %34, %32 ]
  %9 = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 91) #37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = invoke noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %7, ptr noundef %8, i32 noundef -1) #30
          to label %32 unwind label %13

13:                                               ; preds = %11, %28
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %39

15:                                               ; preds = %25
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %39

17:                                               ; preds = %6
  %18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #37
  %19 = add i64 %18, -1
  %20 = getelementptr inbounds i8, ptr %8, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !601
  %22 = icmp eq i8 %21, 93
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %24, ptr noundef nonnull %0, ptr noundef nonnull @.str.36, ptr noundef %1) #30
          to label %25 unwind label %26

25:                                               ; preds = %23
  invoke void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
          to label %41 unwind label %15

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %24) #31
  br label %39

28:                                               ; preds = %17
  store i8 0, ptr %9, align 1, !tbaa !601
  %29 = getelementptr inbounds i8, ptr %9, i64 1
  %30 = call i32 @atoi(ptr nocapture noundef nonnull %29) #37
  %31 = invoke noundef ptr @_ZN7cModule12getSubmoduleEPKci(ptr noundef nonnull align 8 dereferenceable(176) %7, ptr noundef nonnull %8, i32 noundef %30) #30
          to label %32 unwind label %13

32:                                               ; preds = %28, %11
  %33 = phi ptr [ %12, %11 ], [ %31, %28 ]
  %34 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.2) #32
  %35 = icmp ne ptr %34, null
  %36 = icmp ne ptr %33, null
  %37 = and i1 %36, %35
  br i1 %37, label %6, label %38, !llvm.loop !766

38:                                               ; preds = %32
  call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  ret ptr %33

39:                                               ; preds = %13, %15, %26
  %40 = phi { ptr, i32 } [ %27, %26 ], [ %14, %13 ], [ %16, %15 ]
  call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  resume { ptr, i32 } %40

41:                                               ; preds = %25
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2EPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !767 {
  %3 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #30
  store ptr %3, ptr %0, align 8, !tbaa !672
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #23

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN10opp_string6bufferEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !768 {
  %2 = load ptr, ptr %0, align 8, !tbaa !672
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !769 {
  %2 = load ptr, ptr %0, align 8, !tbaa !672
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #34
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN7cModule14getAncestorParEPKc(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  br label %3

3:                                                ; preds = %2, %11
  %4 = phi ptr [ %0, %2 ], [ %14, %11 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !511
  %6 = getelementptr inbounds ptr, ptr %5, i64 44
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef %1) #30
  %9 = icmp slt i32 %8, 0
  %10 = load ptr, ptr %4, align 8, !tbaa !511
  br i1 %9, label %11, label %21

11:                                               ; preds = %3
  %12 = getelementptr inbounds ptr, ptr %10, i64 37
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(176) %4) #30
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %3, !llvm.loop !770

16:                                               ; preds = %11
  %17 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull %0, ptr noundef nonnull @.str.37, ptr noundef %1) #30
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %17) #31
  resume { ptr, i32 } %20

21:                                               ; preds = %3
  %22 = getelementptr inbounds ptr, ptr %10, i64 42
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(24) ptr %23(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %8) #30
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !510 {
  %2 = alloca %class.cContextSwitcher, align 8
  %3 = alloca %class.cContextTypeSwitcher, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  call void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  invoke void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0) #30
          to label %4 unwind label %12

4:                                                ; preds = %1
  invoke void @_ZN10cComponent18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
          to label %5 unwind label %14

5:                                                ; preds = %4
  %6 = invoke noundef ptr @_ZNK7cModule13getModuleTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = load ptr, ptr %6, align 8, !tbaa !511
  %9 = getelementptr inbounds ptr, ptr %8, i64 32
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull %0) #30
          to label %11 unwind label %14

11:                                               ; preds = %7
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  ret void

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %7, %5, %4
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  resume { ptr, i32 } %17
}

; Function Attrs: optsize
declare void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cComponent18finalizeParametersEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cModule13getModuleTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #6 comdat align 2 !prof !771 {
  %2 = tail call noundef ptr @_ZNK10cComponent16getComponentTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
  ret ptr %2
}

; Function Attrs: nounwind optsize
declare void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN7cModule11buildInsideEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !510 {
  %2 = alloca %class.cContextSwitcher, align 8
  %3 = alloca %class.cContextTypeSwitcher, align 4
  %4 = tail call noundef zeroext i1 @_ZNK7cModule17buildInsideCalledEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  br i1 %4, label %5, label %10, !prof !545

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.38) #30
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #31
  br label %28

10:                                               ; preds = %1
  %11 = tail call noundef zeroext i1 @_ZNK10cComponent19parametersFinalizedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
  br i1 %11, label %16, label %12, !prof !536

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !511
  %14 = getelementptr inbounds ptr, ptr %13, i64 33
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  br label %16

16:                                               ; preds = %12, %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  call void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  invoke void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 0) #30
          to label %17 unwind label %22

17:                                               ; preds = %16
  %18 = load ptr, ptr %0, align 8, !tbaa !511
  %19 = getelementptr inbounds ptr, ptr %18, i64 51
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
          to label %21 unwind label %24

21:                                               ; preds = %17
  call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 128, i1 noundef zeroext true) #30
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  ret i32 0

22:                                               ; preds = %16
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  br label %28

28:                                               ; preds = %26, %8
  %29 = phi { ptr, i32 } [ %9, %8 ], [ %27, %26 ]
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule17buildInsideCalledEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #5 comdat align 2 !prof !772 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !773
  %4 = and i16 %3, 128
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cComponent19parametersFinalizedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !774 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !773
  %4 = and i16 %3, 4
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 !prof !775 {
  %4 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !773
  %6 = trunc i32 %1 to i16
  br i1 %2, label %7, label %9, !prof !776

7:                                                ; preds = %3
  %8 = or i16 %5, %6
  br label %12

9:                                                ; preds = %3
  %10 = xor i16 %6, -1
  %11 = and i16 %5, %10
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i16 [ %11, %9 ], [ %8, %7 ]
  store i16 %13, ptr %4, align 8, !tbaa !773
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule12deleteModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !614 {
  %2 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #30
  %3 = tail call noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #30
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5, !prof !777

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %17, %13 ], [ %3, %1 ]
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #30
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #31
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !511
  %15 = getelementptr inbounds ptr, ptr %14, i64 37
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(176) %6) #30
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !prof !778, !llvm.loop !779

19:                                               ; preds = %13, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !511
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(176) %0) #32
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11cSimulation16getContextModuleEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule14changeParentToEPS_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %3 = alloca %"class.cModule::GateIterator", align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #30
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #31
  br label %58

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #31
  call void @_ZN7cModule12GateIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull %0) #30
  %11 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  br i1 %11, label %12, label %13

12:                                               ; preds = %26, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #31
  br label %38

13:                                               ; preds = %10, %26
  %14 = call noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  %15 = call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %14) #30
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = call ptr @__cxa_allocate_exception(i64 128) #31
  %18 = load ptr, ptr %14, align 8, !tbaa !511
  %19 = getelementptr inbounds ptr, ptr %18, i64 7
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(48) %14) #30
          to label %22 unwind label %24

22:                                               ; preds = %16
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %17, ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef %21) #30
          to label %23 unwind label %24

23:                                               ; preds = %22
  call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

24:                                               ; preds = %22, %16
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #31
  br label %58

26:                                               ; preds = %13
  %27 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %3, i32 poison) #30
  %28 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %3) #30
  br i1 %28, label %12, label %13, !llvm.loop !780

29:                                               ; preds = %46
  %30 = load ptr, ptr %0, align 8, !tbaa !511
  %31 = getelementptr inbounds ptr, ptr %30, i64 37
  %32 = load ptr, ptr %31, align 8
  %33 = call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  call void @_ZN7cModule15removeSubmoduleEPS_(ptr noundef nonnull align 8 dereferenceable(176) %33, ptr noundef nonnull %0) #30
  call void @_ZN7cModule15insertSubmoduleEPS_(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull %0) #30
  %34 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %35 = getelementptr inbounds %class.cEnvir, ptr %34, i64 0, i32 2
  %36 = load i8, ptr %35, align 1, !tbaa !530, !range !534, !noundef !535
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %52, label %57

38:                                               ; preds = %12, %46
  %39 = phi ptr [ %1, %12 ], [ %50, %46 ]
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %42, ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #30
          to label %43 unwind label %44

43:                                               ; preds = %41
  call void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %42) #31
  br label %58

46:                                               ; preds = %38
  %47 = load ptr, ptr %39, align 8, !tbaa !511
  %48 = getelementptr inbounds ptr, ptr %47, i64 37
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(176) %39) #30
  %51 = icmp eq ptr %50, null
  br i1 %51, label %29, label %38, !llvm.loop !781

52:                                               ; preds = %29
  %53 = call noundef ptr @_ZN11cSimulation14getActiveEnvirEv() #30
  %54 = load ptr, ptr %53, align 8, !tbaa !511
  %55 = getelementptr inbounds ptr, ptr %54, i64 16
  %56 = load ptr, ptr %55, align 8
  call void %56(ptr noundef nonnull align 8 dereferenceable(288) %53, ptr noundef nonnull %0, ptr noundef nonnull %33) #30
  br label %57

57:                                               ; preds = %29, %52
  ret void

58:                                               ; preds = %24, %44, %8
  %59 = phi { ptr, i32 } [ %9, %8 ], [ %25, %24 ], [ %45, %44 ]
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule14callInitializeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !614 {
  %2 = alloca %class.cContextTypeSwitcher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  call void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 1) #30
  br label %3

3:                                                ; preds = %1, %27
  %4 = phi i1 [ true, %1 ], [ %33, %27 ]
  %5 = phi i1 [ true, %1 ], [ %31, %27 ]
  %6 = phi i32 [ 0, %1 ], [ %29, %27 ]
  %7 = phi i8 [ 1, %1 ], [ %19, %27 ]
  %8 = phi i8 [ 1, %1 ], [ %28, %27 ]
  br i1 %5, label %9, label %18, !prof !782

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !511
  %11 = getelementptr inbounds ptr, ptr %10, i64 46
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %6) #30
          to label %14 unwind label %16

14:                                               ; preds = %9
  %15 = zext i1 %13 to i8
  br label %18

16:                                               ; preds = %20, %9
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %2) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  resume { ptr, i32 } %17

18:                                               ; preds = %14, %3
  %19 = phi i8 [ %15, %14 ], [ %7, %3 ]
  br i1 %4, label %20, label %27, !prof !783

20:                                               ; preds = %18
  %21 = load ptr, ptr %0, align 8, !tbaa !511
  %22 = getelementptr inbounds ptr, ptr %21, i64 45
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %6) #30
          to label %25 unwind label %16

25:                                               ; preds = %20
  %26 = zext i1 %24 to i8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i8 [ %26, %25 ], [ %8, %18 ]
  %29 = add nuw nsw i32 %6, 1
  %30 = and i8 %19, 1
  %31 = icmp ne i8 %30, 0
  %32 = and i8 %28, 1
  %33 = icmp ne i8 %32, 0
  %34 = select i1 %31, i1 true, i1 %33, !prof !784
  br i1 %34, label %3, label %35, !prof !785, !llvm.loop !786

35:                                               ; preds = %27
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %2) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN7cModule14callInitializeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %3 = alloca %class.cContextTypeSwitcher, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  call void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 1) #30
  %4 = load ptr, ptr %0, align 8, !tbaa !511
  %5 = getelementptr inbounds ptr, ptr %4, i64 46
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) #30
          to label %8 unwind label %15

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !511
  %10 = getelementptr inbounds ptr, ptr %9, i64 45
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) #30
          to label %13 unwind label %17

13:                                               ; preds = %8
  %14 = or i1 %7, %12
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  ret i1 %14

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %3) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN7cModule18initializeChannelsEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !510 {
  %3 = alloca %"class.cModule::ChannelIterator", align 8
  %4 = alloca %"class.cModule::SubmoduleIterator", align 8
  %5 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #30
  %6 = tail call noundef i32 @_ZNK11cSimulation14getContextTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %5) #30
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %13, label %8, !prof !536

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.43) #30
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #31
  br label %49

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  call void @_ZN7cModule15ChannelIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull %0) #30
  %14 = call noundef zeroext i1 @_ZNK7cModule15ChannelIterator3endEv(ptr noundef nonnull align 8 dereferenceable(28) %3) #30
  br i1 %14, label %15, label %20, !prof !787

15:                                               ; preds = %29, %13
  %16 = phi i8 [ 0, %13 ], [ %30, %29 ]
  call void @_ZN7cModule15ChannelIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0) #30
  %17 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %17, label %33, label %37, !prof !537

18:                                               ; preds = %20
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7cModule15ChannelIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %3) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  br label %49

20:                                               ; preds = %13, %29
  %21 = phi i8 [ %30, %29 ], [ 0, %13 ]
  %22 = call noundef ptr @_ZN7cModule15ChannelIteratorclEv(ptr noundef nonnull align 8 dereferenceable(28) %3) #30
  %23 = load ptr, ptr %22, align 8, !tbaa !511
  %24 = getelementptr inbounds ptr, ptr %23, i64 45
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(116) %22, i32 noundef %1) #30
          to label %27 unwind label %18

27:                                               ; preds = %20
  br i1 %26, label %28, label %29, !prof !788

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %27, %28
  %30 = phi i8 [ 1, %28 ], [ %21, %27 ]
  %31 = call noundef ptr @_ZN7cModule15ChannelIteratorppEi(ptr noundef nonnull align 8 dereferenceable(28) %3, i32 noundef 0) #30
  %32 = call noundef zeroext i1 @_ZNK7cModule15ChannelIterator3endEv(ptr noundef nonnull align 8 dereferenceable(28) %3) #30
  br i1 %32, label %15, label %20, !prof !789, !llvm.loop !790

33:                                               ; preds = %45, %15
  %34 = phi i8 [ %16, %15 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  %35 = and i8 %34, 1
  %36 = icmp ne i8 %35, 0
  ret i1 %36

37:                                               ; preds = %15, %45
  %38 = phi i8 [ %46, %45 ], [ %16, %15 ]
  %39 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %40 = load ptr, ptr %39, align 8, !tbaa !511
  %41 = getelementptr inbounds ptr, ptr %40, i64 46
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(176) %39, i32 noundef %1) #30
  br i1 %43, label %44, label %45, !prof !537

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %37, %44
  %46 = phi i8 [ 1, %44 ], [ %38, %37 ]
  %47 = call noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #30
  %48 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %48, label %33, label %37, !prof !538, !llvm.loop !791

49:                                               ; preds = %18, %11
  %50 = phi { ptr, i32 } [ %12, %11 ], [ %19, %18 ]
  resume { ptr, i32 } %50
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11cSimulation14getContextTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #5 comdat align 2 !prof !792 {
  %2 = getelementptr inbounds %class.cSimulation, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !793
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7cModule15ChannelIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !772 {
  tail call void @_ZNSt6vectorIP8cChannelSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  invoke void @_ZN7cModule15ChannelIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) #30
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIP8cChannelSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule15ChannelIterator3endEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #5 comdat align 2 !prof !794 {
  %2 = getelementptr inbounds %"class.cModule::ChannelIterator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !795
  %4 = tail call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN7cModule15ChannelIteratorclEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #5 comdat align 2 !prof !801 {
  %2 = getelementptr inbounds %"class.cModule::ChannelIterator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !795
  %4 = tail call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %5 = trunc i64 %4 to i32
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %12, !prof !802

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 8, !tbaa !795
  %9 = sext i32 %8 to i64
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP8cChannelSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %9) #32
  %11 = load ptr, ptr %10, align 8, !tbaa !548
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %11, %7 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN7cModule15ChannelIteratorppEi(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !801 {
  %3 = tail call noundef zeroext i1 @_ZNK7cModule15ChannelIterator3endEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #30
  br i1 %3, label %11, label %4, !prof !803

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.cModule::ChannelIterator", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !795
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !795
  %8 = sext i32 %6 to i64
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP8cChannelSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %8) #32
  %10 = load ptr, ptr %9, align 8, !tbaa !548
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi ptr [ %10, %4 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cModule15ChannelIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZNSt6vectorIP8cChannelSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN7cModule17initializeModulesEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !772 {
  %3 = alloca %class.cMethodCallContextSwitcher, align 8
  %4 = alloca %"class.cModule::SubmoduleIterator", align 8
  %5 = tail call noundef ptr @_ZN11cSimulation19getActiveSimulationEv() #30
  %6 = tail call noundef i32 @_ZNK11cSimulation14getContextTypeEv(ptr noundef nonnull align 8 dereferenceable(224) %5) #30
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %15, label %8, !prof !804

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.44) #30
          to label %10 unwind label %11

10:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %9) #31
  br label %109

15:                                               ; preds = %2
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %33, !prof !805

17:                                               ; preds = %15
  %18 = tail call noundef zeroext i1 @_ZNK10cComponent11initializedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
  br i1 %18, label %19, label %26, !prof !545

19:                                               ; preds = %17
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #31
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #30
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  tail call void @__cxa_free_exception(ptr %20) #31
  br label %109

26:                                               ; preds = %17
  %27 = tail call noundef zeroext i1 @_ZNK7cModule17buildInsideCalledEv(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  br i1 %27, label %33, label %28, !prof !536

28:                                               ; preds = %26
  %29 = load ptr, ptr %0, align 8, !tbaa !511
  %30 = getelementptr inbounds ptr, ptr %29, i64 56
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(176) %0) #30
  br label %33

33:                                               ; preds = %26, %28, %15
  %34 = load ptr, ptr %0, align 8, !tbaa !511
  %35 = getelementptr inbounds ptr, ptr %34, i64 29
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
  %38 = icmp sgt i32 %37, %1
  br i1 %38, label %39, label %90, !prof !806

39:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  call void @_ZN26cMethodCallContextSwitcherC1EPK10cComponentb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %0, i1 noundef zeroext false) #30
  invoke void (ptr, ptr, ...) @_ZN26cMethodCallContextSwitcher10methodCallEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.46) #30
          to label %40 unwind label %44

40:                                               ; preds = %39
  %41 = load ptr, ptr %0, align 8, !tbaa !511
  %42 = getelementptr inbounds ptr, ptr %41, i64 28
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) #30
          to label %86 unwind label %48

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = extractvalue { ptr, i32 } %45, 0
  %47 = extractvalue { ptr, i32 } %45, 1
  br label %87

48:                                               ; preds = %40
  %49 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  %50 = extractvalue { ptr, i32 } %49, 0
  %51 = extractvalue { ptr, i32 } %49, 1
  %52 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI10cException) #31
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call ptr @__cxa_begin_catch(ptr %50) #31
  invoke void @__cxa_rethrow() #33
          to label %117 unwind label %81

56:                                               ; preds = %48
  %57 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #31
  %58 = icmp eq i32 %51, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %56
  %60 = call ptr @__cxa_begin_catch(ptr %50) #31
  %61 = call ptr @__cxa_allocate_exception(i64 128) #31
  %62 = load ptr, ptr %60, align 8, !tbaa !511
  %63 = getelementptr inbounds ptr, ptr %62, i64 -1
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %64) #30
          to label %66 unwind label %72

66:                                               ; preds = %59
  %67 = load ptr, ptr %60, align 8, !tbaa !511
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %60) #32
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %61, ptr noundef nonnull @.str.47, ptr noundef %65, ptr noundef %70) #30
          to label %71 unwind label %72

71:                                               ; preds = %66
  invoke void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
          to label %117 unwind label %74

72:                                               ; preds = %66, %59
  %73 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %61) #31
  br label %76

74:                                               ; preds = %71
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %73, %72 ]
  invoke void @__cxa_end_catch()
          to label %78 unwind label %114

78:                                               ; preds = %76
  %79 = extractvalue { ptr, i32 } %77, 0
  %80 = extractvalue { ptr, i32 } %77, 1
  br label %87

81:                                               ; preds = %54
  %82 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %83 unwind label %114

83:                                               ; preds = %81
  %84 = extractvalue { ptr, i32 } %82, 1
  %85 = extractvalue { ptr, i32 } %82, 0
  br label %87

86:                                               ; preds = %40
  call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 8, i1 noundef zeroext true) #30
  call void @_ZN26cMethodCallContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  br label %90

87:                                               ; preds = %83, %78, %56, %44
  %88 = phi i32 [ %84, %83 ], [ %80, %78 ], [ %51, %56 ], [ %47, %44 ]
  %89 = phi ptr [ %85, %83 ], [ %79, %78 ], [ %50, %56 ], [ %46, %44 ]
  call void @_ZN26cMethodCallContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  br label %109

90:                                               ; preds = %86, %33
  %91 = add nsw i32 %37, -1
  %92 = icmp sgt i32 %91, %1
  %93 = zext i1 %92 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0) #30
  %94 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %94, label %95, label %99, !prof !807

95:                                               ; preds = %99, %90
  %96 = phi i8 [ %93, %90 ], [ %106, %99 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  %97 = and i8 %96, 1
  %98 = icmp ne i8 %97, 0
  ret i1 %98

99:                                               ; preds = %90, %99
  %100 = phi i8 [ %106, %99 ], [ %93, %90 ]
  %101 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %102 = load ptr, ptr %101, align 8, !tbaa !511
  %103 = getelementptr inbounds ptr, ptr %102, i64 45
  %104 = load ptr, ptr %103, align 8
  %105 = call noundef zeroext i1 %104(ptr noundef nonnull align 8 dereferenceable(176) %101, i32 noundef %1) #30
  %106 = select i1 %105, i8 1, i8 %100, !prof !808
  %107 = call noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #30
  %108 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  br i1 %108, label %95, label %99, !prof !809, !llvm.loop !810

109:                                              ; preds = %87, %22, %11
  %110 = phi i32 [ %14, %11 ], [ %25, %22 ], [ %88, %87 ]
  %111 = phi ptr [ %13, %11 ], [ %24, %22 ], [ %89, %87 ]
  %112 = insertvalue { ptr, i32 } poison, ptr %111, 0
  %113 = insertvalue { ptr, i32 } %112, i32 %110, 1
  resume { ptr, i32 } %113

114:                                              ; preds = %81, %76
  %115 = landingpad { ptr, i32 }
          catch ptr null
  %116 = extractvalue { ptr, i32 } %115, 0
  call void @__clang_call_terminate(ptr %116) #35
  unreachable

117:                                              ; preds = %54, %71
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cComponent11initializedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !811 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !773
  %4 = and i16 %3, 8
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN26cMethodCallContextSwitcherC1EPK10cComponentb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN26cMethodCallContextSwitcher10methodCallEPKcz(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #25

; Function Attrs: optsize
declare noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN26cMethodCallContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule10callFinishEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !510 {
  %2 = alloca %"class.cModule::ChannelIterator", align 8
  %3 = alloca %"class.cModule::SubmoduleIterator", align 8
  %4 = alloca %class.cContextSwitcher, align 8
  %5 = alloca %class.cContextTypeSwitcher, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #31
  call void @_ZN7cModule15ChannelIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull %0) #30
  %6 = call noundef zeroext i1 @_ZNK7cModule15ChannelIterator3endEv(ptr noundef nonnull align 8 dereferenceable(28) %2) #30
  br i1 %6, label %7, label %13, !prof !787

7:                                                ; preds = %18, %1
  call void @_ZN7cModule15ChannelIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  call void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %0) #30
  %8 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  br i1 %8, label %21, label %22, !prof !537

9:                                                ; preds = %13
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  call void @_ZN7cModule15ChannelIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %2) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #31
  br label %90

13:                                               ; preds = %1, %18
  %14 = call noundef ptr @_ZN7cModule15ChannelIteratorclEv(ptr noundef nonnull align 8 dereferenceable(28) %2) #30
  %15 = load ptr, ptr %14, align 8, !tbaa !511
  %16 = getelementptr inbounds ptr, ptr %15, i64 40
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(116) %14) #30
          to label %18 unwind label %9

18:                                               ; preds = %13
  %19 = call noundef ptr @_ZN7cModule15ChannelIteratorppEi(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef 0) #30
  %20 = call noundef zeroext i1 @_ZNK7cModule15ChannelIterator3endEv(ptr noundef nonnull align 8 dereferenceable(28) %2) #30
  br i1 %20, label %7, label %13, !prof !789, !llvm.loop !812

21:                                               ; preds = %22, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  call void @_ZN16cContextSwitcherC1EPK10cComponent(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %0) #30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  invoke void @_ZN20cContextTypeSwitcherC1Ei(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 3) #30
          to label %29 unwind label %37

22:                                               ; preds = %7, %22
  %23 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  %24 = load ptr, ptr %23, align 8, !tbaa !511
  %25 = getelementptr inbounds ptr, ptr %24, i64 40
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(176) %23) #30
  %27 = call noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #30
  %28 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  br i1 %28, label %21, label %22, !prof !538, !llvm.loop !813

29:                                               ; preds = %21
  %30 = load ptr, ptr %0, align 8, !tbaa !511
  %31 = getelementptr inbounds ptr, ptr %30, i64 27
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
          to label %33 unwind label %41

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8, !tbaa !511
  %35 = getelementptr inbounds ptr, ptr %34, i64 31
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
          to label %83 unwind label %45

37:                                               ; preds = %21
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = extractvalue { ptr, i32 } %38, 0
  %40 = extractvalue { ptr, i32 } %38, 1
  br label %87

41:                                               ; preds = %29
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = extractvalue { ptr, i32 } %42, 0
  %44 = extractvalue { ptr, i32 } %42, 1
  br label %84

45:                                               ; preds = %33
  %46 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI10cException
          catch ptr @_ZTISt9exception
  %47 = extractvalue { ptr, i32 } %46, 0
  %48 = extractvalue { ptr, i32 } %46, 1
  %49 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI10cException) #31
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call ptr @__cxa_begin_catch(ptr %47) #31
  invoke void @__cxa_rethrow() #33
          to label %98 unwind label %78

53:                                               ; preds = %45
  %54 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #31
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %53
  %57 = call ptr @__cxa_begin_catch(ptr %47) #31
  %58 = call ptr @__cxa_allocate_exception(i64 128) #31
  %59 = load ptr, ptr %57, align 8, !tbaa !511
  %60 = getelementptr inbounds ptr, ptr %59, i64 -1
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr @_Z12opp_typenameRKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %61) #30
          to label %63 unwind label %69

63:                                               ; preds = %56
  %64 = load ptr, ptr %57, align 8, !tbaa !511
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %57) #32
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %58, ptr noundef nonnull @.str.48, ptr noundef %62, ptr noundef %67) #30
          to label %68 unwind label %69

68:                                               ; preds = %63
  invoke void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #33
          to label %98 unwind label %71

69:                                               ; preds = %63, %56
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %58) #31
  br label %73

71:                                               ; preds = %68
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  invoke void @__cxa_end_catch()
          to label %75 unwind label %95

75:                                               ; preds = %73
  %76 = extractvalue { ptr, i32 } %74, 0
  %77 = extractvalue { ptr, i32 } %74, 1
  br label %84

78:                                               ; preds = %51
  %79 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %80 unwind label %95

80:                                               ; preds = %78
  %81 = extractvalue { ptr, i32 } %79, 1
  %82 = extractvalue { ptr, i32 } %79, 0
  br label %84

83:                                               ; preds = %33
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %5) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret void

84:                                               ; preds = %80, %75, %53, %41
  %85 = phi i32 [ %81, %80 ], [ %77, %75 ], [ %48, %53 ], [ %44, %41 ]
  %86 = phi ptr [ %82, %80 ], [ %76, %75 ], [ %47, %53 ], [ %43, %41 ]
  call void @_ZN20cContextTypeSwitcherD1Ev(ptr noundef nonnull align 4 dereferenceable(4) %5) #32
  br label %87

87:                                               ; preds = %84, %37
  %88 = phi i32 [ %85, %84 ], [ %40, %37 ]
  %89 = phi ptr [ %86, %84 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @_ZN16cContextSwitcherD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  br label %90

90:                                               ; preds = %87, %9
  %91 = phi i32 [ %12, %9 ], [ %88, %87 ]
  %92 = phi ptr [ %11, %9 ], [ %89, %87 ]
  %93 = insertvalue { ptr, i32 } poison, ptr %92, 0
  %94 = insertvalue { ptr, i32 } %93, i32 %91, 1
  resume { ptr, i32 } %94

95:                                               ; preds = %78, %73
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  call void @__clang_call_terminate(ptr %97) #35
  unreachable

98:                                               ; preds = %51, %68
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7cModule12GateIterator4initEPKS_(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !564 {
  store ptr %1, ptr %0, align 8, !tbaa !568
  %3 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !566
  %4 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 4, !tbaa !814
  %5 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  store i32 0, ptr %5, align 8, !tbaa !815
  %6 = tail call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  br i1 %6, label %12, label %7, !prof !816

7:                                                ; preds = %2, %10
  %8 = tail call noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12, !prof !817

10:                                               ; preds = %7
  tail call void @_ZN7cModule12GateIterator7advanceEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  %11 = tail call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %0) #30
  br i1 %11, label %12, label %7, !prof !818, !llvm.loop !819

12:                                               ; preds = %7, %10, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK7cModule12GateIterator7currentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(20) %0) local_unnamed_addr #5 align 2 !prof !820 {
  %2 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !566
  %4 = load ptr, ptr %0, align 8, !tbaa !568
  %5 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !569
  %7 = icmp slt i32 %3, %6
  br i1 %7, label %8, label %49, !prof !821

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.cModule, ptr %4, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !529
  %11 = sext i32 %3 to i64
  %12 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11
  %13 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !620
  %15 = icmp eq ptr %14, null
  br i1 %15, label %49, label %16, !prof !822

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  %18 = load i8, ptr %17, align 4, !tbaa !814, !range !534, !noundef !535
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23, !prof !823

20:                                               ; preds = %16
  %21 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %12) #30
  %22 = icmp eq i32 %21, 79
  br i1 %22, label %49, label %23, !prof !578

23:                                               ; preds = %20, %16
  %24 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %12) #30
  br i1 %24, label %31, label %25, !prof !824

25:                                               ; preds = %23
  %26 = load i8, ptr %17, align 4, !tbaa !814, !range !534, !noundef !535
  %27 = icmp eq i8 %26, 0
  %28 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 4
  %29 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 3
  %30 = select i1 %27, ptr %29, ptr %28, !prof !825
  br label %46

31:                                               ; preds = %23
  %32 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !629
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35, !prof !826

35:                                               ; preds = %31
  %36 = load i8, ptr %17, align 4, !tbaa !814, !range !534, !noundef !535
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !815
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 3
  %42 = getelementptr inbounds %"struct.cGate::Desc", ptr %10, i64 %11, i32 4
  %43 = select i1 %37, ptr %41, ptr %42, !prof !827
  %44 = load ptr, ptr %43, align 8, !tbaa !601
  %45 = getelementptr inbounds ptr, ptr %44, i64 %40
  br label %46

46:                                               ; preds = %35, %25
  %47 = phi ptr [ %30, %25 ], [ %45, %35 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !601
  br label %49

49:                                               ; preds = %46, %8, %20, %31, %1
  %50 = phi ptr [ null, %1 ], [ null, %8 ], [ null, %20 ], [ null, %31 ], [ %48, %46 ]
  ret ptr %50
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN7cModule12GateIterator7advanceEv(ptr nocapture noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #5 align 2 !prof !828 {
  %2 = load ptr, ptr %0, align 8, !tbaa !568
  %3 = getelementptr inbounds %class.cModule, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !529
  %5 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !566
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 %7
  %9 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 %7, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !620
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12, !prof !829

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !814, !range !534, !noundef !535
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20, !prof !830

16:                                               ; preds = %12
  %17 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #30
  %18 = icmp eq i32 %17, 79
  br i1 %18, label %19, label %20, !prof !831

19:                                               ; preds = %16
  store i8 1, ptr %13, align 4, !tbaa !814
  br label %49

20:                                               ; preds = %16, %12
  %21 = tail call noundef zeroext i1 @_ZNK5cGate4Desc8isVectorEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #30
  br i1 %21, label %22, label %32, !prof !832

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !815
  %25 = getelementptr inbounds %"struct.cGate::Desc", ptr %4, i64 %7, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !629
  %27 = add nsw i32 %26, -1
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %31, !prof !833

29:                                               ; preds = %22
  %30 = add nsw i32 %24, 1
  store i32 %30, ptr %23, align 8, !tbaa !815
  br label %49

31:                                               ; preds = %22
  store i32 0, ptr %23, align 8, !tbaa !815
  br label %32

32:                                               ; preds = %31, %20
  %33 = load i8, ptr %13, align 4, !tbaa !814, !range !534, !noundef !535
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39, !prof !834

35:                                               ; preds = %32
  %36 = tail call noundef i32 @_ZNK5cGate4Desc7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #30
  %37 = icmp eq i32 %36, 73
  br i1 %37, label %39, label %38, !prof !835

38:                                               ; preds = %35
  store i8 1, ptr %13, align 4, !tbaa !814
  br label %49

39:                                               ; preds = %32, %35, %1
  %40 = load i32, ptr %5, align 8, !tbaa !566
  %41 = load ptr, ptr %0, align 8, !tbaa !568
  %42 = getelementptr inbounds %class.cModule, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !569
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %49, !prof !836

45:                                               ; preds = %39
  %46 = add nsw i32 %40, 1
  store i32 %46, ptr %5, align 8, !tbaa !566
  %47 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 2
  store i8 0, ptr %47, align 4, !tbaa !814
  %48 = getelementptr inbounds %"class.cModule::GateIterator", ptr %0, i64 0, i32 4
  store i32 0, ptr %48, align 8, !tbaa !815
  br label %49

49:                                               ; preds = %39, %45, %38, %29, %19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7cModule15ChannelIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !772 {
  %3 = alloca %"class.cModule::SubmoduleIterator", align 8
  %4 = alloca %"class.cModule::GateIterator", align 8
  %5 = alloca ptr, align 8
  tail call void @_ZNSt6vectorIP8cChannelSaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  call void @_ZN7cModule17SubmoduleIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #30
  br label %8

6:                                                ; preds = %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  %7 = getelementptr inbounds %"class.cModule::ChannelIterator", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !795
  ret void

8:                                                ; preds = %2, %18
  %9 = phi i8 [ 0, %2 ], [ %14, %18 ]
  %10 = call noundef zeroext i1 @_ZNK7cModule17SubmoduleIterator3endEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  br i1 %10, label %13, label %11, !prof !837

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNK7cModule17SubmoduleIteratorclEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i8 [ %9, %11 ], [ 1, %8 ]
  %15 = phi ptr [ %12, %11 ], [ %1, %8 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #31
  call void @_ZN7cModule12GateIteratorC2EPKS_(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef %15) #30
  %16 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %4) #30
  %17 = and i8 %14, 1
  br i1 %16, label %18, label %21, !prof !838

18:                                               ; preds = %34, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #31
  %19 = call noundef ptr @_ZN7cModule17SubmoduleIteratorppEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #30
  %20 = icmp eq i8 %17, 0
  br i1 %20, label %8, label %6, !prof !839, !llvm.loop !840

21:                                               ; preds = %13, %34
  %22 = call noundef ptr @_ZNK7cModule12GateIteratorclEv(ptr noundef nonnull align 8 dereferenceable(20) %4) #30
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24, !prof !841

24:                                               ; preds = %21
  %25 = call noundef ptr @_ZNK5cGate10getChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %22) #30
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27, !prof !842

27:                                               ; preds = %24
  %28 = icmp eq i8 %17, 0
  %29 = select i1 %28, i32 79, i32 73
  %30 = call noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %22) #30
  %31 = icmp eq i32 %30, %29
  br i1 %31, label %32, label %34, !prof !843

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %33 = call noundef ptr @_ZNK5cGate10getChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %22) #30
  store ptr %33, ptr %5, align 8, !tbaa !548
  call void @_ZNSt6vectorIP8cChannelSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  br label %34

34:                                               ; preds = %32, %27, %24, %21
  %35 = call noundef ptr @_ZN7cModule12GateIteratorppEi(ptr noundef nonnull align 8 dereferenceable(20) %4, i32 poison) #30
  %36 = call noundef zeroext i1 @_ZNK7cModule12GateIterator3endEv(ptr noundef nonnull align 8 dereferenceable(20) %4) #30
  br i1 %36, label %18, label %21, !prof !844, !llvm.loop !845
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8cChannelSaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !772 {
  %2 = load ptr, ptr %0, align 8, !tbaa !846
  tail call void @_ZNSt6vectorIP8cChannelSaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK5cGate10getChannelEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !847 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !848
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !849 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !634
  %4 = tail call noundef i32 @_ZNK5cGate4Desc9getTypeOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %0) #30
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8cChannelSaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !801 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP8cChannelSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList14yieldOwnershipEP12cOwnedObjectP7cObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 !prof !850 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !851
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.54, ptr %3, !prof !852
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK12cDefaultList4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK23cNoncopyableOwnedObject3dupEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN12cDefaultList12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !853 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !854
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 !prof !855 {
  ret i1 true
}

; Function Attrs: optsize
declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !773
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cDefaultList11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN12cDefaultList17setPerformFinalGCEb(ptr noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 !prof !587 {
  tail call void @_ZN12cNamedObject7setFlagEib(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef 2, i1 noundef zeroext %1) #30
  ret void
}

; Function Attrs: optsize
declare void @_ZN10cComponent16setComponentTypeEP14cComponentType(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cComponent6addParEP8cParImpl(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cComponent25recordParametersAsScalarsEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cComponent10initializeEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 !prof !856 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %8, !prof !857

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !511
  %6 = getelementptr inbounds ptr, ptr %5, i64 30
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(104) %0) #30
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cComponent13numInitStagesEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !858 {
  ret i32 1
}

; Function Attrs: optsize
declare void @_ZN10cComponent10initializeEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cComponent6finishEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN10cComponent21handleParameterChangeEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK10cComponent14getNedTypeNameEv(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule8isModuleEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !859 {
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cComponent12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 !prof !860 {
  %2 = getelementptr inbounds %class.cComponent, ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 2, !tbaa !588
  %4 = sext i16 %3 to i32
  ret i32 %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN10cComponent3parEi(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN10cComponent3parEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK10cComponent7findParEPKc(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cModule13doBuildInsideEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !861 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cModule13isPlaceholderEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7cModule17SubmoduleIterator4initEPKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !549 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4, !prof !862

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.cModule, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !585
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  store ptr %8, ptr %0, align 8, !tbaa !551
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !511
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #32
  tail call void @_ZdlPv(ptr noundef nonnull %0) #34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #36
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #30
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #34
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !863
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !587 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #31
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #30
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.50) #30
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #30
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
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
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #32
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #31
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !868, !range !534, !noundef !535
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !869
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat !prof !870 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #30
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.52) #38
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #30
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #30
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !871 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #26

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #26

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #5 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !872 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #30
  store i64 %6, ptr %4, align 8, !tbaa !873
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !874

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #30
  %10 = load i64, ptr %4, align 8, !tbaa !873
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #30
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #30
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #32
  store ptr null, ptr %5, align 8, !tbaa !875
  %15 = load i64, ptr %4, align 8, !tbaa !873
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #30
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !872 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !548
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #30
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !872 {
  store ptr %1, ptr %0, align 8, !tbaa !875
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !872 {
  %2 = load ptr, ptr %0, align 8, !tbaa !875
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !877

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #30
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #35
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !872 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !872 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #27

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  tail call void @_ZNSaISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  tail call void @_ZNSt20_Rb_tree_key_compareISt4lessIN5cGate4NameEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessIN5cGate4NameEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !878 {
  store i32 0, ptr %0, align 8, !tbaa !879
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !614 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !883 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !884
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !885
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !886
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !887
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !587 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #30
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #35
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !888 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !889

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #32
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #30
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #32
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !890, !llvm.loop !891

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !892 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !893 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !894
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !895 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !896
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !651 {
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #32
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !651 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #30
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE7destroyIS2_EEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !651 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #30
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #35
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE7destroyIS2_EEvRS4_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !651 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !897 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !898 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !651 {
  tail call void @_ZN5cGate4NameD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %1) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !898 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !898 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !651 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !892 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !884
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !726 {
  tail call void @_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !726 {
  tail call void @_ZNSaIPKcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  tail call void @_ZNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIPKcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !726 {
  tail call void @_ZNSt15__new_allocatorIPKcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !726 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !726 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc7indexOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !741 {
  %3 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !681
  %5 = ashr i32 %4, 2
  %6 = icmp eq i32 %5, -1
  %7 = select i1 %6, i32 0, i32 %5, !prof !899
  ret i32 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate13getVectorSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !755 {
  %2 = getelementptr inbounds %class.cGate, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !634
  %4 = tail call noundef i32 @_ZNK5cGate4Desc8gateSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #30
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !900 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  br i1 %3, label %12, label %5, !prof !901

5:                                                ; preds = %2
  br i1 %4, label %8, label %6, !prof !902

6:                                                ; preds = %5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #37
  br label %17

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !601
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %17

12:                                               ; preds = %2
  br i1 %4, label %17, label %13, !prof !903

13:                                               ; preds = %12
  %14 = load i8, ptr %1, align 1, !tbaa !601
  %15 = icmp ne i8 %14, 0
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %13, %6, %8
  %18 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #6 comdat !prof !904 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !905

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !601
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !906

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #36
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #32
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8cChannelSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !772 {
  tail call void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8cChannelSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !772 {
  %2 = load ptr, ptr %0, align 8, !tbaa !846
  %3 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !907
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  invoke void @_ZSt8_DestroyIPP8cChannelS1_EvT_S3_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #30
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #35
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !772 {
  tail call void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !772 {
  tail call void @_ZNSaIP8cChannelEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  tail call void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIP8cChannelEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !772 {
  tail call void @_ZNSt15__new_allocatorIP8cChannelEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !772 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8cChannelEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !772 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP8cChannelS1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !772 {
  tail call void @_ZSt8_DestroyIPP8cChannelEvT_S3_(ptr noundef %0, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !908 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !772 {
  %2 = load ptr, ptr %0, align 8, !tbaa !846
  %3 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !909
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #30
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIP8cChannelED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #35
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPP8cChannelEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !772 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP8cChannelEEvT_S5_(ptr noundef %0, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP8cChannelEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !772 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !910 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !911

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIP8cChannelEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #30
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8cChannelED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !772 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP8cChannelEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !912 {
  tail call void @_ZNSt15__new_allocatorIP8cChannelE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8cChannelE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !913 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !907
  %4 = load ptr, ptr %0, align 8, !tbaa !846
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP8cChannelSaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !914 {
  %3 = load ptr, ptr %0, align 8, !tbaa !846
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5cGate4Desc9getTypeOfEPKS_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !849 {
  %3 = getelementptr inbounds %class.cGate, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !681
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 73, i32 79
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !915 {
  tail call void @_ZSt8_DestroyIPPKcEvT_S3_(ptr noundef %0, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !916 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !728 {
  %2 = load ptr, ptr %0, align 8, !tbaa !729
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !917
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #30
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIPKcED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #35
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKcEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !915 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_(ptr noundef %0, ptr noundef %1) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !915 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !918 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !919

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #30
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !728 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !920 {
  tail call void @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !614 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  invoke void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #30
          to label %3 unwind label %5

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #30
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #35
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #6 comdat align 2 !prof !619 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %7 = tail call ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(28) %1) #30
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %8 = tail call ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorIN5cGate4NameEES4_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  br i1 %9, label %14, label %10, !prof !921

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !922
  %12 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %11) #30
  %13 = call noundef zeroext i1 @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %12) #30
  br i1 %13, label %14, label %16, !prof !924

14:                                               ; preds = %10, %2
  %15 = call ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !646
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2ERKSt17_Rb_tree_iteratorIS1_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !925 {
  %3 = load ptr, ptr %1, align 8, !tbaa !922
  store ptr %3, ptr %0, align 8, !tbaa !649
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %3) local_unnamed_addr #6 comdat align 2 !prof !619 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7, !prof !926

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull %8) #30
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 8 dereferenceable(28) %3) #30
  br i1 %11, label %14, label %12, !prof !927

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #32
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !928, !llvm.loop !929

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #32
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !930 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorIN5cGate4NameEES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !931 {
  %3 = load ptr, ptr %0, align 8, !tbaa !922
  %4 = load ptr, ptr %1, align 8, !tbaa !922
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !925 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #32
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #6 comdat align 2 !prof !932 {
  %4 = tail call noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) #30
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !892 {
  %2 = tail call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E(ptr noundef %0) #30
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E(ptr noundef %0) local_unnamed_addr #6 comdat align 2 {
  %2 = alloca %"struct.std::_Identity", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #31
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #30
  %4 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNKSt9_IdentityIN5cGate4NameEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(28) %3) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #31
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !933 {
  store ptr %1, ptr %0, align 8, !tbaa !922
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNKSt9_IdentityIN5cGate4NameEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #5 comdat align 2 !prof !934 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #5 comdat align 2 !prof !935 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #32
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !935 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 !prof !935 {
  ret ptr %0
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK5cGate4NameltERKS0_(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !619 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #32
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !619 {
  store ptr %1, ptr %0, align 8, !tbaa !649
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %3 = alloca %"struct.std::pair.32", align 8
  %4 = alloca %"struct.std::_Identity", align 1
  %5 = alloca %"struct.std::_Rb_tree<cGate::Name, cGate::Name, std::_Identity<cGate::Name>, std::less<cGate::Name>>::_Alloc_node", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca i8, align 1
  %8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #31
  %10 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNKSt9_IdentityIN5cGate4NameEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(28) %1) #30
  %11 = call { ptr, ptr } @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %10) #30
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #31
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !889

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeC2ERS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(48) %0) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #31
  %16 = call ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #30
  store ptr %16, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #31
  store i8 1, ptr %7, align 1, !tbaa !936
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIN5cGate4NameEEbEC2IS3_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  br label %18

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #31
  call void @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %12) #32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #31
  store i8 0, ptr %9, align 1, !tbaa !936
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIN5cGate4NameEEbEC2IS3_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) #30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #31
  br label %18

18:                                               ; preds = %17, %15
  %19 = load ptr, ptr %3, align 8
  %20 = insertvalue { ptr, i8 } poison, ptr %19, 0
  %21 = getelementptr inbounds { ptr, i8 }, ptr %3, i64 0, i32 1
  %22 = load i8, ptr %21, align 8
  %23 = insertvalue { ptr, i8 } %20, i8 %22, 1
  ret { ptr, i8 } %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt23_Rb_tree_const_iteratorIN5cGate4NameEEbEC2IRSt17_Rb_tree_iteratorIS2_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 !prof !651 {
  tail call void @_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2ERKSt17_Rb_tree_iteratorIS1_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load i8, ptr %2, align 1, !tbaa !936, !range !534, !noundef !535
  store i8 %5, ptr %4, align 8, !tbaa !937
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %3 = alloca %"struct.std::pair.35", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  store ptr %10, ptr %5, align 8, !tbaa !548
  %11 = icmp eq ptr %9, null
  br i1 %11, label %24, label %12, !prof !939

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %21, %20 ], [ %9, %2 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull %13) #30
  %15 = tail call noundef zeroext i1 @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %14) #30
  br i1 %15, label %16, label %18, !prof !940

16:                                               ; preds = %12
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #32
  br label %20

18:                                               ; preds = %12
  %19 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #32
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !prof !941, !llvm.loop !942

23:                                               ; preds = %20
  store ptr %13, ptr %5, align 8, !tbaa !548
  store ptr null, ptr %4, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #31
  call void @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %13) #32
  br i1 %15, label %25, label %31, !prof !943

24:                                               ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !548
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #31
  call void @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %10) #32
  br label %25

25:                                               ; preds = %24, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #31
  %26 = call ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  store ptr %26, ptr %7, align 8
  %27 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorIN5cGate4NameEES4_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #31
  br i1 %27, label %28, label %29, !prof !782

28:                                               ; preds = %25
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN5cGate4NameEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #30
  br label %37

29:                                               ; preds = %25
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #32
  br label %31

31:                                               ; preds = %29, %23
  %32 = load ptr, ptr %6, align 8, !tbaa !922
  %33 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %32) #30
  %34 = call noundef zeroext i1 @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %33, ptr noundef nonnull align 8 dereferenceable(28) %1) #30
  br i1 %34, label %35, label %36, !prof !944

35:                                               ; preds = %31
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN5cGate4NameEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #30
  br label %37

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #31
  store ptr null, ptr %8, align 8, !tbaa !548
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #31
  br label %37

37:                                               ; preds = %36, %35, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  %38 = load ptr, ptr %3, align 8
  %39 = insertvalue { ptr, ptr } poison, ptr %38, 0
  %40 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = insertvalue { ptr, ptr } %39, ptr %41, 1
  ret { ptr, ptr } %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeC2ERS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !651 {
  store ptr %1, ptr %0, align 8, !tbaa !548
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Identity", align 1
  %8 = icmp eq ptr %1, null
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #31
  br i1 %8, label %9, label %16, !prof !945

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %16, label %12, !prof !946

12:                                               ; preds = %9
  %13 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNKSt9_IdentityIN5cGate4NameEEclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(28) %3) #30
  %14 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #30
  %15 = call noundef zeroext i1 @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %13, ptr noundef nonnull align 8 dereferenceable(28) %14) #30
  br label %16

16:                                               ; preds = %12, %9, %5
  %17 = phi i1 [ true, %9 ], [ true, %5 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #31
  %18 = call noundef ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeclIRKS1_EEPSt13_Rb_tree_nodeIS1_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(28) %3) #30
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %17, ptr noundef %18, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %19) #32
  %20 = getelementptr inbounds i8, ptr %0, i64 40
  %21 = load i64, ptr %20, align 8, !tbaa !887
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !887
  call void @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %18) #32
  %23 = load ptr, ptr %6, align 8
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt17_Rb_tree_iteratorIN5cGate4NameEEbEC2IS3_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 !prof !651 {
  %4 = load i64, ptr %1, align 8, !tbaa !548
  store i64 %4, ptr %0, align 8, !tbaa !548
  %5 = getelementptr inbounds %"struct.std::pair.32", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %2, align 1, !tbaa !936, !range !534, !noundef !535
  store i8 %6, ptr %5, align 8, !tbaa !947
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !870 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !885
  call void @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #32
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN5cGate4NameEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !651 {
  %4 = load ptr, ptr %1, align 8, !tbaa !548
  store ptr %4, ptr %0, align 8, !tbaa !949
  %5 = getelementptr inbounds %"struct.std::pair.35", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !548
  store ptr %6, ptr %5, align 8, !tbaa !951
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !614 {
  %2 = load ptr, ptr %0, align 8, !tbaa !922
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %2) #37
  store ptr %3, ptr %0, align 8, !tbaa !922
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !952 {
  %4 = load ptr, ptr %1, align 8, !tbaa !548
  store ptr %4, ptr %0, align 8, !tbaa !949
  %5 = getelementptr inbounds %"struct.std::pair.35", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !548
  store ptr %6, ptr %5, align 8, !tbaa !951
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #24

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeclIRKS1_EEPSt13_Rb_tree_nodeIS1_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %3 = load ptr, ptr %0, align 8, !tbaa !953
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_create_nodeIJRKS1_EEEPSt13_Rb_tree_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(28) %1) #30
  ret ptr %4
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_create_nodeIJRKS1_EEEPSt13_Rb_tree_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #30
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(28) %1) #30
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1) #30
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !651 {
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #32
  %5 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #30
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(28) %2) #30
          to label %12 unwind label %6

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = tail call ptr @__cxa_begin_catch(ptr %8) #31
  tail call void @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) #32
  invoke void @__cxa_rethrow() #33
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
  tail call void @__clang_call_terminate(ptr %16) #35
  unreachable

17:                                               ; preds = %6
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #30
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !955

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 288230376151711743
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 6
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #36
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !651 {
  ret i64 144115188075855871
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #26

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #26

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #6 comdat align 2 !prof !651 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) #30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #6 comdat align 2 !prof !651 {
  tail call void @_ZN5cGate4NameC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) #30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN5cGate4NameC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  %3 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 1
  invoke void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #30
          to label %5 unwind label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 2
  invoke void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #30
          to label %8 unwind label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"struct.cGate::Name", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.cGate::Name", ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !685
  store i32 %11, ptr %9, align 8, !tbaa !685
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !956 {
  %3 = load ptr, ptr %1, align 8, !tbaa !672
  %4 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %3) #30
  store ptr %4, ptr %0, align 8, !tbaa !672
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !731
  %5 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !917
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIPKcEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %9 = load ptr, ptr %3, align 8, !tbaa !731
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !731
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIPKcSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  tail call void @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPKcEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 !prof !727 {
  tail call void @_ZNSt15__new_allocatorIPKcE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !727 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.55) #30
  %7 = load ptr, ptr %0, align 8, !tbaa !729
  %8 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !731
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %10 = tail call ptr @_ZNSt6vectorIPKcSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPPKcSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  %12 = call noundef ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #30
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIPKcEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  %15 = load ptr, ptr %14, align 8, !tbaa !548
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %17 = call noundef ptr @_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #32
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  %20 = load ptr, ptr %19, align 8, !tbaa !548
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %22 = call noundef ptr @_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #32
  %23 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !917
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  call void @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #30
  store ptr %12, ptr %0, align 8, !tbaa !729
  store ptr %22, ptr %8, align 8, !tbaa !731
  %29 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !917
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPKcSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !898 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIPKcSaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %4 = tail call ptr @_ZNSt6vectorIPKcSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #32
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKcE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 !prof !727 {
  %4 = load ptr, ptr %2, align 8, !tbaa !548
  store ptr %4, ptr %1, align 8, !tbaa !548
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !920 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !873
  %6 = tail call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %7 = tail call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !957

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #38
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %13 = tail call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  store i64 %13, ptr %5, align 8, !tbaa !873
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %15 = load i64, ptr %14, align 8, !tbaa !873
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  %17 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !957

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !957

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPPKcSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !898 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  %4 = load ptr, ptr %3, align 8, !tbaa !548
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %6 = load ptr, ptr %5, align 8, !tbaa !548
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIPKcSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !898 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !920 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !957

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIPKcEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #30
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 !prof !958 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPPKcS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #32
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !959 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !960 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %3 = tail call noundef i64 @_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #32
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !961 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<const char *, std::allocator<const char *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !731
  %4 = load ptr, ptr %0, align 8, !tbaa !729
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !962 {
  %3 = load i64, ptr %0, align 8, !tbaa !873
  %4 = load i64, ptr %1, align 8, !tbaa !873
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !963
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !960 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !873
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIPKcEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  store i64 %4, ptr %3, align 8, !tbaa !873
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  %6 = load i64, ptr %5, align 8, !tbaa !873
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !960 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIPKcEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !960 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIPKcE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !964 {
  %3 = load i64, ptr %1, align 8, !tbaa !873
  %4 = load i64, ptr %0, align 8, !tbaa !873
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !965
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIPKcE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !960 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIPKcE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIPKcE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !966 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !897 {
  %3 = load ptr, ptr %1, align 8, !tbaa !548
  store ptr %3, ptr %0, align 8, !tbaa !967
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIPKcEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !920 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #30
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIPKcE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !955

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #36
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPPKcS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !958 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPKcET_S3_(ptr noundef %0) #32
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPKcET_S3_(ptr noundef %1) #32
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKcET_S3_(ptr noundef %2) #32
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IPKcS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #32
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPKcS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !958 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !969

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPKcET_S3_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !970 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #21

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %5 = load ptr, ptr %0, align 8, !tbaa !967
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !548
  call void @_ZN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !587 {
  %2 = load ptr, ptr %0, align 8, !tbaa !967
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !587 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 1
  %5 = alloca ptr, align 8
  %6 = tail call noundef i64 @_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_(ptr noundef %0, ptr noundef %1) #30
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %19, %8 ], [ %0, %3 ]
  %10 = phi i64 [ %18, %8 ], [ %6, %3 ]
  %11 = lshr i64 %10, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  store ptr %9, ptr %5, align 8, !tbaa !548
  call void @_ZSt7advanceIPP5cGatelEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %11) #30
  %12 = load ptr, ptr %5, align 8, !tbaa !548
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEclIPP5cGateKS6_EEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = xor i64 %11, -1
  %17 = add nsw i64 %10, %16
  %18 = select i1 %13, i64 %17, i64 %11
  %19 = select i1 %13, ptr %15, ptr %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %8, label %21, !llvm.loop !971

21:                                               ; preds = %8, %3
  %22 = phi ptr [ %0, %3 ], [ %19, %8 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15__iter_comp_valI24less_gateConnectedInsideEENS0_14_Iter_comp_valIT_EES4_() local_unnamed_addr #6 comdat !prof !587 {
  %1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !733 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !548
  call void @_ZSt19__iterator_categoryIPP5cGateENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  %4 = call noundef i64 @_ZSt10__distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #30
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt7advanceIPP5cGatelEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 comdat !prof !972 {
  tail call void @_ZSt19__iterator_categoryIPP5cGateENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0) #30
  tail call void @_ZSt9__advanceIPP5cGatelEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) #30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEclIPP5cGateKS6_EEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !587 {
  %4 = load ptr, ptr %1, align 8, !tbaa !548
  %5 = load ptr, ptr %2, align 8, !tbaa !548
  %6 = tail call noundef zeroext i1 @_ZN24less_gateConnectedInsideclEP5cGateS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef %5) #30
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !733 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPP5cGateENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !973 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIPP5cGatelEvRT_T0_St26random_access_iterator_tag(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat !prof !972 {
  %3 = load ptr, ptr %0, align 8, !tbaa !548
  %4 = getelementptr inbounds ptr, ptr %3, i64 %1
  store ptr %4, ptr %0, align 8, !tbaa !548
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN24less_gateConnectedInsideclEP5cGateS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !587 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ %13, %11 ]
  %16 = icmp ugt i32 %9, %15
  ret i1 %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI24less_gateConnectedInsideEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !587 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.37", align 1
  %5 = alloca ptr, align 8
  %6 = tail call noundef i64 @_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_(ptr noundef %0, ptr noundef %1) #30
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %19, %8 ], [ %0, %3 ]
  %10 = phi i64 [ %18, %8 ], [ %6, %3 ]
  %11 = lshr i64 %10, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  store ptr %9, ptr %5, align 8, !tbaa !548
  call void @_ZSt7advanceIPP5cGatelEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %11) #30
  %12 = load ptr, ptr %5, align 8, !tbaa !548
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEclIPP5cGateKS6_EEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = xor i64 %11, -1
  %17 = add nsw i64 %10, %16
  %18 = select i1 %13, i64 %17, i64 %11
  %19 = select i1 %13, ptr %15, ptr %9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  %20 = icmp sgt i64 %18, 0
  br i1 %20, label %8, label %21, !llvm.loop !974

21:                                               ; preds = %8, %3
  %22 = phi ptr [ %0, %3 ], [ %19, %8 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15__iter_comp_valI25less_gateConnectedOutsideEENS0_14_Iter_comp_valIT_EES4_() local_unnamed_addr #6 comdat !prof !587 {
  %1 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.37", align 1
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEclIPP5cGateKS6_EEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !587 {
  %4 = load ptr, ptr %1, align 8, !tbaa !548
  %5 = load ptr, ptr %2, align 8, !tbaa !548
  %6 = tail call noundef zeroext i1 @_ZN25less_gateConnectedOutsideclEP5cGateS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef %5) #30
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN25less_gateConnectedOutsideclEP5cGateS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !587 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ %13, %11 ]
  %16 = icmp ugt i32 %9, %15
  ret i1 %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI25less_gateConnectedOutsideEC2ES2_(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !587 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %3) local_unnamed_addr #6 comdat !prof !587 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.38", align 8
  %6 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  %7 = tail call noundef i64 @_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_(ptr noundef %0, ptr noundef %1) #30
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %20, %9 ], [ %0, %4 ]
  %11 = phi i64 [ %19, %9 ], [ %7, %4 ]
  %12 = lshr i64 %11, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #31
  store ptr %10, ptr %6, align 8, !tbaa !548
  call void @_ZSt7advanceIPP5cGatelEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %12) #30
  %13 = load ptr, ptr %6, align 8, !tbaa !548
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEclIPP5cGateKS6_EEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = xor i64 %12, -1
  %18 = add nsw i64 %11, %17
  %19 = select i1 %14, i64 %18, i64 %12
  %20 = select i1 %14, ptr %16, ptr %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #31
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %9, label %22, !llvm.loop !975

22:                                               ; preds = %9, %4
  %23 = phi ptr [ %0, %4 ], [ %20, %9 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops15__iter_comp_valI28less_gatePairConnectedInsideEENS0_14_Iter_comp_valIT_EES4_(ptr %0) local_unnamed_addr #6 comdat !prof !587 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.38", align 8
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEC2ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %0) #30
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEclIPP5cGateKS6_EEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !587 {
  %4 = load ptr, ptr %1, align 8, !tbaa !548
  %5 = load ptr, ptr %2, align 8, !tbaa !548
  %6 = tail call noundef zeroext i1 @_ZN28less_gatePairConnectedInsideclEP5cGateS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef %5) #30
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN28less_gatePairConnectedInsideclEP5cGateS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !587 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ %13, %11 ]
  %16 = icmp ugt i32 %9, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  br i1 %4, label %26, label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr %0, align 8, !tbaa !737
  %20 = tail call noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !548
  %24 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %23) #30
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %18, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %18 ]
  br i1 %10, label %36, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %0, align 8, !tbaa !737
  %30 = tail call noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !548
  %34 = tail call noundef zeroext i1 @_ZNK5cGate17isConnectedInsideEv(ptr noundef nonnull align 8 dereferenceable(48) %33) #30
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %28, %26
  %37 = phi i32 [ 0, %26 ], [ %35, %28 ]
  %38 = icmp ugt i32 %27, %37
  br label %39

39:                                               ; preds = %36, %14
  %40 = phi i1 [ false, %14 ], [ %38, %36 ]
  ret i1 %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI28less_gatePairConnectedInsideEC2ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #5 comdat align 2 !prof !587 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !646
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEEET_S8_S8_RKT0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %3) local_unnamed_addr #6 comdat !prof !733 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.39", align 8
  %6 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  %7 = tail call noundef i64 @_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_(ptr noundef %0, ptr noundef %1) #30
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %22, !prof !976

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %20, %9 ], [ %0, %4 ]
  %11 = phi i64 [ %19, %9 ], [ %7, %4 ]
  %12 = lshr i64 %11, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #31
  store ptr %10, ptr %6, align 8, !tbaa !548
  call void @_ZSt7advanceIPP5cGatelEvRT_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %12) #30
  %13 = load ptr, ptr %6, align 8, !tbaa !548
  %14 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEclIPP5cGateKS6_EEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = xor i64 %12, -1
  %18 = add nsw i64 %11, %17
  %19 = select i1 %14, i64 %18, i64 %12, !prof !977
  %20 = select i1 %14, ptr %16, ptr %10, !prof !977
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #31
  %21 = icmp sgt i64 %19, 0
  br i1 %21, label %9, label %22, !prof !978, !llvm.loop !979

22:                                               ; preds = %9, %4
  %23 = phi ptr [ %0, %4 ], [ %20, %9 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops15__iter_comp_valI29less_gatePairConnectedOutsideEENS0_14_Iter_comp_valIT_EES4_(ptr %0) local_unnamed_addr #6 comdat !prof !733 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.39", align 8
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEC2ES2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %0) #30
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEclIPP5cGateKS6_EEbT_RT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !972 {
  %4 = load ptr, ptr %1, align 8, !tbaa !548
  %5 = load ptr, ptr %2, align 8, !tbaa !548
  %6 = tail call noundef zeroext i1 @_ZN29less_gatePairConnectedOutsideclEP5cGateS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef %5) #30
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN29less_gatePairConnectedOutsideclEP5cGateS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !972 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5, !prof !980

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
  %7 = zext i1 %6 to i32
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %3 ], [ %7, %5 ]
  %10 = icmp eq ptr %2, null
  br i1 %10, label %14, label %11, !prof !977

11:                                               ; preds = %8
  %12 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 0, %8 ], [ %13, %11 ]
  %16 = icmp ugt i32 %9, %15
  br i1 %16, label %17, label %39, !prof !977

17:                                               ; preds = %14
  br i1 %4, label %26, label %18, !prof !980

18:                                               ; preds = %17
  %19 = load ptr, ptr %0, align 8, !tbaa !739
  %20 = tail call noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #30
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !548
  %24 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %23) #30
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %18, %17
  %27 = phi i32 [ 0, %17 ], [ %25, %18 ]
  br i1 %10, label %36, label %28, !prof !977

28:                                               ; preds = %26
  %29 = load ptr, ptr %0, align 8, !tbaa !739
  %30 = tail call noundef i32 @_ZNK5cGate8getIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !548
  %34 = tail call noundef zeroext i1 @_ZNK5cGate18isConnectedOutsideEv(ptr noundef nonnull align 8 dereferenceable(48) %33) #30
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %28, %26
  %37 = phi i32 [ 0, %26 ], [ %35, %28 ]
  %38 = icmp ugt i32 %27, %37
  br label %39

39:                                               ; preds = %36, %14
  %40 = phi i1 [ false, %14 ], [ %38, %36 ]
  ret i1 %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEC2ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #5 comdat align 2 !prof !733 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !646
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8cChannelSaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !772 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !907
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !804

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  invoke void @_ZSt8_DestroyIPP8cChannelS1_EvT_S3_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #30
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !907
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #35
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP8cChannelSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !907
  %5 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !909
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIP8cChannelEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %9 = load ptr, ptr %3, align 8, !tbaa !907
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !907
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIP8cChannelSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  tail call void @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP8cChannelSaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP8cChannelEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 !prof !801 {
  tail call void @_ZNSt15__new_allocatorIP8cChannelE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !912 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.40", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.40", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.55) #30
  %7 = load ptr, ptr %0, align 8, !tbaa !846
  %8 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !907
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %10 = tail call ptr @_ZNSt6vectorIP8cChannelSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPP8cChannelSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  %12 = call noundef ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #30
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIP8cChannelEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  %15 = load ptr, ptr %14, align 8, !tbaa !548
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %17 = call noundef ptr @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #32
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  %20 = load ptr, ptr %19, align 8, !tbaa !548
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %22 = call noundef ptr @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #32
  %23 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !909
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  call void @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #30
  store ptr %12, ptr %0, align 8, !tbaa !846
  store ptr %22, ptr %8, align 8, !tbaa !907
  %29 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !909
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP8cChannelSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !912 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.40", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<cChannel *, std::allocator<cChannel *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #32
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIP8cChannelSaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.40", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.40", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %4 = tail call ptr @_ZNSt6vectorIP8cChannelSaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #32
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8cChannelE9constructIS1_JS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #5 comdat align 2 !prof !801 {
  %4 = load ptr, ptr %2, align 8, !tbaa !548
  store ptr %4, ptr %1, align 8, !tbaa !548
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !912 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !873
  %6 = tail call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %7 = tail call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !981

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #38
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  %13 = tail call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  store i64 %13, ptr %5, align 8, !tbaa !873
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  %15 = load i64, ptr %14, align 8, !tbaa !873
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  %17 = call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !981

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !981

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPP8cChannelSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !912 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  %4 = load ptr, ptr %3, align 8, !tbaa !548
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #32
  %6 = load ptr, ptr %5, align 8, !tbaa !548
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIP8cChannelSaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !912 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.40", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !912 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !981

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIP8cChannelEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #30
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 !prof !982 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPP8cChannelS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #32
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !983 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIP8cChannelSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !982 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #32
  %3 = tail call noundef i64 @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #32
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !982 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !873
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIP8cChannelEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  store i64 %4, ptr %3, align 8, !tbaa !873
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #30
  %6 = load i64, ptr %5, align 8, !tbaa !873
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !982 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIP8cChannelEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !982 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP8cChannelE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP8cChannelE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !982 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP8cChannelE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP8cChannelE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !984 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !982 {
  %3 = load ptr, ptr %1, align 8, !tbaa !548
  store ptr %3, ptr %0, align 8, !tbaa !985
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIP8cChannelEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !912 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIP8cChannelE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #30
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIP8cChannelE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIP8cChannelE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #32
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !955

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #36
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPP8cChannelS2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !982 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPP8cChannelET_S3_(ptr noundef %0) #32
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPP8cChannelET_S3_(ptr noundef %1) #32
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPP8cChannelET_S3_(ptr noundef %2) #32
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IP8cChannelS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #32
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP8cChannelS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat !prof !982 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !987

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPP8cChannelET_S3_(ptr noundef %0) local_unnamed_addr #5 comdat !prof !988 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.40", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %5 = load ptr, ptr %0, align 8, !tbaa !985
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !548
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !985
  ret ptr %2
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cmodule.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.3()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read) }
attributes #16 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline nounwind optsize willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nosync nounwind memory(none) }
attributes #26 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { optsize }
attributes #31 = { nounwind }
attributes #32 = { nounwind optsize }
attributes #33 = { noreturn }
attributes #34 = { builtin nounwind optsize }
attributes #35 = { noreturn nounwind }
attributes #36 = { builtin optsize allocsize(0) }
attributes #37 = { nounwind optsize willreturn memory(read) }
attributes #38 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!509}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!35 = !{ptr @_ZN7cModuleC2Ev, ptr @_ZN10cComponentC2EPKc, i64 29423}
!36 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 58845}
!37 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModule17SubmoduleIteratorC2EPKS_, i64 29423}
!38 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZNK7cModule17SubmoduleIterator3endEv, i64 58844}
!39 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModule12GateIteratorC2EPKS_, i64 29422}
!40 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZNK7cModule12GateIterator3endEv, i64 142918}
!41 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZNK7cModule17SubmoduleIteratorclEv, i64 29422}
!42 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 58843}
!43 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZNK11cSimulation17getActivityModuleEv, i64 29422}
!44 = !{ptr @_ZN7cModuleD2Ev, ptr @__cxa_allocate_exception, i64 1}
!45 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!46 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModule17SubmoduleIteratorppEi, i64 29421}
!47 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModule10clearGatesEv, i64 29422}
!48 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZNK7cModule12GateIteratorclEv, i64 113496}
!49 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZNK5cGate11getNextGateEv, i64 179094}
!50 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZNK5cGate15getPreviousGateEv, i64 211892}
!51 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN5cGate10disconnectEv, i64 65596}
!52 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModule12GateIteratorppEi, i64 113496}
!53 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN11cSimulation16deregisterModuleEP7cModule, i64 29421}
!54 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN7cModule15removeSubmoduleEPS_, i64 29420}
!55 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZdaPv, i64 18389}
!56 = !{ptr @_ZN7cModuleD2Ev, ptr @_ZN10cComponentD2Ev, i64 29422}
!57 = !{ptr @_ZN7cModuleD2Ev, ptr @__clang_call_terminate, i64 1}
!58 = !{ptr @_ZN7cModule17SubmoduleIteratorC2EPKS_, ptr @_ZN7cModule17SubmoduleIterator4initEPKS_, i64 256166}
!59 = !{ptr @_ZN7cModule12GateIteratorC2EPKS_, ptr @_ZN7cModule12GateIterator4initEPKS_, i64 182006}
!60 = !{ptr @_ZNK7cModule12GateIteratorclEv, ptr @_ZNK7cModule12GateIterator7currentEv, i64 698724}
!61 = !{ptr @_ZN7cModule12GateIteratorppEi, ptr @_ZNK7cModule12GateIterator3endEv, i64 1526039}
!62 = !{ptr @_ZN7cModule12GateIteratorppEi, ptr @_ZN7cModule12GateIterator7advanceEv, i64 827315}
!63 = !{ptr @_ZN7cModule12GateIteratorppEi, ptr @_ZNK7cModule12GateIterator7currentEv, i64 654178}
!64 = !{ptr @_ZN7cModule10clearGatesEv, ptr @_ZN7cModule15disposeGateDescEPN5cGate4DescEb, i64 71387}
!65 = !{ptr @_ZN7cModule10clearGatesEv, ptr @_ZdaPv, i64 18389}
!66 = !{ptr @_ZN7cModule8setIndexEii, ptr @_ZN7cModule14updateFullNameEv, i64 8852}
!67 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @_ZdaPv, i64 1}
!68 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @_ZNK7cModule8isVectorEv, i64 38275}
!69 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @_Z10opp_strlenPKc, i64 8853}
!70 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @_Znam, i64 8853}
!71 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @strcpy, i64 8853}
!72 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @_ZNK7cModule8getIndexEv, i64 8853}
!73 = !{ptr @_ZN7cModule14updateFullNameEv, ptr @_Z15opp_appendindexPcj, i64 8853}
!74 = !{ptr @_ZNK7cModule15getParentModuleEv, ptr @__dynamic_cast, i64 401926}
!75 = !{ptr @_ZN7cModule7setNameEPKc, ptr @_ZN12cNamedObject7setNameEPKc, i64 29423}
!76 = !{ptr @_ZN7cModule7setNameEPKc, ptr @_ZN7cModule14updateFullNameEv, i64 29423}
!77 = !{ptr @_Z10opp_strlenPKc, ptr @strlen, i64 54985}
!78 = !{ptr @_Z15opp_appendindexPcj, ptr @sprintf, i64 21}
!79 = !{ptr @_ZNK7cModule11getFullNameEv, ptr @_ZNK7cModule8isVectorEv, i64 325702}
!80 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 87511}
!81 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, i64 476383}
!82 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_, i64 238191}
!83 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 714574}
!84 = !{ptr @_ZNK7cModule11getFullPathB5cxx11Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_, i64 1487575}
!85 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!86 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!87 = !{ptr @_ZNK7cModule8isSimpleEv, ptr @__dynamic_cast, i64 109137}
!88 = !{ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE, ptr @_Znwm, i64 113504}
!89 = !{ptr @_ZN7cModule16createGateObjectEN5cGate4TypeE, ptr @_ZN5cGateC1Ev, i64 113504}
!90 = !{ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EEC2Ev, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EEC2Ev, i64 1}
!91 = !{ptr @_ZN7cModule17disposeGateObjectEP5cGateb, ptr @_ZNK5cGate15getPreviousGateEv, i64 1}
!92 = !{ptr @_ZN7cModule17disposeGateObjectEP5cGateb, ptr @_ZNK5cGate11getNextGateEv, i64 1}
!93 = !{ptr @_ZN7cModule17disposeGateObjectEP5cGateb, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 227007}
!94 = !{ptr @_ZN7cModule15disposeGateDescEPN5cGate4DescEb, ptr @_ZNK5cGate4Desc8isVectorEv, i64 71387}
!95 = !{ptr @_ZN7cModule15disposeGateDescEPN5cGate4DescEb, ptr @_ZNK5cGate4Desc8gateSizeEv, i64 44101}
!96 = !{ptr @_ZN7cModule15disposeGateDescEPN5cGate4DescEb, ptr @_ZN7cModule17disposeGateObjectEP5cGateb, i64 160144}
!97 = !{ptr @_ZN7cModule15disposeGateDescEPN5cGate4DescEb, ptr @_ZdaPv, i64 13714}
!98 = !{ptr @_ZN7cModule14clearNamePoolsEv, ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE5clearEv, i64 1}
!99 = !{ptr @_ZN7cModule14clearNamePoolsEv, ptr @_ZN5cGate17clearFullnamePoolEv, i64 1}
!100 = !{ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE5clearEv, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv, i64 1}
!101 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @__cxa_allocate_exception, i64 2}
!102 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 2}
!103 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_Znam, i64 71386}
!104 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZN5cGate4DescC2Ev, i64 1427720}
!105 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZNK5cGate4Desc8isVectorEv, i64 44616}
!106 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZNK5cGate4Desc8gateSizeEv, i64 16994}
!107 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZN7cModule14adjustGateDescEP5cGatePNS0_4DescE, i64 55246}
!108 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZdaPv, i64 44616}
!109 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZN5cGate4NameC1EPKcNS_4TypeE, i64 71386}
!110 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE4findERKS1_, i64 71386}
!111 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZNKSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE3endEv, i64 71386}
!112 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZSteqRKSt23_Rb_tree_const_iteratorIN5cGate4NameEES4_, i64 71386}
!113 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE6insertERKS1_, i64 9}
!114 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZNKSt23_Rb_tree_const_iteratorIN5cGate4NameEEdeEv, i64 71386}
!115 = !{ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, ptr @_ZN5cGate4NameD2Ev, i64 71386}
!116 = !{ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_, i64 71388}
!117 = !{ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2ERKSt17_Rb_tree_iteratorIS1_E, i64 71388}
!118 = !{ptr @_ZNKSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE3endEv, ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv, i64 71388}
!119 = !{ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE6insertERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, i64 8}
!120 = !{ptr @_ZNSt3setIN5cGate4NameESt4lessIS1_ESaIS1_EE6insertERKS1_, ptr @_ZNSt4pairISt23_Rb_tree_const_iteratorIN5cGate4NameEEbEC2IRSt17_Rb_tree_iteratorIS2_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 8}
!121 = !{ptr @_ZNKSt23_Rb_tree_const_iteratorIN5cGate4NameEEdeEv, ptr @_ZNKSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv, i64 71388}
!122 = !{ptr @_ZNK7cModule12findGateDescEPKcRc, ptr @strlen, i64 317061729}
!123 = !{ptr @_ZNK7cModule12findGateDescEPKcRc, ptr @_ZNK10opp_string5c_strEv, i64 413746471}
!124 = !{ptr @_ZNK7cModule12findGateDescEPKcRc, ptr @strcmp, i64 413746471}
!125 = !{ptr @_ZNK7cModule8gateDescEPKcRc, ptr @_ZNK7cModule12findGateDescEPKcRc, i64 316972835}
!126 = !{ptr @_ZNK7cModule8gateDescEPKcRc, ptr @__cxa_allocate_exception, i64 1}
!127 = !{ptr @_ZNK7cModule8gateDescEPKcRc, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!128 = !{ptr @_ZNK7cModule8gateDescEPKcRc, ptr @__cxa_throw, i64 1}
!129 = !{ptr @_ZNK7cModule8gateDescEPKcRc, ptr @__cxa_free_exception, i64 1}
!130 = !{ptr @_ZN7cModule4gateEi, ptr @__cxa_allocate_exception, i64 11}
!131 = !{ptr @_ZN7cModule4gateEi, ptr @_ZN13cRuntimeErrorC1EPK7cObject12OppErrorCodez, i64 11}
!132 = !{ptr @_ZN7cModule4gateEi, ptr @_ZNK5cGate4Desc8isVectorEv, i64 202351112}
!133 = !{ptr @_ZN7cModule4gateEi, ptr @_ZNK5cGate4Desc7getTypeEv, i64 202351110}
!134 = !{ptr @_ZN7cModule4gateEi, ptr @__cxa_throw, i64 5}
!135 = !{ptr @_ZN7cModule4gateEi, ptr @_ZNK5cGate4Desc8gateSizeEv, i64 14427895}
!136 = !{ptr @_ZN7cModule4gateEi, ptr @_ZNK5cGate4Desc7nameForENS_4TypeE, i64 1}
!137 = !{ptr @_ZN7cModule4gateEi, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!138 = !{ptr @_ZN7cModule4gateEi, ptr @__cxa_free_exception, i64 5}
!139 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZNK7cModule12findGateDescEPKcRc, i64 71388}
!140 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @__cxa_allocate_exception, i64 2}
!141 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 2}
!142 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN7cModule11addGateDescEPKcN5cGate4TypeEb, i64 71386}
!143 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN5cGate4Desc12setInputGateEPS_, i64 37094}
!144 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 166379}
!145 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @_ZN5cGate4Desc13setOutputGateEPS_, i64 46097}
!146 = !{ptr @_ZN7cModule7addGateEPKcN5cGate4TypeEb, ptr @__cxa_free_exception, i64 1}
!147 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZNK7cModule12findGateDescEPKcRc, i64 16522}
!148 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @__cxa_allocate_exception, i64 5}
!149 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 5}
!150 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZNK5cGate4Desc8isVectorEv, i64 16520}
!151 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZNK5cGate4Desc7getTypeEv, i64 16517}
!152 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZN5cGate4Desc11capacityForEi, i64 33034}
!153 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZNK5cGate15getPreviousGateEv, i64 40}
!154 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZNK5cGate11getNextGateEv, i64 40}
!155 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZN11cSimulation14getActiveEnvirEv, i64 78649}
!156 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZL12reallocGatevRPP5cGateii, i64 22698}
!157 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZN5cGate4Desc12setInputGateEPS_i, i64 19649}
!158 = !{ptr @_ZN7cModule11setGateSizeEPKci, ptr @_ZN5cGate4Desc13setOutputGateEPS_i, i64 19649}
!159 = !{ptr @_ZL12reallocGatevRPP5cGateii, ptr @_Znam, i64 16000}
!160 = !{ptr @_ZL12reallocGatevRPP5cGateii, ptr @_ZdaPv, i64 10000}
!161 = !{ptr @_ZNK7cModule8gateSizeEPKc, ptr @_ZNK7cModule8gateDescEPKcRc, i64 1368}
!162 = !{ptr @_ZNK7cModule8gateSizeEPKc, ptr @_ZNK5cGate4Desc8gateSizeEv, i64 1368}
!163 = !{ptr @_ZN7cModule4gateEPKci, ptr @_ZNK7cModule8gateDescEPKcRc, i64 316920037}
!164 = !{ptr @_ZN7cModule4gateEPKci, ptr @_ZNK5cGate4Desc7getTypeEv, i64 633817448}
!165 = !{ptr @_ZN7cModule4gateEPKci, ptr @__cxa_allocate_exception, i64 4}
!166 = !{ptr @_ZN7cModule4gateEPKci, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 4}
!167 = !{ptr @_ZN7cModule4gateEPKci, ptr @_ZNK5cGate4Desc8isVectorEv, i64 316920036}
!168 = !{ptr @_ZN7cModule4gateEPKci, ptr @__cxa_free_exception, i64 2}
!169 = !{ptr @_ZN7cModule8gateHalfEPKcN5cGate4TypeEi, ptr @_ZNK7cModule8gateDescEPKcRc, i64 45248}
!170 = !{ptr @_ZN7cModule8gateHalfEPKcN5cGate4TypeEi, ptr @_ZNK10opp_string5c_strEv, i64 45248}
!171 = !{ptr @_ZNK7cModule7hasGateEPKci, ptr @_ZNK7cModule12findGateDescEPKcRc, i64 984}
!172 = !{ptr @_ZNSt6vectorIPKcSaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EEC2Ev, i64 70429}
!173 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_, ptr @_ZNSt6vectorIPKcSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_, i64 11}
!174 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv, i64 70440}
!175 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E, i64 70440}
!176 = !{ptr @_ZNSt6vectorIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, i64 70440}
!177 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZNK7cModule8gateDescEPKcRc, i64 6182}
!178 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZNK5cGate4Desc8isVectorEv, i64 6182}
!179 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @__cxa_allocate_exception, i64 2}
!180 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 2}
!181 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZN28less_gatePairConnectedInsideC2EPP5cGate, i64 1}
!182 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZSt11lower_boundIPP5cGateS1_28less_gatePairConnectedInsideET_S4_S4_RKT0_T1_, i64 1}
!183 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZN29less_gatePairConnectedOutsideC2EPP5cGate, i64 6179}
!184 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZSt11lower_boundIPP5cGateS1_29less_gatePairConnectedOutsideET_S4_S4_RKT0_T1_, i64 6179}
!185 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZNK5cGate8getIndexEv, i64 1}
!186 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZNK10opp_string5c_strEv, i64 6178}
!187 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZNK5cGate17isConnectedInsideEv, i64 10}
!188 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @_ZNK5cGate18isConnectedOutsideEv, i64 10}
!189 = !{ptr @_ZN7cModule35getOrCreateFirstUnconnectedGatePairEPKcbbRP5cGateS4_, ptr @__cxa_free_exception, i64 1}
!190 = !{ptr @_ZSt11lower_boundIPP5cGateS1_29less_gatePairConnectedOutsideET_S4_S4_RKT0_T1_, ptr @_ZN9__gnu_cxx5__ops15__iter_comp_valI29less_gatePairConnectedOutsideEENS0_14_Iter_comp_valIT_EES4_, i64 6182}
!191 = !{ptr @_ZSt11lower_boundIPP5cGateS1_29less_gatePairConnectedOutsideET_S4_S4_RKT0_T1_, ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEEET_S8_S8_RKT0_T1_, i64 6182}
!192 = !{ptr @_ZNK5cGate8getIndexEv, ptr @_ZNK5cGate4Desc7indexOfEPKS_, i64 14375669}
!193 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZN7cModule12GateIteratorC2EPKS_, i64 34883}
!194 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK7cModule12GateIterator3endEv, i64 166042}
!195 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZN7cModule17SubmoduleIteratorC2EPKS_, i64 5470}
!196 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK7cModule17SubmoduleIterator3endEv, i64 34882}
!197 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK7cModule12GateIteratorclEv, i64 131160}
!198 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK5cGate4sizeEv, i64 131160}
!199 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK5cGate17isConnectedInsideEv, i64 17695}
!200 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @__cxa_allocate_exception, i64 1}
!201 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @__cxa_free_exception, i64 1}
!202 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZN7cModule12GateIteratorppEi, i64 131159}
!203 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK7cModule17SubmoduleIteratorclEv, i64 29412}
!204 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZN7cModule17SubmoduleIteratorppEi, i64 29412}
!205 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK5cGate18isConnectedOutsideEv, i64 113463}
!206 = !{ptr @_ZNK7cModule24checkInternalConnectionsEv, ptr @_ZNK5cGate13getPropertiesEv, i64 1}
!207 = !{ptr @_ZNK5cGate4sizeEv, ptr @_ZNK5cGate13getVectorSizeEv, i64 131696}
!208 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @_Z10opp_strcmpPKcS0_, i64 2470429}
!209 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @_ZN7cModule17SubmoduleIteratorC2EPKS_, i64 9840}
!210 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @_ZNK7cModule17SubmoduleIterator3endEv, i64 1385068}
!211 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @_ZNK7cModule17SubmoduleIteratorclEv, i64 1404517}
!212 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @_ZNK7cObject6isNameEPKc, i64 1384990}
!213 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @_ZNK7cModule8isVectorEv, i64 9763}
!214 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @_ZNK7cModule8getIndexEv, i64 2}
!215 = !{ptr @_ZN7cModule12getSubmoduleEPKci, ptr @_ZN7cModule17SubmoduleIteratorppEi, i64 1375228}
!216 = !{ptr @_ZN10opp_stringC2EPKc, ptr @_Z10opp_strdupPKc, i64 4934}
!217 = !{ptr @_ZN10opp_stringD2Ev, ptr @_ZdaPv, i64 277850}
!218 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN16cContextSwitcherC1EPK10cComponent, i64 29423}
!219 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 29423}
!220 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN10cComponent18finalizeParametersEv, i64 29423}
!221 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZNK7cModule13getModuleTypeEv, i64 29423}
!222 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 29423}
!223 = !{ptr @_ZN7cModule18finalizeParametersEv, ptr @_ZN16cContextSwitcherD1Ev, i64 29423}
!224 = !{ptr @_ZNK7cModule13getModuleTypeEv, ptr @_ZNK10cComponent16getComponentTypeEv, i64 34894}
!225 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZNK7cModule17buildInsideCalledEv, i64 29423}
!226 = !{ptr @_ZN7cModule11buildInsideEv, ptr @__cxa_allocate_exception, i64 1}
!227 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!228 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZNK10cComponent19parametersFinalizedEv, i64 29422}
!229 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN16cContextSwitcherC1EPK10cComponent, i64 29422}
!230 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 29422}
!231 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN12cNamedObject7setFlagEib, i64 29422}
!232 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 29422}
!233 = !{ptr @_ZN7cModule11buildInsideEv, ptr @_ZN16cContextSwitcherD1Ev, i64 29422}
!234 = !{ptr @_ZN7cModule12deleteModuleEv, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 1}
!235 = !{ptr @_ZN7cModule12deleteModuleEv, ptr @_ZNK11cSimulation16getContextModuleEv, i64 1}
!236 = !{ptr @_ZN7cModule14callInitializeEv, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 1}
!237 = !{ptr @_ZN7cModule14callInitializeEv, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 1}
!238 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 29423}
!239 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZNK11cSimulation14getContextTypeEv, i64 29423}
!240 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @__cxa_allocate_exception, i64 1}
!241 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!242 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN7cModule15ChannelIteratorC2EPKS_, i64 29422}
!243 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZNK7cModule15ChannelIterator3endEv, i64 39184}
!244 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN7cModule15ChannelIteratorD2Ev, i64 29422}
!245 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN7cModule17SubmoduleIteratorC2EPKS_, i64 29422}
!246 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZNK7cModule17SubmoduleIterator3endEv, i64 58843}
!247 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN7cModule15ChannelIteratorclEv, i64 9762}
!248 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN7cModule15ChannelIteratorppEi, i64 9762}
!249 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZNK7cModule17SubmoduleIteratorclEv, i64 29421}
!250 = !{ptr @_ZN7cModule18initializeChannelsEi, ptr @_ZN7cModule17SubmoduleIteratorppEi, i64 29421}
!251 = !{ptr @_ZN7cModule15ChannelIteratorC2EPKS_, ptr @_ZNSt6vectorIP8cChannelSaIS1_EEC2Ev, i64 58846}
!252 = !{ptr @_ZN7cModule15ChannelIteratorC2EPKS_, ptr @_ZN7cModule15ChannelIterator4initEPKS_, i64 58846}
!253 = !{ptr @_ZNK7cModule15ChannelIterator3endEv, ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv, i64 97894}
!254 = !{ptr @_ZN7cModule15ChannelIteratorclEv, ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv, i64 19524}
!255 = !{ptr @_ZN7cModule15ChannelIteratorclEv, ptr @_ZNSt6vectorIP8cChannelSaIS1_EEixEm, i64 19523}
!256 = !{ptr @_ZN7cModule15ChannelIteratorppEi, ptr @_ZNK7cModule15ChannelIterator3endEv, i64 19524}
!257 = !{ptr @_ZN7cModule15ChannelIteratorppEi, ptr @_ZNSt6vectorIP8cChannelSaIS1_EEixEm, i64 19523}
!258 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN11cSimulation19getActiveSimulationEv, i64 58846}
!259 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZNK11cSimulation14getContextTypeEv, i64 58846}
!260 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @__cxa_allocate_exception, i64 2}
!261 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN13cRuntimeErrorC1EPKcz, i64 1}
!262 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZNK10cComponent11initializedEv, i64 29423}
!263 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN13cRuntimeErrorC1EPK7cObjectPKcz, i64 1}
!264 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZNK7cModule17buildInsideCalledEv, i64 29422}
!265 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN26cMethodCallContextSwitcherC1EPK10cComponentb, i64 34346}
!266 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN26cMethodCallContextSwitcher10methodCallEPKcz, i64 34346}
!267 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN12cNamedObject7setFlagEib, i64 34346}
!268 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN26cMethodCallContextSwitcherD1Ev, i64 34346}
!269 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN7cModule17SubmoduleIteratorC2EPKS_, i64 58844}
!270 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZNK7cModule17SubmoduleIterator3endEv, i64 117686}
!271 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZNK7cModule17SubmoduleIteratorclEv, i64 58842}
!272 = !{ptr @_ZN7cModule17initializeModulesEi, ptr @_ZN7cModule17SubmoduleIteratorppEi, i64 58842}
!273 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN7cModule15ChannelIteratorC2EPKS_, i64 29423}
!274 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZNK7cModule15ChannelIterator3endEv, i64 39186}
!275 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN7cModule15ChannelIteratorD2Ev, i64 29423}
!276 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN7cModule17SubmoduleIteratorC2EPKS_, i64 29423}
!277 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZNK7cModule17SubmoduleIterator3endEv, i64 58845}
!278 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN7cModule15ChannelIteratorclEv, i64 9763}
!279 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN7cModule15ChannelIteratorppEi, i64 9763}
!280 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN16cContextSwitcherC1EPK10cComponent, i64 29423}
!281 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN20cContextTypeSwitcherC1Ei, i64 29423}
!282 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZNK7cModule17SubmoduleIteratorclEv, i64 29422}
!283 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN7cModule17SubmoduleIteratorppEi, i64 29422}
!284 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN20cContextTypeSwitcherD1Ev, i64 29423}
!285 = !{ptr @_ZN7cModule10callFinishEv, ptr @_ZN16cContextSwitcherD1Ev, i64 29423}
!286 = !{ptr @_ZN7cModule12GateIterator4initEPKS_, ptr @_ZNK7cModule12GateIterator3endEv, i64 182007}
!287 = !{ptr @_ZN7cModule12GateIterator4initEPKS_, ptr @_ZNK7cModule12GateIterator7currentEv, i64 180869}
!288 = !{ptr @_ZN7cModule12GateIterator4initEPKS_, ptr @_ZN7cModule12GateIterator7advanceEv, i64 1}
!289 = !{ptr @_ZNK7cModule12GateIterator7currentEv, ptr @_ZNK5cGate4Desc7getTypeEv, i64 869675}
!290 = !{ptr @_ZNK7cModule12GateIterator7currentEv, ptr @_ZNK5cGate4Desc8isVectorEv, i64 1397446}
!291 = !{ptr @_ZN7cModule12GateIterator7advanceEv, ptr @_ZNK5cGate4Desc7getTypeEv, i64 783159}
!292 = !{ptr @_ZN7cModule12GateIterator7advanceEv, ptr @_ZNK5cGate4Desc8isVectorEv, i64 698723}
!293 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZNSt6vectorIP8cChannelSaIS1_EE5clearEv, i64 58846}
!294 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZN7cModule17SubmoduleIteratorC2EPKS_, i64 58846}
!295 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZNK7cModule17SubmoduleIterator3endEv, i64 117689}
!296 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZNK7cModule17SubmoduleIteratorclEv, i64 58844}
!297 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZN7cModule12GateIteratorC2EPKS_, i64 117689}
!298 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZNK7cModule12GateIterator3endEv, i64 571698}
!299 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZN7cModule17SubmoduleIteratorppEi, i64 117689}
!300 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZNK7cModule12GateIteratorclEv, i64 454009}
!301 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZNK5cGate10getChannelEv, i64 473532}
!302 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZNK5cGate7getTypeEv, i64 39048}
!303 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZNSt6vectorIP8cChannelSaIS1_EE9push_backEOS1_, i64 19524}
!304 = !{ptr @_ZN7cModule15ChannelIterator4initEPKS_, ptr @_ZN7cModule12GateIteratorppEi, i64 454009}
!305 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE5clearEv, ptr @_ZNSt6vectorIP8cChannelSaIS1_EE15_M_erase_at_endEPS1_, i64 58846}
!306 = !{ptr @_ZNK5cGate7getTypeEv, ptr @_ZNK5cGate4Desc9getTypeOfEPKS_, i64 202685165}
!307 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE9push_backEOS1_, ptr @_ZNSt6vectorIP8cChannelSaIS1_EE12emplace_backIJS1_EEERS1_DpOT_, i64 19524}
!308 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!309 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!310 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!311 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!312 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!313 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!314 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!315 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!316 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!317 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!318 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!319 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!320 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!321 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!322 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!323 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!324 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!325 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!326 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EEC2Ev, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev, i64 1}
!327 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev, ptr @_ZNSaISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev, i64 1}
!328 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev, ptr @_ZNSt20_Rb_tree_key_compareISt4lessIN5cGate4NameEEEC2Ev, i64 1}
!329 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEC2Ev, ptr @_ZNSt15_Rb_tree_headerC2Ev, i64 1}
!330 = !{ptr @_ZNSaISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEEC2Ev, i64 1}
!331 = !{ptr @_ZNSt15_Rb_tree_headerC2Ev, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 192152}
!332 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base, i64 8}
!333 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, i64 8}
!334 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base, i64 8}
!335 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E, i64 8}
!336 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE9_M_mbeginEv, i64 71397}
!337 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E, i64 8}
!338 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E, i64 8}
!339 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv, i64 8}
!340 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv, i64 8}
!341 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE7destroyIS2_EEvRS4_PT_, i64 8}
!342 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv, i64 8}
!343 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS1_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE10deallocateERS4_PS3_m, i64 8}
!344 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE7destroyIS2_EEvRS4_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_, i64 8}
!345 = !{ptr @_ZNSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv, i64 16}
!346 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE7destroyIS2_EEvPT_, ptr @_ZN5cGate4NameD2Ev, i64 8}
!347 = !{ptr @_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufIN5cGate4NameEE7_M_addrEv, i64 16}
!348 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE10deallocateERS4_PS3_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE10deallocateEPS3_m, i64 8}
!349 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC2Ev, i64 70429}
!350 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC2Ev, ptr @_ZNSaIPKcEC2Ev, i64 70429}
!351 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataC2Ev, i64 70429}
!352 = !{ptr @_ZNSaIPKcEC2Ev, ptr @_ZNSt15__new_allocatorIPKcEC2Ev, i64 70429}
!353 = !{ptr @_ZNK5cGate13getVectorSizeEv, ptr @_ZNK5cGate4Desc8gateSizeEv, i64 131696}
!354 = !{ptr @_Z10opp_strcmpPKcS0_, ptr @strcmp, i64 3128955}
!355 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!356 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!357 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!358 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EEC2Ev, i64 58846}
!359 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv, i64 58846}
!360 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EED2Ev, ptr @_ZSt8_DestroyIPP8cChannelS1_EvT_S3_RSaIT0_E, i64 58846}
!361 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EED2Ev, i64 58846}
!362 = !{ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EEC2Ev, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE12_Vector_implC2Ev, i64 58846}
!363 = !{ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE12_Vector_implC2Ev, ptr @_ZNSaIP8cChannelEC2Ev, i64 58846}
!364 = !{ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE17_Vector_impl_dataC2Ev, i64 58846}
!365 = !{ptr @_ZNSaIP8cChannelEC2Ev, ptr @_ZNSt15__new_allocatorIP8cChannelEC2Ev, i64 58846}
!366 = !{ptr @_ZSt8_DestroyIPP8cChannelS1_EvT_S3_RSaIT0_E, ptr @_ZSt8_DestroyIPP8cChannelEvT_S3_, i64 58846}
!367 = !{ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE13_M_deallocateEPS1_m, i64 58846}
!368 = !{ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EED2Ev, ptr @_ZNSt15__new_allocatorIP8cChannelED2Ev, i64 58846}
!369 = !{ptr @_ZSt8_DestroyIPP8cChannelEvT_S3_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPP8cChannelEEvT_S5_, i64 58846}
!370 = !{ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIP8cChannelEE10deallocateERS2_PS1_m, i64 3967}
!371 = !{ptr @_ZNSt16allocator_traitsISaIP8cChannelEE10deallocateERS2_PS1_m, ptr @_ZNSt15__new_allocatorIP8cChannelE10deallocateEPS1_m, i64 3966}
!372 = !{ptr @_ZSt8_DestroyIPPKcS1_EvT_S3_RSaIT0_E, ptr @_ZSt8_DestroyIPPKcEvT_S3_, i64 70451}
!373 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m, i64 70440}
!374 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EED2Ev, ptr @_ZNSt15__new_allocatorIPKcED2Ev, i64 70440}
!375 = !{ptr @_ZSt8_DestroyIPPKcEvT_S3_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKcEEvT_S5_, i64 70451}
!376 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m, ptr @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m, i64 28}
!377 = !{ptr @_ZNSt16allocator_traitsISaIPKcEE10deallocateERS2_PS1_m, ptr @_ZNSt15__new_allocatorIPKcE10deallocateEPS1_m, i64 27}
!378 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv, i64 1}
!379 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E, i64 1}
!380 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5clearEv, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 1}
!381 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv, i64 71388}
!382 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv, i64 71388}
!383 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_, i64 71388}
!384 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv, i64 142776}
!385 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZSteqRKSt17_Rb_tree_iteratorIN5cGate4NameEES4_, i64 71388}
!386 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 71382}
!387 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE4findERKS1_, ptr @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_, i64 71382}
!388 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E, i64 245017}
!389 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_, ptr @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_, i64 245017}
!390 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base, i64 115499}
!391 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base, i64 129518}
!392 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_, ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base, i64 71388}
!393 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv, ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base, i64 71396}
!394 = !{ptr @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_, ptr @_ZNK5cGate4NameltERKS0_, i64 316433}
!395 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E, i64 71397}
!396 = !{ptr @_ZNKSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv, i64 387821}
!397 = !{ptr @_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE6_M_ptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufIN5cGate4NameEE7_M_addrEv, i64 387821}
!398 = !{ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE3endEv, ptr @_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2EPKSt18_Rb_tree_node_base, i64 71388}
!399 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, ptr @_ZNKSt9_IdentityIN5cGate4NameEEclERKS1_, i64 8}
!400 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, i64 8}
!401 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeC2ERS7_, i64 7}
!402 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, i64 7}
!403 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, ptr @_ZNSt4pairISt17_Rb_tree_iteratorIN5cGate4NameEEbEC2IS3_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_, i64 8}
!404 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_, ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base, i64 1}
!405 = !{ptr @_ZNSt4pairISt23_Rb_tree_const_iteratorIN5cGate4NameEEbEC2IRSt17_Rb_tree_iteratorIS2_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, ptr @_ZNSt23_Rb_tree_const_iteratorIN5cGate4NameEEC2ERKSt17_Rb_tree_iteratorIS1_E, i64 8}
!406 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_beginEv, i64 8}
!407 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv, i64 8}
!408 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt13_Rb_tree_nodeIS1_E, i64 16}
!409 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_, i64 23}
!410 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE7_S_leftEPSt18_Rb_tree_node_base, i64 4}
!411 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_S_rightEPSt18_Rb_tree_node_base, i64 12}
!412 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base, i64 8}
!413 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5beginEv, i64 2}
!414 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZSteqRKSt17_Rb_tree_iteratorIN5cGate4NameEES4_, i64 2}
!415 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN5cGate4NameEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_, i64 7}
!416 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEmmEv, i64 1}
!417 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 7}
!418 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE24_M_get_insert_unique_posERKS1_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_, i64 1}
!419 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_M_endEv, i64 7}
!420 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZNKSt9_IdentityIN5cGate4NameEEclERKS1_, i64 6}
!421 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 6}
!422 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZNKSt4lessIN5cGate4NameEEclERKS1_S4_, i64 6}
!423 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeclIRKS1_EEPSt13_Rb_tree_nodeIS1_EOT_, i64 8}
!424 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 8}
!425 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_, ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base, i64 8}
!426 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5beginEv, ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEC2EPSt18_Rb_tree_node_base, i64 2}
!427 = !{ptr @_ZNSt17_Rb_tree_iteratorIN5cGate4NameEEmmEv, ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, i64 1}
!428 = !{ptr @_ZNKSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeclIRKS1_EEPSt13_Rb_tree_nodeIS1_EOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_create_nodeIJRKS1_EEEPSt13_Rb_tree_nodeIS1_EDpOT_, i64 8}
!429 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_create_nodeIJRKS1_EEEPSt13_Rb_tree_nodeIS1_EDpOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_get_nodeEv, i64 8}
!430 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_create_nodeIJRKS1_EEEPSt13_Rb_tree_nodeIS1_EDpOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_, i64 8}
!431 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_get_nodeEv, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv, i64 8}
!432 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_M_get_nodeEv, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE8allocateERS4_m, i64 8}
!433 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_, ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE21_M_get_Node_allocatorEv, i64 8}
!434 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_, ptr @_ZNSt13_Rb_tree_nodeIN5cGate4NameEE9_M_valptrEv, i64 8}
!435 = !{ptr @_ZNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_construct_nodeIJRKS1_EEEvPSt13_Rb_tree_nodeIS1_EDpOT_, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_, i64 8}
!436 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE8allocateERS4_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE8allocateEmPKv, i64 8}
!437 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN5cGate4NameEEEE9constructIS2_JRKS2_EEEvRS4_PT_DpOT0_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_, i64 8}
!438 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN5cGate4NameEEE9constructIS2_JRKS2_EEEvPT_DpOT0_, ptr @_ZN5cGate4NameC2ERKS0_, i64 8}
!439 = !{ptr @_ZN10opp_stringC2ERKS_, ptr @_Z10opp_strdupPKc, i64 40}
!440 = !{ptr @_ZNSt16allocator_traitsISaIPKcEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIPKcE9constructIS1_JS1_EEEvPT_DpOT0_, i64 11}
!441 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_, i64 11}
!442 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIPKcSaIS1_EE5beginEv, i64 11}
!443 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPPKcSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, i64 11}
!444 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm, i64 11}
!445 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIPKcEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, i64 11}
!446 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEE4baseEv, i64 22}
!447 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv, i64 22}
!448 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, i64 22}
!449 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE13_M_deallocateEPS1_m, i64 11}
!450 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 16}
!451 = !{ptr @_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_, ptr @_ZNKSt6vectorIPKcSaIS1_EE8max_sizeEv, i64 54}
!452 = !{ptr @_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_, ptr @_ZNKSt6vectorIPKcSaIS1_EE4sizeEv, i64 105}
!453 = !{ptr @_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!454 = !{ptr @_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_, ptr @_ZSt3maxImERKT_S2_S2_, i64 26}
!455 = !{ptr @_ZN9__gnu_cxxmiIPPKcSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEE4baseEv, i64 32}
!456 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 16}
!457 = !{ptr @_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIPKcEE8allocateERS2_m, i64 26}
!458 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, ptr @_ZSt12__relocate_aIPPKcS2_SaIS1_EET0_T_S5_S4_RT1_, i64 43}
!459 = !{ptr @_ZNKSt6vectorIPKcSaIS1_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIPKcSaIS1_EE19_M_get_Tp_allocatorEv, i64 76}
!460 = !{ptr @_ZNKSt6vectorIPKcSaIS1_EE8max_sizeEv, ptr @_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_, i64 76}
!461 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_, ptr @_ZNSt16allocator_traitsISaIPKcEE8max_sizeERKS2_, i64 76}
!462 = !{ptr @_ZNSt6vectorIPKcSaIS1_EE11_S_max_sizeERKS2_, ptr @_ZSt3minImERKT_S2_S2_, i64 76}
!463 = !{ptr @_ZNSt16allocator_traitsISaIPKcEE8max_sizeERKS2_, ptr @_ZNKSt15__new_allocatorIPKcE8max_sizeEv, i64 76}
!464 = !{ptr @_ZNKSt15__new_allocatorIPKcE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIPKcE11_M_max_sizeEv, i64 76}
!465 = !{ptr @_ZNSt16allocator_traitsISaIPKcEE8allocateERS2_m, ptr @_ZNSt15__new_allocatorIPKcE8allocateEmPKv, i64 27}
!466 = !{ptr @_ZSt12__relocate_aIPPKcS2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt12__niter_baseIPPKcET_S3_, i64 129}
!467 = !{ptr @_ZSt12__relocate_aIPPKcS2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt14__relocate_a_1IPKcS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E, i64 43}
!468 = !{ptr @_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_, ptr @_ZSt19__iterator_categoryIPP5cGateENSt15iterator_traitsIT_E17iterator_categoryERKS4_, i64 6182}
!469 = !{ptr @_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_, ptr @_ZSt10__distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_St26random_access_iterator_tag, i64 6182}
!470 = !{ptr @_ZSt7advanceIPP5cGatelEvRT_T0_, ptr @_ZSt19__iterator_categoryIPP5cGateENSt15iterator_traitsIT_E17iterator_categoryERKS4_, i64 12069}
!471 = !{ptr @_ZSt7advanceIPP5cGatelEvRT_T0_, ptr @_ZSt9__advanceIPP5cGatelEvRT_T0_St26random_access_iterator_tag, i64 12069}
!472 = !{ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEEET_S8_S8_RKT0_T1_, ptr @_ZSt8distanceIPP5cGateENSt15iterator_traitsIT_E15difference_typeES4_S4_, i64 6182}
!473 = !{ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEEET_S8_S8_RKT0_T1_, ptr @_ZSt7advanceIPP5cGatelEvRT_T0_, i64 12068}
!474 = !{ptr @_ZSt13__lower_boundIPP5cGateS1_N9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEEET_S8_S8_RKT0_T1_, ptr @_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEclIPP5cGateKS6_EEbT_RT0_, i64 12068}
!475 = !{ptr @_ZN9__gnu_cxx5__ops15__iter_comp_valI29less_gatePairConnectedOutsideEENS0_14_Iter_comp_valIT_EES4_, ptr @_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEC2ES2_, i64 6182}
!476 = !{ptr @_ZN9__gnu_cxx5__ops14_Iter_comp_valI29less_gatePairConnectedOutsideEclIPP5cGateKS6_EEbT_RT0_, ptr @_ZN29less_gatePairConnectedOutsideclEP5cGateS1_, i64 12069}
!477 = !{ptr @_ZN29less_gatePairConnectedOutsideclEP5cGateS1_, ptr @_ZNK5cGate18isConnectedOutsideEv, i64 24137}
!478 = !{ptr @_ZN29less_gatePairConnectedOutsideclEP5cGateS1_, ptr @_ZNK5cGate8getIndexEv, i64 12068}
!479 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv, i64 1}
!480 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZSt8_DestroyIPP8cChannelS1_EvT_S3_RSaIT0_E, i64 1}
!481 = !{ptr @_ZNSt16allocator_traitsISaIP8cChannelEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIP8cChannelE9constructIS1_JS1_EEEvPT_DpOT0_, i64 19524}
!482 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE12_M_check_lenEmPKc, i64 3966}
!483 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIP8cChannelSaIS1_EE5beginEv, i64 3966}
!484 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPP8cChannelSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, i64 3966}
!485 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE11_M_allocateEm, i64 3966}
!486 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIP8cChannelEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_, i64 3966}
!487 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEE4baseEv, i64 7932}
!488 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv, i64 7932}
!489 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, i64 7932}
!490 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_, ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE13_M_deallocateEPS1_m, i64 3966}
!491 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 3966}
!492 = !{ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE8max_sizeEv, i64 7932}
!493 = !{ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE4sizeEv, i64 15861}
!494 = !{ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!495 = !{ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 3965}
!496 = !{ptr @_ZN9__gnu_cxxmiIPP8cChannelSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEE4baseEv, i64 7932}
!497 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEC2ERKS3_, i64 3966}
!498 = !{ptr @_ZNSt12_Vector_baseIP8cChannelSaIS1_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIP8cChannelEE8allocateERS2_m, i64 3965}
!499 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_, ptr @_ZSt12__relocate_aIPP8cChannelS2_SaIS1_EET0_T_S5_S4_RT1_, i64 7932}
!500 = !{ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIP8cChannelSaIS1_EE19_M_get_Tp_allocatorEv, i64 7932}
!501 = !{ptr @_ZNKSt6vectorIP8cChannelSaIS1_EE8max_sizeEv, ptr @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_max_sizeERKS2_, i64 7932}
!502 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_max_sizeERKS2_, ptr @_ZNSt16allocator_traitsISaIP8cChannelEE8max_sizeERKS2_, i64 7932}
!503 = !{ptr @_ZNSt6vectorIP8cChannelSaIS1_EE11_S_max_sizeERKS2_, ptr @_ZSt3minImERKT_S2_S2_, i64 7932}
!504 = !{ptr @_ZNSt16allocator_traitsISaIP8cChannelEE8max_sizeERKS2_, ptr @_ZNKSt15__new_allocatorIP8cChannelE8max_sizeEv, i64 7932}
!505 = !{ptr @_ZNKSt15__new_allocatorIP8cChannelE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIP8cChannelE11_M_max_sizeEv, i64 7932}
!506 = !{ptr @_ZNSt16allocator_traitsISaIP8cChannelEE8allocateERS2_m, ptr @_ZNSt15__new_allocatorIP8cChannelE8allocateEmPKv, i64 3966}
!507 = !{ptr @_ZSt12__relocate_aIPP8cChannelS2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt12__niter_baseIPP8cChannelET_S3_, i64 23796}
!508 = !{ptr @_ZSt12__relocate_aIPP8cChannelS2_SaIS1_EET0_T_S5_S4_RT1_, ptr @_ZSt14__relocate_a_1IP8cChannelS1_ENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS3_E4typeES4_S4_S4_RSaIT0_E, i64 7932}
!509 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!510 = !{!"function_entry_count", i64 29423}
!511 = !{!512, !512, i64 0}
!512 = !{!"vtable pointer", !513, i64 0}
!513 = !{!"Simple C++ TBAA"}
!514 = !{!515, !525, i64 112}
!515 = !{!"_ZTS7cModule", !516, i64 0, !522, i64 104, !525, i64 112, !522, i64 120, !522, i64 128, !522, i64 136, !522, i64 144, !525, i64 152, !522, i64 160, !525, i64 168, !525, i64 172}
!516 = !{!"_ZTS10cComponent", !517, i64 0, !522, i64 56, !524, i64 64, !522, i64 72, !524, i64 80, !524, i64 82, !522, i64 88, !522, i64 96}
!517 = !{!"_ZTS12cDefaultList", !518, i64 0, !522, i64 40, !525, i64 48, !525, i64 52}
!518 = !{!"_ZTS23cNoncopyableOwnedObject", !519, i64 0}
!519 = !{!"_ZTS12cOwnedObject", !520, i64 0, !522, i64 24, !525, i64 32}
!520 = !{!"_ZTS12cNamedObject", !521, i64 0, !522, i64 8, !524, i64 16, !524, i64 18}
!521 = !{!"_ZTS7cObject"}
!522 = !{!"any pointer", !523, i64 0}
!523 = !{!"omnipotent char", !513, i64 0}
!524 = !{!"short", !523, i64 0}
!525 = !{!"int", !523, i64 0}
!526 = !{!515, !525, i64 168}
!527 = !{!515, !525, i64 172}
!528 = !{!515, !522, i64 104}
!529 = !{!515, !522, i64 160}
!530 = !{!531, !532, i64 9}
!531 = !{!"_ZTS6cEnvir", !532, i64 8, !532, i64 9, !532, i64 10, !533, i64 16}
!532 = !{!"bool", !523, i64 0}
!533 = !{!"_ZTSSo"}
!534 = !{i8 0, i8 2}
!535 = !{}
!536 = !{!"branch_weights", i32 29424, i32 1}
!537 = !{!"branch_weights", i32 1, i32 29423}
!538 = !{!"branch_weights", i32 29423, i32 0}
!539 = distinct !{!539, !540}
!540 = !{!"llvm.loop.mustprogress"}
!541 = !{!"branch_weights", i32 80704, i32 32802}
!542 = !{!"branch_weights", i32 32802, i32 1}
!543 = distinct !{!543, !540}
!544 = !{!"branch_weights", i32 29423, i32 84082}
!545 = !{!"branch_weights", i32 1, i32 29424}
!546 = !{!"branch_weights", i32 2, i32 29423}
!547 = !{!"function_entry_count", i64 21674314260}
!548 = !{!522, !522, i64 0}
!549 = !{!"function_entry_count", i64 256166}
!550 = !{!"function_entry_count", i64 1936446}
!551 = !{!552, !522, i64 0}
!552 = !{!"_ZTSN7cModule17SubmoduleIteratorE", !522, i64 0}
!553 = !{!"function_entry_count", i64 1709800}
!554 = !{!"function_entry_count", i64 5379836753}
!555 = !{!"function_entry_count", i64 29422}
!556 = !{!557, !522, i64 80}
!557 = !{!"_ZTS11cSimulation", !518, i64 0, !525, i64 36, !525, i64 40, !522, i64 48, !525, i64 56, !522, i64 64, !522, i64 72, !522, i64 80, !522, i64 88, !525, i64 96, !522, i64 104, !522, i64 112, !558, i64 120, !559, i64 128, !522, i64 136, !522, i64 144, !522, i64 152, !560, i64 160}
!558 = !{!"_ZTS7SimTime", !559, i64 0}
!559 = !{!"long", !523, i64 0}
!560 = !{!"_ZTS12cMessageHeap", !519, i64 0, !522, i64 40, !525, i64 48, !525, i64 52, !559, i64 56}
!561 = !{!"function_entry_count", i64 1739126}
!562 = !{!"branch_weights", i32 58847, i32 1680281}
!563 = !{!515, !522, i64 128}
!564 = !{!"function_entry_count", i64 182006}
!565 = !{!"function_entry_count", i64 2631136}
!566 = !{!567, !525, i64 8}
!567 = !{!"_ZTSN7cModule12GateIteratorE", !522, i64 0, !525, i64 8, !532, i64 12, !525, i64 16}
!568 = !{!567, !522, i64 0}
!569 = !{!515, !525, i64 152}
!570 = !{!"function_entry_count", i64 698724}
!571 = !{!"function_entry_count", i64 309856362}
!572 = !{!573, !522, i64 40}
!573 = !{!"_ZTS5cGate", !521, i64 0, !522, i64 8, !525, i64 16, !522, i64 24, !522, i64 32, !522, i64 40}
!574 = !{!"function_entry_count", i64 211907}
!575 = !{!573, !522, i64 32}
!576 = !{!"branch_weights", i32 1, i32 698725}
!577 = !{!"branch_weights", i32 182003, i32 687675}
!578 = !{!"branch_weights", i32 170953, i32 698725}
!579 = distinct !{!579, !540}
!580 = !{!"branch_weights", i32 29423, i32 1}
!581 = !{!"branch_weights", i32 41966, i32 29423}
!582 = distinct !{!582, !540}
!583 = !{!515, !522, i64 120}
!584 = !{!"branch_weights", i32 5472, i32 23952}
!585 = !{!515, !522, i64 136}
!586 = !{!515, !522, i64 144}
!587 = !{!"function_entry_count", i64 0}
!588 = !{!516, !524, i64 82}
!589 = !{!516, !522, i64 88}
!590 = distinct !{!590, !540}
!591 = distinct !{!591, !540}
!592 = !{!"function_entry_count", i64 8852}
!593 = !{!"function_entry_count", i64 38275}
!594 = !{!"branch_weights", i32 38276, i32 1}
!595 = !{!"branch_weights", i32 8853, i32 29424}
!596 = !{!"branch_weights", i32 1, i32 38276}
!597 = !{!"function_entry_count", i64 643082}
!598 = !{!"function_entry_count", i64 373817}
!599 = !{!"function_entry_count", i64 54986}
!600 = !{!"branch_weights", i32 1, i32 54987}
!601 = !{!523, !523, i64 0}
!602 = !{!"branch_weights", i32 54987, i32 310919}
!603 = distinct !{!603, !540}
!604 = !{!"branch_weights", i32 44769, i32 10219}
!605 = !{!"branch_weights", i32 10199, i32 21}
!606 = !{!"function_entry_count", i64 325702}
!607 = !{!"branch_weights", i32 165727, i32 159977}
!608 = !{!"function_entry_count", i64 1487576}
!609 = !{!"branch_weights", i32 1161875, i32 325703}
!610 = !{!"branch_weights", i32 87511, i32 238193}
!611 = !{!"function_entry_count", i64 2107073}
!612 = !{!"function_entry_count", i64 109137}
!613 = !{!"function_entry_count", i64 113504}
!614 = !{!"function_entry_count", i64 1}
!615 = !{!"function_entry_count", i64 160148}
!616 = !{!"branch_weights", i32 46645, i32 113505}
!617 = !{!"branch_weights", i32 1, i32 113505}
!618 = !{!"branch_weights", i32 113505, i32 1}
!619 = !{!"function_entry_count", i64 71388}
!620 = !{!621, !522, i64 8}
!621 = !{!"_ZTSN5cGate4DescE", !522, i64 0, !522, i64 8, !525, i64 16, !523, i64 24, !523, i64 32}
!622 = !{!"branch_weights", i32 1, i32 71389}
!623 = !{!"branch_weights", i32 10971, i32 60419}
!624 = !{!"branch_weights", i32 10970, i32 1}
!625 = !{!"branch_weights", i32 13475, i32 19657}
!626 = !{!"branch_weights", i32 22161, i32 10970}
!627 = distinct !{!627, !540}
!628 = !{!"function_entry_count", i64 926392781}
!629 = !{!621, !525, i64 16}
!630 = !{!"function_entry_count", i64 14629927}
!631 = !{!"branch_weights", i32 14545288, i32 84641}
!632 = !{!"function_entry_count", i64 80844}
!633 = !{!"branch_weights", i32 40423, i32 40423}
!634 = !{!573, !522, i64 8}
!635 = !{!"branch_weights", i32 1, i32 10971}
!636 = !{!"branch_weights", i32 1, i32 60419}
!637 = !{!"branch_weights", i32 -2147483648, i32 0}
!638 = !{!"branch_weights", i32 1, i32 65289}
!639 = !{!"branch_weights", i32 24867, i32 40423}
!640 = !{!"branch_weights", i32 1, i32 24866}
!641 = !{!"branch_weights", i32 0, i32 1}
!642 = distinct !{!642, !540}
!643 = !{!"branch_weights", i32 0, i32 65289}
!644 = distinct !{!644, !540}
!645 = !{!"branch_weights", i32 9, i32 71381}
!646 = !{i64 0, i64 8, !548}
!647 = !{!"function_entry_count", i64 136676}
!648 = !{!621, !522, i64 0}
!649 = !{!650, !522, i64 0}
!650 = !{!"_ZTSSt23_Rb_tree_const_iteratorIN5cGate4NameEE", !522, i64 0}
!651 = !{!"function_entry_count", i64 8}
!652 = !{!"function_entry_count", i64 317061729}
!653 = !{!"branch_weights", i32 317042034, i32 19697}
!654 = !{!"branch_weights", i32 49591696, i32 267450339}
!655 = !{!"branch_weights", i32 13, i32 715827878, i32 715827878, i32 715827878}
!656 = !{!"branch_weights", i32 63, i32 1}
!657 = !{!"branch_weights", i32 127, i32 1}
!658 = !{!"branch_weights", i32 71388, i32 1}
!659 = !{!"branch_weights", i32 1, i32 347140079}
!660 = !{!"branch_weights", i32 267398647, i32 79741433}
!661 = !{!"branch_weights", i32 347068691, i32 71388}
!662 = distinct !{!662, !540}
!663 = !{!"branch_weights", i32 1, i32 39725}
!664 = !{!"branch_weights", i32 22625, i32 17101}
!665 = !{!"branch_weights", i32 5084673, i32 127}
!666 = distinct !{!666, !540}
!667 = !{!"branch_weights", i32 1, i32 49603272}
!668 = !{!"branch_weights", i32 49569072, i32 34201}
!669 = !{!"branch_weights", i32 -1120357951, i32 63}
!670 = distinct !{!670, !540}
!671 = !{!"function_entry_count", i64 397759682}
!672 = !{!673, !522, i64 0}
!673 = !{!"_ZTS10opp_string", !522, i64 0}
!674 = !{!"branch_weights", i32 51305, i32 397708379}
!675 = !{!"function_entry_count", i64 316972835}
!676 = !{!"branch_weights", i32 1, i32 316972836}
!677 = !{!"function_entry_count", i64 202351116}
!678 = !{!"branch_weights", i32 187923220, i32 14427898}
!679 = !{!"branch_weights", i32 187923220, i32 1}
!680 = !{!"branch_weights", i32 1, i32 187923220}
!681 = !{!573, !525, i64 16}
!682 = !{!"branch_weights", i32 14427898, i32 1}
!683 = !{!"branch_weights", i32 1, i32 14427898}
!684 = !{!"function_entry_count", i64 837837924}
!685 = !{!686, !687, i64 24}
!686 = !{!"_ZTSN5cGate4NameE", !673, i64 0, !673, i64 8, !673, i64 16, !687, i64 24}
!687 = !{!"_ZTSN5cGate4TypeE", !523, i64 0}
!688 = !{!"branch_weights", i32 71389, i32 1}
!689 = !{!"branch_weights", i32 23323, i32 37097}
!690 = !{!"branch_weights", i32 37097, i32 1}
!691 = !{!"function_entry_count", i64 37096}
!692 = !{!"function_entry_count", i64 16522}
!693 = !{!"branch_weights", i32 1, i32 16523}
!694 = !{!"branch_weights", i32 16523, i32 1}
!695 = distinct !{!695, !540}
!696 = !{!"branch_weights", i32 5171, i32 11353}
!697 = !{!"branch_weights", i32 978123663, i32 1169359985}
!698 = !{!"branch_weights", i32 19657, i32 1}
!699 = !{!"branch_weights", i32 16522, i32 16609}
!700 = distinct !{!700, !540}
!701 = !{!"function_entry_count", i64 33044}
!702 = !{!"branch_weights", i32 28907, i32 4139}
!703 = !{!"branch_weights", i32 4003, i32 29043}
!704 = !{!"branch_weights", i32 137, i32 4003}
!705 = !{!"function_entry_count", i64 22704}
!706 = !{!"cmodule.cc:_ZL12reallocGatevRPP5cGateii"}
!707 = !{!"branch_weights", i32 6705, i32 16001}
!708 = !{!"branch_weights", i32 16001, i32 1}
!709 = !{!"function_entry_count", i64 19656}
!710 = !{!"function_entry_count", i64 1368}
!711 = !{!"function_entry_count", i64 316920037}
!712 = !{!"branch_weights", i32 -547837261, i32 11}
!713 = !{!"branch_weights", i32 22625, i32 316897414}
!714 = !{!"branch_weights", i32 123110510, i32 193809529}
!715 = !{!"branch_weights", i32 193809529, i32 1}
!716 = !{!"branch_weights", i32 187917717, i32 5891813}
!717 = !{!"branch_weights", i32 1, i32 123110510}
!718 = !{!"branch_weights", i32 123110510, i32 1}
!719 = !{!"branch_weights", i32 17347, i32 123093164}
!720 = !{!"function_entry_count", i64 45248}
!721 = !{!"branch_weights", i32 22625, i32 22625}
!722 = !{!"function_entry_count", i64 984}
!723 = !{!"branch_weights", i32 1, i32 985}
!724 = !{!"branch_weights", i32 985, i32 1}
!725 = distinct !{!725, !540}
!726 = !{!"function_entry_count", i64 70429}
!727 = !{!"function_entry_count", i64 11}
!728 = !{!"function_entry_count", i64 70440}
!729 = !{!730, !522, i64 0}
!730 = !{!"_ZTSNSt12_Vector_baseIPKcSaIS1_EE17_Vector_impl_dataE", !522, i64 0, !522, i64 8, !522, i64 16}
!731 = !{!730, !522, i64 8}
!732 = distinct !{!732, !540}
!733 = !{!"function_entry_count", i64 6182}
!734 = !{!"branch_weights", i32 6183, i32 1}
!735 = !{!"branch_weights", i32 1, i32 6183}
!736 = distinct !{!736, !540}
!737 = !{!738, !522, i64 0}
!738 = !{!"_ZTS28less_gatePairConnectedInside", !522, i64 0}
!739 = !{!740, !522, i64 0}
!740 = !{!"_ZTS29less_gatePairConnectedOutside", !522, i64 0}
!741 = !{!"function_entry_count", i64 14375669}
!742 = distinct !{!742, !540}
!743 = distinct !{!743, !540}
!744 = !{!"function_entry_count", i64 5471}
!745 = !{!"branch_weights", i32 1, i32 5471}
!746 = !{!"branch_weights", i32 1, i32 17701}
!747 = !{!"branch_weights", i32 17701, i32 1}
!748 = !{!"branch_weights", i32 5471, i32 12230}
!749 = distinct !{!749, !540}
!750 = !{!"branch_weights", i32 1, i32 29422}
!751 = !{!"branch_weights", i32 5471, i32 23952}
!752 = distinct !{!752, !540}
!753 = !{!"branch_weights", i32 29422, i32 84083}
!754 = distinct !{!754, !540}
!755 = !{!"function_entry_count", i64 131696}
!756 = distinct !{!756, !540}
!757 = !{!"function_entry_count", i64 2470429}
!758 = !{!"function_entry_count", i64 936672086}
!759 = !{!"function_entry_count", i64 9840}
!760 = !{!"branch_weights", i32 1, i32 127}
!761 = !{!"branch_weights", i32 9841, i32 1386061}
!762 = !{!"branch_weights", i32 9841, i32 1}
!763 = !{!"branch_weights", i32 1, i32 9841}
!764 = !{!"branch_weights", i32 127, i32 178675201}
!765 = distinct !{!765, !540}
!766 = distinct !{!766, !540}
!767 = !{!"function_entry_count", i64 4934}
!768 = !{!"function_entry_count", i64 4922}
!769 = !{!"function_entry_count", i64 444560}
!770 = distinct !{!770, !540}
!771 = !{!"function_entry_count", i64 34894}
!772 = !{!"function_entry_count", i64 58846}
!773 = !{!520, !524, i64 16}
!774 = !{!"function_entry_count", i64 215798}
!775 = !{!"function_entry_count", i64 202993470}
!776 = !{!"branch_weights", i32 380268, i32 202613204}
!777 = !{!"branch_weights", i32 1, i32 1}
!778 = !{!"branch_weights", i32 1, i32 0}
!779 = distinct !{!779, !540}
!780 = distinct !{!780, !540}
!781 = distinct !{!781, !540}
!782 = !{!"branch_weights", i32 2, i32 2}
!783 = !{!"branch_weights", i32 3, i32 1}
!784 = !{!"branch_weights", i32 2, i32 3}
!785 = !{!"branch_weights", i32 1, i32 2}
!786 = distinct !{!786, !540}
!787 = !{!"branch_weights", i32 19661, i32 9763}
!788 = !{!"branch_weights", i32 1, i32 9763}
!789 = !{!"branch_weights", i32 9763, i32 0}
!790 = distinct !{!790, !540}
!791 = distinct !{!791, !540}
!792 = !{!"function_entry_count", i64 282984}
!793 = !{!557, !525, i64 96}
!794 = !{!"function_entry_count", i64 97894}
!795 = !{!796, !525, i64 24}
!796 = !{!"_ZTSN7cModule15ChannelIteratorE", !797, i64 0, !525, i64 24}
!797 = !{!"_ZTSSt6vectorIP8cChannelSaIS1_EE", !798, i64 0}
!798 = !{!"_ZTSSt12_Vector_baseIP8cChannelSaIS1_EE", !799, i64 0}
!799 = !{!"_ZTSNSt12_Vector_baseIP8cChannelSaIS1_EE12_Vector_implE", !800, i64 0}
!800 = !{!"_ZTSNSt12_Vector_baseIP8cChannelSaIS1_EE17_Vector_impl_dataE", !522, i64 0, !522, i64 8, !522, i64 16}
!801 = !{!"function_entry_count", i64 19524}
!802 = !{!"branch_weights", i32 19525, i32 1}
!803 = !{!"branch_weights", i32 1, i32 19525}
!804 = !{!"branch_weights", i32 58847, i32 1}
!805 = !{!"branch_weights", i32 29424, i32 29424}
!806 = !{!"branch_weights", i32 34348, i32 24500}
!807 = !{!"branch_weights", i32 2, i32 58845}
!808 = !{!"branch_weights", i32 10149, i32 48697}
!809 = !{!"branch_weights", i32 58845, i32 0}
!810 = distinct !{!810, !540}
!811 = !{!"function_entry_count", i64 574617348}
!812 = distinct !{!812, !540}
!813 = distinct !{!813, !540}
!814 = !{!567, !532, i64 12}
!815 = !{!567, !525, i64 16}
!816 = !{!"branch_weights", i32 1, i32 159}
!817 = !{!"branch_weights", i32 1, i32 182007}
!818 = !{!"branch_weights", i32 159, i32 5823937}
!819 = distinct !{!819, !540}
!820 = !{!"function_entry_count", i64 1568400}
!821 = !{!"branch_weights", i32 1568401, i32 1}
!822 = !{!"branch_weights", i32 1, i32 1568401}
!823 = !{!"branch_weights", i32 869677, i32 698725}
!824 = !{!"branch_weights", i32 486249, i32 911201}
!825 = !{!"branch_weights", i32 455601, i32 455601}
!826 = !{!"branch_weights", i32 1, i32 486249}
!827 = !{!"branch_weights", i32 243125, i32 243125}
!828 = !{!"function_entry_count", i64 869676}
!829 = !{!"branch_weights", i32 1, i32 869677}
!830 = !{!"branch_weights", i32 520315, i32 349363}
!831 = !{!"branch_weights", i32 170953, i32 349363}
!832 = !{!"branch_weights", i32 243125, i32 455601}
!833 = !{!"branch_weights", i32 173033, i32 70093}
!834 = !{!"branch_weights", i32 262847, i32 262847}
!835 = !{!"branch_weights", i32 170953, i32 91895}
!836 = !{!"branch_weights", i32 433799, i32 1}
!837 = !{!"branch_weights", i32 58847, i32 58845}
!838 = !{!"branch_weights", i32 1, i32 117690}
!839 = !{!"branch_weights", i32 58844, i32 58847}
!840 = distinct !{!840, !540}
!841 = !{!"branch_weights", i32 1, i32 454017}
!842 = !{!"branch_weights", i32 414969, i32 39049}
!843 = !{!"branch_weights", i32 19525, i32 19525}
!844 = !{!"branch_weights", i32 117690, i32 336327}
!845 = distinct !{!845, !540}
!846 = !{!800, !522, i64 0}
!847 = !{!"function_entry_count", i64 505888}
!848 = !{!573, !522, i64 24}
!849 = !{!"function_entry_count", i64 202685165}
!850 = !{!"function_entry_count", i64 192538233}
!851 = !{!520, !522, i64 8}
!852 = !{!"branch_weights", i32 1, i32 192538234}
!853 = !{!"function_entry_count", i64 542987320}
!854 = !{!519, !522, i64 24}
!855 = !{!"function_entry_count", i64 147484992}
!856 = !{!"function_entry_count", i64 34261}
!857 = !{!"branch_weights", i32 34262, i32 1}
!858 = !{!"function_entry_count", i64 58760}
!859 = !{!"function_entry_count", i64 524615}
!860 = !{!"function_entry_count", i64 420856}
!861 = !{!"function_entry_count", i64 23952}
!862 = !{!"branch_weights", i32 1, i32 256167}
!863 = !{!864, !525, i64 8}
!864 = !{!"_ZTS10cException", !865, i64 0, !525, i64 8, !866, i64 16, !532, i64 48, !866, i64 56, !866, i64 88, !525, i64 120}
!865 = !{!"_ZTSSt9exception"}
!866 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !867, i64 0, !559, i64 8, !523, i64 16}
!867 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !522, i64 0}
!868 = !{!864, !532, i64 48}
!869 = !{!864, !525, i64 120}
!870 = !{!"function_entry_count", i64 2}
!871 = !{!"function_entry_count", i64 1891507}
!872 = !{!"function_entry_count", i64 1889443}
!873 = !{!559, !559, i64 0}
!874 = !{!"branch_weights", i32 1257663, i32 631782}
!875 = !{!876, !522, i64 0}
!876 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !522, i64 0}
!877 = !{!"branch_weights", i32 1889444, i32 1}
!878 = !{!"function_entry_count", i64 192152}
!879 = !{!880, !882, i64 0}
!880 = !{!"_ZTSSt15_Rb_tree_header", !881, i64 0, !559, i64 32}
!881 = !{!"_ZTSSt18_Rb_tree_node_base", !882, i64 0, !522, i64 8, !522, i64 16, !522, i64 24}
!882 = !{!"_ZTSSt14_Rb_tree_color", !523, i64 0}
!883 = !{!"function_entry_count", i64 197751}
!884 = !{!880, !522, i64 8}
!885 = !{!880, !522, i64 16}
!886 = !{!880, !522, i64 24}
!887 = !{!880, !559, i64 32}
!888 = !{!"function_entry_count", i64 9}
!889 = !{!"branch_weights", i32 1, i32 9}
!890 = !{!"branch_weights", i32 9, i32 0}
!891 = distinct !{!891, !540}
!892 = !{!"function_entry_count", i64 71397}
!893 = !{!"function_entry_count", i64 129540}
!894 = !{!881, !522, i64 24}
!895 = !{!"function_entry_count", i64 115512}
!896 = !{!881, !522, i64 16}
!897 = !{!"function_entry_count", i64 32}
!898 = !{!"function_entry_count", i64 16}
!899 = !{!"branch_weights", i32 1, i32 14375670}
!900 = !{!"function_entry_count", i64 3403184}
!901 = !{!"branch_weights", i32 274228, i32 3128958}
!902 = !{!"branch_weights", i32 1, i32 3128958}
!903 = !{!"branch_weights", i32 121684, i32 152545}
!904 = !{!"function_entry_count", i64 188204319}
!905 = !{!"branch_weights", i32 13, i32 188204308}
!906 = !{!"branch_weights", i32 7, i32 188204302}
!907 = !{!800, !522, i64 8}
!908 = !{!"function_entry_count", i64 66778}
!909 = !{!800, !522, i64 16}
!910 = !{!"function_entry_count", i64 62812}
!911 = !{!"branch_weights", i32 58847, i32 3967}
!912 = !{!"function_entry_count", i64 3966}
!913 = !{!"function_entry_count", i64 133282}
!914 = !{!"function_entry_count", i64 39048}
!915 = !{!"function_entry_count", i64 70451}
!916 = !{!"function_entry_count", i64 70505}
!917 = !{!730, !522, i64 16}
!918 = !{!"function_entry_count", i64 70467}
!919 = !{!"branch_weights", i32 70441, i32 28}
!920 = !{!"function_entry_count", i64 27}
!921 = !{!"branch_weights", i32 6, i32 71384}
!922 = !{!923, !522, i64 0}
!923 = !{!"_ZTSSt17_Rb_tree_iteratorIN5cGate4NameEE", !522, i64 0}
!924 = !{!"branch_weights", i32 -1, i32 1}
!925 = !{!"function_entry_count", i64 71396}
!926 = !{!"branch_weights", i32 1, i32 71388}
!927 = !{!"branch_weights", i32 129520, i32 115501}
!928 = !{!"branch_weights", i32 71388, i32 173632}
!929 = distinct !{!929, !540}
!930 = !{!"function_entry_count", i64 71404}
!931 = !{!"function_entry_count", i64 71390}
!932 = !{!"function_entry_count", i64 316433}
!933 = !{!"function_entry_count", i64 142802}
!934 = !{!"function_entry_count", i64 316448}
!935 = !{!"function_entry_count", i64 387821}
!936 = !{!532, !532, i64 0}
!937 = !{!938, !532, i64 8}
!938 = !{!"_ZTSSt4pairISt23_Rb_tree_const_iteratorIN5cGate4NameEEbE", !650, i64 0, !532, i64 8}
!939 = !{!"branch_weights", i32 1, i32 143}
!940 = !{!"branch_weights", i32 5, i32 14}
!941 = !{!"branch_weights", i32 143, i32 145}
!942 = distinct !{!942, !540}
!943 = !{!"branch_weights", i32 3, i32 7}
!944 = !{!"branch_weights", i32 8, i32 1}
!945 = !{!"branch_weights", i32 9, i32 1}
!946 = !{!"branch_weights", i32 2, i32 8}
!947 = !{!948, !532, i64 8}
!948 = !{!"_ZTSSt4pairISt17_Rb_tree_iteratorIN5cGate4NameEEbE", !923, i64 0, !532, i64 8}
!949 = !{!950, !522, i64 0}
!950 = !{!"_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E", !522, i64 0, !522, i64 8}
!951 = !{!950, !522, i64 8}
!952 = !{!"function_entry_count", i64 435559}
!953 = !{!954, !522, i64 0}
!954 = !{!"_ZTSNSt8_Rb_treeIN5cGate4NameES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11_Alloc_nodeE", !522, i64 0}
!955 = !{!"branch_weights", i32 1, i32 2000}
!956 = !{!"function_entry_count", i64 40}
!957 = !{!"branch_weights", i32 1, i32 28}
!958 = !{!"function_entry_count", i64 43}
!959 = !{!"function_entry_count", i64 64}
!960 = !{!"function_entry_count", i64 76}
!961 = !{!"function_entry_count", i64 109858}
!962 = !{!"function_entry_count", i64 147735}
!963 = !{!"branch_weights", i32 61980, i32 85757}
!964 = !{!"function_entry_count", i64 295467}
!965 = !{!"branch_weights", i32 2, i32 295467}
!966 = !{!"function_entry_count", i64 103}
!967 = !{!968, !522, i64 0}
!968 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPPKcSt6vectorIS2_SaIS2_EEEE", !522, i64 0}
!969 = !{!"branch_weights", i32 5, i32 40}
!970 = !{!"function_entry_count", i64 129}
!971 = distinct !{!971, !540}
!972 = !{!"function_entry_count", i64 12069}
!973 = !{!"function_entry_count", i64 18251}
!974 = distinct !{!974, !540}
!975 = distinct !{!975, !540}
!976 = !{!"branch_weights", i32 6182, i32 1}
!977 = !{!"branch_weights", i32 12070, i32 1}
!978 = !{!"branch_weights", i32 5888, i32 6182}
!979 = distinct !{!979, !540}
!980 = !{!"branch_weights", i32 1, i32 12070}
!981 = !{!"branch_weights", i32 1, i32 3967}
!982 = !{!"function_entry_count", i64 7932}
!983 = !{!"function_entry_count", i64 15864}
!984 = !{!"function_entry_count", i64 11898}
!985 = !{!986, !522, i64 0}
!986 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPP8cChannelSt6vectorIS2_SaIS2_EEEE", !522, i64 0}
!987 = !{!"branch_weights", i32 3365, i32 4569}
!988 = !{!"function_entry_count", i64 23796}
