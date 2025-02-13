; ModuleID = 'simulator/startup.cc'
source_filename = "simulator/startup.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.ExecuteOnStartup = type { ptr, ptr }
%class.cGlobalRegistrationList = type { ptr, ptr }
%"class.std::map.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.8", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.8" = type { %"struct.std::less.9" }
%"struct.std::less.9" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.cOmnetAppRegistration = type <{ %class.cOwnedObject.base, [4 x i8], ptr, %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.ArgList = type { i32, ptr, %"class.std::__cxx11::basic_string", %"class.std::map", %"class.std::map.3", %"class.std::vector" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<char, std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>>, std::less<char>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char, std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const char, std::vector<std::__cxx11::basic_string<char>>>>, std::less<char>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%class.Speedometer = type { i8, i64, %class.SimTime, %class.SimTime, %struct.timeval, double, double, double }
%class.SimTime = type { i64 }
%struct.timeval = type { i64, i64 }
%class.cFileOutputVectorManager = type <{ %class.cOutputVectorManager, %struct.sRunData, i32, [4 x i8], %class.opp_string, ptr, i32, [4 x i8] }>
%class.cOutputVectorManager = type { %class.cObject }
%struct.sRunData = type { i8, %class.opp_string, %class.opp_string_map, %class.opp_string_map }
%class.opp_string_map = type { %"class.std::map.59" }
%"class.std::map.59" = type { %"class.std::_Rb_tree.60" }
%"class.std::_Rb_tree.60" = type { %"struct.std::_Rb_tree<opp_string, std::pair<const opp_string, opp_string>, std::_Select1st<std::pair<const opp_string, opp_string>>, std::less<opp_string>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<opp_string, std::pair<const opp_string, opp_string>, std::_Select1st<std::pair<const opp_string, opp_string>>, std::less<opp_string>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare.64", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare.64" = type { %"struct.std::less.65" }
%"struct.std::less.65" = type { i8 }
%class.opp_string = type { ptr }
%class.cFileOutputScalarManager = type <{ %class.cOutputScalarManager, %struct.sRunData, %class.opp_string, ptr, i32, [4 x i8] }>
%class.cOutputScalarManager = type { %class.cObject }
%class.cFileSnapshotManager = type { %class.cSnapshotManager, %class.opp_string }
%class.cSnapshotManager = type { %class.cObject }
%class.cIndexedFileOutputVectorManager = type { %class.cFileOutputVectorManager.base, %class.opp_string, ptr, i64, i64, %"class.std::vector.67" }
%class.cFileOutputVectorManager.base = type <{ %class.cOutputVectorManager, %struct.sRunData, i32, [4 x i8], %class.opp_string, ptr, i32 }>
%"class.std::vector.67" = type { %"struct.std::_Vector_base.68" }
%"struct.std::_Vector_base.68" = type { %"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl" }
%"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl" = type { %"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.MatchableObjectAdapter = type { %"class.MatchExpression::Matchable", i32, ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.MatchExpression::Matchable" = type { ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [64 x i8] }
%"struct.std::pair" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"struct.std::_Rb_tree_node.72" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.73" }
%"struct.__gnu_cxx::__aligned_membuf.73" = type { [32 x i8] }
%"struct.std::pair.74" = type { i8, %"class.std::vector" }
%struct._Guard = type { ptr }

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev = comdat any

$_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm = comdat any

$_Z9createOnePKc = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_Z15opp_nulltoemptyPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN21cOmnetAppRegistration9createOneEv = comdat any

$_ZN7ArgListD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN22MatchableObjectAdapterD2Ev = comdat any

$_ZN31cIndexedFileOutputVectorManagerD2Ev = comdat any

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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEED2Ev = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEED2Ev = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_ = comdat any

$_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_ = comdat any

$_ZNSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE10deallocateEPSD_m = comdat any

$_ZNKSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE9_M_mbeginEv = comdat any

$_ZN15MatchExpression9MatchableD2Ev = comdat any

$_ZNSt6vectorIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev = comdat any

$_ZN10opp_stringD2Ev = comdat any

$_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPN31cIndexedFileOutputVectorManager7sVectorEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIPN31cIndexedFileOutputVectorManager7sVectorEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIPN31cIndexedFileOutputVectorManager7sVectorEEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIPN31cIndexedFileOutputVectorManager7sVectorEE10deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

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

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@CFGID_LOAD_LIBS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_41E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_CONFIGURATION_CLASS = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_42E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@CFGID_USER_INTERFACE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_118__onstartup_obj_43E = internal global %class.ExecuteOnStartup zeroinitializer, align 8
@_ZTISt9exception = external constant ptr
@.str = private unnamed_addr constant [23 x i8] c"h?f:u:l:c:r:p:n:x:agGv\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"omnetpp.ini\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"General\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Class \22%s\22 is not subclassed from cConfigurationEx\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@omnetapps = external global %class.cGlobalRegistrationList, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"Cmdenv\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c" cmdenv-*\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Tkenv\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c" tkenv-*\00", align 1
@.str.12 = private unnamed_addr constant [91 x i8] c"\0AUser interface '%s' not found (not linked in or loaded dynamically).\0AAvailable ones are:\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"  %s : %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"Could not start user interface '%s'\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"No user interface (Cmdenv, Tkenv, etc.) found\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Setting up %s...\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [32 x i8] c"\0A<!> Error during startup: %s.\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"simulation\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"\0A<!> %s.\0A\00", align 1
@componentTypes = external global %class.cGlobalRegistrationList, align 8
@nedFunctions = external global %class.cGlobalRegistrationList, align 8
@classes = external global %class.cGlobalRegistrationList, align 8
@enums = external global %class.cGlobalRegistrationList, align 8
@classDescriptors = external global %class.cGlobalRegistrationList, align 8
@configOptions = external global %class.cGlobalRegistrationList, align 8
@.str.20 = private unnamed_addr constant [10 x i8] c"load-libs\00", align 1
@.str.21 = private unnamed_addr constant [174 x i8] c"A space-separated list of dynamic libraries to be loaded on startup. The libraries should be given without the `.dll' or `.so' suffix -- that will be automatically appended.\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"configuration-class\00", align 1
@.str.23 = private unnamed_addr constant [382 x i8] c"Part of the Envir plugin mechanism: selects the class from which all configuration information will be obtained. This option lets you replace omnetpp.ini with some other implementation, e.g. database input. The simulation program still has to bootstrap from an omnetpp.ini (which contains the configuration-class setting). The class should implement the cConfigurationEx interface.\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"user-interface\00", align 1
@.str.25 = private unnamed_addr constant [299 x i8] c"Selects the user interface to be started. Possible values are Cmdenv and Tkenv. This option is normally left empty, as it is more convenient to specify the user interface via a command-line option or the IDE's Run and Debug dialogs. New user interfaces can be defined by subclassing cRunnableEnvir.\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.29 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTV22MatchableObjectAdapter = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTV31cIndexedFileOutputVectorManager = external unnamed_addr constant { [36 x ptr] }, align 8
@.str.31 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_startup.cc, ptr null }]
@str = private unnamed_addr constant [104 x i8] c"INTERNAL ERROR: INT64_PRINTF_FORMAT incorrectly defined in include/inttypes.h, please report this bug!\0A\00", align 1

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

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_41E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_41Ev) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_41E, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_41Ev() #4 personality ptr @__gxx_personality_v0 !prof !165 !PGOFuncName !166 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #15
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #17
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.20, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 5, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21) #15
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_LOAD_LIBS, align 8, !tbaa !167
  %4 = load ptr, ptr %1, align 8, !tbaa !171
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #15
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN16ExecuteOnStartupD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_42E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_42Ev) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_42E, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_42Ev() #4 personality ptr @__gxx_personality_v0 !prof !165 !PGOFuncName !173 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #15
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #17
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.22, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23) #15
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_CONFIGURATION_CLASS, align 8, !tbaa !167
  %4 = load ptr, ptr %1, align 8, !tbaa !171
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #15
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN16ExecuteOnStartupC1EPFvvE(ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_118__onstartup_obj_43E, ptr noundef nonnull @_ZN12_GLOBAL__N_119__onstartup_func_43Ev) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN16ExecuteOnStartupD1Ev, ptr nonnull @_ZN12_GLOBAL__N_118__onstartup_obj_43E, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN12_GLOBAL__N_119__onstartup_func_43Ev() #4 personality ptr @__gxx_personality_v0 !prof !165 !PGOFuncName !174 {
  %1 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #15
  %2 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #17
  invoke void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.24, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 3, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.25) #15
          to label %3 unwind label %7

3:                                                ; preds = %0
  store ptr %2, ptr @CFGID_USER_INTERFACE, align 8, !tbaa !167
  %4 = load ptr, ptr %1, align 8, !tbaa !171
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull %2) #15
  ret void

7:                                                ; preds = %0
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #18
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_Z18setupUserInterfaceiPPcP14cConfiguration(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !165 {
  %4 = alloca %"class.std::map.3", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::vector", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::allocator", align 1
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  invoke void @_ZN16ExecuteOnStartup10executeAllEv() #15
          to label %13 unwind label %23

13:                                               ; preds = %3
  tail call fastcc void @_ZL14verifyIntTypesv() #15
  %14 = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #17
          to label %15 unwind label %23

15:                                               ; preds = %13
  invoke void @_ZN7ArgListC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %14) #15
          to label %16 unwind label %26

16:                                               ; preds = %15
  invoke void @_ZN7ArgList5parseEiPPcPKc(ptr noundef nonnull align 8 dereferenceable(168) %14, i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #15
          to label %17 unwind label %23

17:                                               ; preds = %16
  %18 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %14, i8 noundef signext 102, i32 noundef 0) #15
          to label %19 unwind label %28

19:                                               ; preds = %17
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %30, !prof !175

21:                                               ; preds = %19
  %22 = invoke noundef ptr @_ZNK7ArgList8argumentEi(ptr noundef nonnull align 8 dereferenceable(168) %14, i32 noundef 0) #15
          to label %30 unwind label %28

23:                                               ; preds = %16, %13, %3
  %24 = phi ptr [ %14, %16 ], [ null, %13 ], [ null, %3 ]
  %25 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %347

26:                                               ; preds = %15
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPv(ptr noundef nonnull %14) #18
  br label %347

28:                                               ; preds = %21, %17
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %347

30:                                               ; preds = %21, %19
  %31 = phi ptr [ %18, %19 ], [ %22, %21 ]
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @.str.4, ptr %31, !prof !175
  %34 = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #17
          to label %35 unwind label %50

35:                                               ; preds = %30
  invoke void @_ZN13InifileReaderC1Ev(ptr noundef nonnull align 8 dereferenceable(192) %34) #15
          to label %36 unwind label %53

36:                                               ; preds = %35
  %37 = invoke noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %14, i8 noundef signext 118) #15
          to label %38 unwind label %50

38:                                               ; preds = %36
  br i1 %37, label %42, label %39, !prof !176

39:                                               ; preds = %38
  %40 = invoke noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168) %14, i8 noundef signext 104) #15
          to label %41 unwind label %50

41:                                               ; preds = %39
  br i1 %40, label %42, label %46, !prof !176

42:                                               ; preds = %41, %38
  %43 = invoke noundef zeroext i1 @_Z10fileExistsPKc(ptr noundef nonnull %33) #15
          to label %44 unwind label %50

44:                                               ; preds = %42
  br i1 %43, label %46, label %45

45:                                               ; preds = %46, %44
  br label %55

46:                                               ; preds = %44, %41
  %47 = load ptr, ptr %34, align 8, !tbaa !171
  %48 = getelementptr inbounds ptr, ptr %47, i64 10
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(192) %34, ptr noundef nonnull %33) #15
          to label %45 unwind label %50

50:                                               ; preds = %100, %91, %78, %46, %42, %39, %36, %30
  %51 = phi ptr [ %79, %100 ], [ %79, %91 ], [ null, %78 ], [ null, %46 ], [ null, %42 ], [ null, %39 ], [ null, %36 ], [ null, %30 ]
  %52 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %347

53:                                               ; preds = %35
  %54 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPv(ptr noundef nonnull %34) #18
  br label %347

55:                                               ; preds = %45, %68
  %56 = phi i32 [ %69, %68 ], [ 1, %45 ]
  %57 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %14, i8 noundef signext 102, i32 noundef %56) #15
          to label %58 unwind label %62

58:                                               ; preds = %55
  %59 = icmp eq ptr %57, null
  br i1 %59, label %60, label %64, !prof !175

60:                                               ; preds = %58
  %61 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %14, i8 noundef signext 102, i32 noundef 0) #15
          to label %70 unwind label %82

62:                                               ; preds = %64, %55
  %63 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %347

64:                                               ; preds = %58
  %65 = load ptr, ptr %34, align 8, !tbaa !171
  %66 = getelementptr inbounds ptr, ptr %65, i64 10
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(192) %34, ptr noundef nonnull %57) #15
          to label %68 unwind label %62

68:                                               ; preds = %64
  %69 = add nuw nsw i32 %56, 1
  br label %55, !llvm.loop !177

70:                                               ; preds = %60
  %71 = icmp eq ptr %61, null
  %72 = zext i1 %71 to i32
  br label %73

73:                                               ; preds = %88, %70
  %74 = phi i32 [ %72, %70 ], [ %89, %88 ]
  %75 = invoke noundef ptr @_ZNK7ArgList8argumentEi(ptr noundef nonnull align 8 dereferenceable(168) %14, i32 noundef %74) #15
          to label %76 unwind label %80

76:                                               ; preds = %73
  %77 = icmp eq ptr %75, null
  br i1 %77, label %78, label %84, !prof !175

78:                                               ; preds = %76
  %79 = invoke noalias noundef nonnull dereferenceable(416) ptr @_Znwm(i64 noundef 416) #17
          to label %90 unwind label %50

80:                                               ; preds = %73, %84
  %81 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %347

82:                                               ; preds = %60
  %83 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %347

84:                                               ; preds = %76
  %85 = load ptr, ptr %34, align 8, !tbaa !171
  %86 = getelementptr inbounds ptr, ptr %85, i64 10
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(192) %34, ptr noundef nonnull %75) #15
          to label %88 unwind label %80

88:                                               ; preds = %84
  %89 = add nuw nsw i32 %74, 1
  br label %73, !llvm.loop !179

90:                                               ; preds = %78
  invoke void @_ZN25SectionBasedConfigurationC1Ev(ptr noundef nonnull align 8 dereferenceable(416) %79) #15
          to label %91 unwind label %118

91:                                               ; preds = %90
  %92 = load ptr, ptr %79, align 8, !tbaa !171
  %93 = getelementptr inbounds ptr, ptr %92, i64 62
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(416) %79, ptr noundef nonnull %34) #15
          to label %95 unwind label %50

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #16
  invoke void @_ZNK7ArgList14getLongOptionsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::map.3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(168) %14) #15
          to label %96 unwind label %120

96:                                               ; preds = %95
  %97 = load ptr, ptr %79, align 8, !tbaa !171
  %98 = getelementptr inbounds ptr, ptr %97, i64 63
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(416) %79, ptr noundef nonnull align 8 dereferenceable(48) %4) #15
          to label %100 unwind label %122

100:                                              ; preds = %96
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  %101 = load ptr, ptr %79, align 8, !tbaa !171
  %102 = getelementptr inbounds ptr, ptr %101, i64 44
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr noundef nonnull align 8 dereferenceable(416) %79, ptr noundef nonnull @.str.5, i32 noundef 0) #15
          to label %104 unwind label %50

104:                                              ; preds = %100, %129
  %105 = phi i32 [ %130, %129 ], [ 0, %100 ]
  %106 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %14, i8 noundef signext 108, i32 noundef %105) #15
          to label %107 unwind label %126

107:                                              ; preds = %104
  %108 = icmp eq ptr %106, null
  br i1 %108, label %109, label %128, !prof !175

109:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  %110 = load ptr, ptr @CFGID_LOAD_LIBS, align 8, !tbaa !167
  %111 = load ptr, ptr %79, align 8, !tbaa !171
  %112 = getelementptr inbounds ptr, ptr %111, i64 30
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %110) #15
          to label %114 unwind label %136

114:                                              ; preds = %109
  %115 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %116 = trunc i64 %115 to i32
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %138, label %131, !prof !180

118:                                              ; preds = %90
  %119 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  tail call void @_ZdlPv(ptr noundef nonnull %79) #18
  br label %347

120:                                              ; preds = %95
  %121 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %124

122:                                              ; preds = %96
  %123 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi { ptr, i32 } [ %123, %122 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #16
  br label %347

126:                                              ; preds = %128, %104
  %127 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %347

128:                                              ; preds = %107
  invoke void @_Z20loadExtensionLibraryPKc(ptr noundef nonnull %106) #15
          to label %129 unwind label %126

129:                                              ; preds = %128
  %130 = add nuw nsw i32 %105, 1
  br label %104, !llvm.loop !181

131:                                              ; preds = %142, %114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #16
  %132 = load ptr, ptr @CFGID_CONFIGURATION_CLASS, align 8, !tbaa !167
  %133 = load ptr, ptr %79, align 8, !tbaa !171
  %134 = getelementptr inbounds ptr, ptr %133, i64 28
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %132, ptr noundef nonnull @.str.6) #15
          to label %150 unwind label %152

136:                                              ; preds = %109
  %137 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %344

138:                                              ; preds = %114, %142
  %139 = phi i64 [ %143, %142 ], [ 0, %114 ]
  %140 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %139) #19
  %141 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %140) #19
  invoke void @_Z20loadExtensionLibraryPKc(ptr noundef %141) #15
          to label %142 unwind label %148

142:                                              ; preds = %138
  %143 = add nuw nsw i64 %139, 1
  %144 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %145 = shl i64 %144, 32
  %146 = ashr exact i64 %145, 32
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %138, label %131, !prof !182, !llvm.loop !183

148:                                              ; preds = %138
  %149 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %341

150:                                              ; preds = %131
  %151 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  br i1 %151, label %200, label %154, !prof !175

152:                                              ; preds = %131
  %153 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %338

154:                                              ; preds = %150
  %155 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  %156 = invoke noundef ptr @_Z9createOnePKc(ptr noundef %155) #15
          to label %157 unwind label %163

157:                                              ; preds = %154
  %158 = icmp eq ptr %156, null
  br i1 %158, label %159, label %167

159:                                              ; preds = %157
  %160 = call ptr @__cxa_allocate_exception(i64 128) #16
  %161 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %160, ptr noundef nonnull @.str.7, ptr noundef %161) #15
          to label %162 unwind label %165

162:                                              ; preds = %159
  invoke void @__cxa_throw(ptr nonnull %160, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
          to label %416 unwind label %163

163:                                              ; preds = %167, %162, %154
  %164 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %335

165:                                              ; preds = %159
  %166 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr %160) #16
  br label %335

167:                                              ; preds = %157
  %168 = load ptr, ptr %156, align 8, !tbaa !171
  %169 = getelementptr inbounds ptr, ptr %168, i64 40
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(8) %156, ptr noundef nonnull %79) #15
          to label %171 unwind label %163

171:                                              ; preds = %167
  %172 = load ptr, ptr %79, align 8, !tbaa !171
  %173 = getelementptr inbounds ptr, ptr %172, i64 4
  %174 = load ptr, ptr %173, align 8
  call void %174(ptr noundef nonnull align 8 dereferenceable(416) %79) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %175 = load ptr, ptr @CFGID_LOAD_LIBS, align 8, !tbaa !167
  %176 = load ptr, ptr %156, align 8, !tbaa !171
  %177 = getelementptr inbounds ptr, ptr %176, i64 30
  %178 = load ptr, ptr %177, align 8
  invoke void %178(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %156, ptr noundef %175) #15
          to label %179 unwind label %184

179:                                              ; preds = %171
  %180 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  %181 = trunc i64 %180 to i32
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %190, %179
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %200

184:                                              ; preds = %171
  %185 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %198

186:                                              ; preds = %179, %190
  %187 = phi i64 [ %191, %190 ], [ 0, %179 ]
  %188 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %187) #19
  %189 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %188) #19
  invoke void @_Z20loadExtensionLibraryPKc(ptr noundef %189) #15
          to label %190 unwind label %196

190:                                              ; preds = %186
  %191 = add nuw nsw i64 %187, 1
  %192 = call noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  %193 = shl i64 %192, 32
  %194 = ashr exact i64 %193, 32
  %195 = icmp slt i64 %191, %194
  br i1 %195, label %186, label %183, !llvm.loop !184

196:                                              ; preds = %186
  %197 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
  br label %198

198:                                              ; preds = %196, %184
  %199 = phi { ptr, i32 } [ %197, %196 ], [ %185, %184 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %335

200:                                              ; preds = %150, %183
  %201 = phi ptr [ %156, %183 ], [ %79, %150 ]
  %202 = phi ptr [ null, %183 ], [ %79, %150 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  %203 = invoke noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps) #15
          to label %204 unwind label %213

204:                                              ; preds = %200
  %205 = load ptr, ptr %203, align 8, !tbaa !171
  %206 = getelementptr inbounds ptr, ptr %205, i64 26
  %207 = load ptr, ptr %206, align 8
  %208 = invoke noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(144) %203, ptr noundef nonnull @.str.8) #15
          to label %209 unwind label %213

209:                                              ; preds = %204
  %210 = icmp eq ptr %208, null
  br i1 %210, label %211, label %215, !prof !176

211:                                              ; preds = %209
  %212 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.9) #15
          to label %215 unwind label %213

213:                                              ; preds = %226, %224, %217, %215, %211, %204, %200
  %214 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %333

215:                                              ; preds = %211, %209
  %216 = invoke noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps) #15
          to label %217 unwind label %213

217:                                              ; preds = %215
  %218 = load ptr, ptr %216, align 8, !tbaa !171
  %219 = getelementptr inbounds ptr, ptr %218, i64 26
  %220 = load ptr, ptr %219, align 8
  %221 = invoke noundef ptr %220(ptr noundef nonnull align 8 dereferenceable(144) %216, ptr noundef nonnull @.str.10) #15
          to label %222 unwind label %213

222:                                              ; preds = %217
  %223 = icmp eq ptr %221, null
  br i1 %223, label %224, label %226, !prof !175

224:                                              ; preds = %222
  %225 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.11) #15
          to label %226 unwind label %213

226:                                              ; preds = %224, %222
  %227 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  %228 = load ptr, ptr %201, align 8, !tbaa !171
  %229 = getelementptr inbounds ptr, ptr %228, i64 42
  %230 = load ptr, ptr %229, align 8
  invoke void %230(ptr noundef nonnull align 8 dereferenceable(8) %201, ptr noundef %227) #15
          to label %231 unwind label %213

231:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #16
  %232 = invoke noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168) %14, i8 noundef signext 117, i32 noundef 0) #15
          to label %233 unwind label %244

233:                                              ; preds = %231
  %234 = call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %232) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %234, ptr noundef nonnull align 1 dereferenceable(1) %10) #15
          to label %235 unwind label %246

235:                                              ; preds = %233
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  %236 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  br i1 %236, label %237, label %250, !prof !175

237:                                              ; preds = %235
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16
  %238 = load ptr, ptr @CFGID_USER_INTERFACE, align 8, !tbaa !167
  %239 = load ptr, ptr %201, align 8, !tbaa !171
  %240 = getelementptr inbounds ptr, ptr %239, i64 28
  %241 = load ptr, ptr %240, align 8
  invoke void %241(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %201, ptr noundef %238, ptr noundef nonnull @.str.6) #15
          to label %242 unwind label %248

242:                                              ; preds = %237
  %243 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  br label %250

244:                                              ; preds = %231
  %245 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %331

246:                                              ; preds = %233
  %247 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #16
  br label %331

248:                                              ; preds = %237
  %249 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  br label %329

250:                                              ; preds = %242, %235
  %251 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  br i1 %251, label %311, label %252, !prof !175

252:                                              ; preds = %250
  %253 = invoke noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps) #15
          to label %254 unwind label %277

254:                                              ; preds = %252
  %255 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  %256 = load ptr, ptr %253, align 8, !tbaa !171
  %257 = getelementptr inbounds ptr, ptr %256, i64 26
  %258 = load ptr, ptr %257, align 8
  %259 = invoke noundef ptr %258(ptr noundef nonnull align 8 dereferenceable(144) %253, ptr noundef %255) #15
          to label %260 unwind label %277

260:                                              ; preds = %254
  %261 = icmp eq ptr %259, null
  br i1 %261, label %262, label %320

262:                                              ; preds = %260
  %263 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  %264 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %263) #15
  %265 = invoke noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps) #15
          to label %266 unwind label %279

266:                                              ; preds = %262, %302
  %267 = phi i32 [ %305, %302 ], [ 0, %262 ]
  %268 = load ptr, ptr %265, align 8, !tbaa !171
  %269 = getelementptr inbounds ptr, ptr %268, i64 23
  %270 = load ptr, ptr %269, align 8
  %271 = invoke noundef i32 %270(ptr noundef nonnull align 8 dereferenceable(144) %265) #15
          to label %272 unwind label %281

272:                                              ; preds = %266
  %273 = icmp slt i32 %267, %271
  br i1 %273, label %283, label %274

274:                                              ; preds = %272
  %275 = call ptr @__cxa_allocate_exception(i64 128) #16
  %276 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %275, ptr noundef nonnull @.str.14, ptr noundef %276) #15
          to label %308 unwind label %309

277:                                              ; preds = %326, %320, %317, %311, %254, %252
  %278 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %329

279:                                              ; preds = %308, %262
  %280 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %329

281:                                              ; preds = %288, %283, %266
  %282 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %329

283:                                              ; preds = %272
  %284 = load ptr, ptr %265, align 8, !tbaa !171
  %285 = getelementptr inbounds ptr, ptr %284, i64 24
  %286 = load ptr, ptr %285, align 8
  %287 = invoke noundef ptr %286(ptr noundef nonnull align 8 dereferenceable(144) %265, i32 noundef %267) #15
          to label %288 unwind label %281

288:                                              ; preds = %283
  %289 = load ptr, ptr %287, align 8, !tbaa !171
  %290 = getelementptr inbounds ptr, ptr %289, i64 6
  %291 = load ptr, ptr %290, align 8
  %292 = invoke noundef ptr %291(ptr noundef nonnull align 8 dereferenceable(20) %287) #15
          to label %293 unwind label %281

293:                                              ; preds = %288
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #16
  %294 = load ptr, ptr %265, align 8, !tbaa !171
  %295 = getelementptr inbounds ptr, ptr %294, i64 24
  %296 = load ptr, ptr %295, align 8
  %297 = invoke noundef ptr %296(ptr noundef nonnull align 8 dereferenceable(144) %265, i32 noundef %267) #15
          to label %298 unwind label %306

298:                                              ; preds = %293
  %299 = load ptr, ptr %297, align 8, !tbaa !171
  %300 = getelementptr inbounds ptr, ptr %299, i64 9
  %301 = load ptr, ptr %300, align 8
  invoke void %301(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %297) #15
          to label %302 unwind label %306

302:                                              ; preds = %298
  %303 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  %304 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %292, ptr noundef %303) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  %305 = add nuw nsw i32 %267, 1
  br label %266, !llvm.loop !185

306:                                              ; preds = %298, %293
  %307 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #16
  br label %329

308:                                              ; preds = %274
  invoke void @__cxa_throw(ptr nonnull %275, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
          to label %416 unwind label %279

309:                                              ; preds = %274
  %310 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr %275) #16
  br label %329

311:                                              ; preds = %250
  %312 = invoke noundef ptr @_ZN21cOmnetAppRegistration10chooseBestEv() #15
          to label %313 unwind label %277

313:                                              ; preds = %311
  %314 = icmp eq ptr %312, null
  br i1 %314, label %315, label %320, !prof !176

315:                                              ; preds = %313
  %316 = call ptr @__cxa_allocate_exception(i64 128) #16
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %316, ptr noundef nonnull @.str.15) #15
          to label %317 unwind label %318

317:                                              ; preds = %315
  invoke void @__cxa_throw(ptr nonnull %316, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #20
          to label %416 unwind label %277

318:                                              ; preds = %315
  %319 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr %316) #16
  br label %329

320:                                              ; preds = %313, %260
  %321 = phi ptr [ %312, %313 ], [ %259, %260 ]
  %322 = load ptr, ptr %321, align 8, !tbaa !171
  %323 = getelementptr inbounds ptr, ptr %322, i64 6
  %324 = load ptr, ptr %323, align 8
  %325 = invoke noundef ptr %324(ptr noundef nonnull align 8 dereferenceable(20) %321) #15
          to label %326 unwind label %277

326:                                              ; preds = %320
  %327 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %325) #15
  %328 = invoke noundef ptr @_ZN21cOmnetAppRegistration9createOneEv(ptr noundef nonnull align 8 dereferenceable(84) %321) #15
          to label %372 unwind label %277

329:                                              ; preds = %277, %318, %281, %306, %309, %279, %248
  %330 = phi { ptr, i32 } [ %249, %248 ], [ %278, %277 ], [ %319, %318 ], [ %280, %279 ], [ %310, %309 ], [ %307, %306 ], [ %282, %281 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  br label %331

331:                                              ; preds = %329, %246, %244
  %332 = phi { ptr, i32 } [ %330, %329 ], [ %247, %246 ], [ %245, %244 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  br label %333

333:                                              ; preds = %331, %213
  %334 = phi { ptr, i32 } [ %332, %331 ], [ %214, %213 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  br label %335

335:                                              ; preds = %163, %165, %198, %333
  %336 = phi { ptr, i32 } [ %334, %333 ], [ %199, %198 ], [ %164, %163 ], [ %166, %165 ]
  %337 = phi ptr [ %202, %333 ], [ null, %198 ], [ %79, %163 ], [ %79, %165 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  br label %338

338:                                              ; preds = %335, %152
  %339 = phi { ptr, i32 } [ %336, %335 ], [ %153, %152 ]
  %340 = phi ptr [ %337, %335 ], [ %79, %152 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  br label %341

341:                                              ; preds = %338, %148
  %342 = phi { ptr, i32 } [ %149, %148 ], [ %339, %338 ]
  %343 = phi ptr [ %79, %148 ], [ %340, %338 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  br label %344

344:                                              ; preds = %341, %136
  %345 = phi { ptr, i32 } [ %342, %341 ], [ %137, %136 ]
  %346 = phi ptr [ %343, %341 ], [ %79, %136 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  br label %347

347:                                              ; preds = %80, %82, %28, %126, %344, %124, %118, %62, %53, %50, %26, %23
  %348 = phi { ptr, i32 } [ %25, %23 ], [ %27, %26 ], [ %29, %28 ], [ %63, %62 ], [ %52, %50 ], [ %125, %124 ], [ %119, %118 ], [ %54, %53 ], [ %127, %126 ], [ %345, %344 ], [ %81, %80 ], [ %83, %82 ]
  %349 = phi ptr [ null, %23 ], [ null, %26 ], [ null, %28 ], [ null, %62 ], [ %51, %50 ], [ %79, %124 ], [ null, %118 ], [ null, %53 ], [ %79, %126 ], [ %346, %344 ], [ null, %80 ], [ null, %82 ]
  %350 = phi ptr [ %24, %23 ], [ null, %26 ], [ %14, %28 ], [ %14, %62 ], [ %14, %50 ], [ %14, %124 ], [ %14, %118 ], [ %14, %53 ], [ %14, %126 ], [ %14, %344 ], [ %14, %80 ], [ %14, %82 ]
  %351 = extractvalue { ptr, i32 } %348, 1
  %352 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %414

354:                                              ; preds = %347
  %355 = extractvalue { ptr, i32 } %348, 0
  %356 = call ptr @__cxa_begin_catch(ptr %355) #16
  %357 = load ptr, ptr @stderr, align 8, !tbaa !167
  %358 = load ptr, ptr %356, align 8, !tbaa !171
  %359 = getelementptr inbounds ptr, ptr %358, i64 2
  %360 = load ptr, ptr %359, align 8
  %361 = call noundef ptr %360(ptr noundef nonnull align 8 dereferenceable(8) %356) #19
  %362 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %357, ptr noundef nonnull @.str.17, ptr noundef %361) #21
  %363 = icmp eq ptr %350, null
  br i1 %363, label %365, label %364

364:                                              ; preds = %354
  call void @_ZN7ArgListD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %350) #19
  call void @_ZdlPv(ptr noundef nonnull %350) #18
  br label %365

365:                                              ; preds = %364, %354
  %366 = icmp eq ptr %349, null
  br i1 %366, label %371, label %367

367:                                              ; preds = %365
  %368 = load ptr, ptr %349, align 8, !tbaa !171
  %369 = getelementptr inbounds ptr, ptr %368, i64 4
  %370 = load ptr, ptr %369, align 8
  call void %370(ptr noundef nonnull align 8 dereferenceable(416) %349) #19
  br label %371

371:                                              ; preds = %367, %365
  call void @__cxa_end_catch()
  br label %395

372:                                              ; preds = %326
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #16
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  %373 = icmp eq ptr %328, null
  br i1 %373, label %395, label %374, !prof !186

374:                                              ; preds = %372
  %375 = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #17
          to label %376 unwind label %384

376:                                              ; preds = %374
  invoke void @_ZN11cSimulationC1EPKcP6cEnvir(ptr noundef nonnull align 8 dereferenceable(224) %375, ptr noundef nonnull @.str.18, ptr noundef nonnull %328) #15
          to label %377 unwind label %387

377:                                              ; preds = %376
  invoke void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef nonnull %375) #15
          to label %378 unwind label %384

378:                                              ; preds = %377
  %379 = load ptr, ptr %328, align 8, !tbaa !171
  %380 = getelementptr inbounds ptr, ptr %379, i64 57
  %381 = load ptr, ptr %380, align 8
  %382 = invoke noundef i32 %381(ptr noundef nonnull align 8 dereferenceable(288) %328, i32 noundef %0, ptr noundef %1, ptr noundef nonnull %201) #15
          to label %383 unwind label %384

383:                                              ; preds = %378
  call void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef null) #15
  br label %406

384:                                              ; preds = %378, %377, %374
  %385 = phi ptr [ %375, %378 ], [ %375, %377 ], [ null, %374 ]
  %386 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %389

387:                                              ; preds = %376
  %388 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPv(ptr noundef nonnull %375) #18
  br label %389

389:                                              ; preds = %387, %384
  %390 = phi { ptr, i32 } [ %386, %384 ], [ %388, %387 ]
  %391 = phi ptr [ %385, %384 ], [ null, %387 ]
  %392 = extractvalue { ptr, i32 } %390, 1
  %393 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #16
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %396, label %414

395:                                              ; preds = %372, %371
  call void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef null) #15
  br label %412

396:                                              ; preds = %389
  %397 = extractvalue { ptr, i32 } %390, 0
  %398 = call ptr @__cxa_begin_catch(ptr %397) #16
  %399 = load ptr, ptr @stderr, align 8, !tbaa !167
  %400 = load ptr, ptr %398, align 8, !tbaa !171
  %401 = getelementptr inbounds ptr, ptr %400, i64 2
  %402 = load ptr, ptr %401, align 8
  %403 = call noundef ptr %402(ptr noundef nonnull align 8 dereferenceable(8) %398) #19
  %404 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %399, ptr noundef nonnull @.str.19, ptr noundef %403) #21
  call void @__cxa_end_catch()
  call void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef null) #15
  %405 = icmp eq ptr %391, null
  br i1 %405, label %412, label %406

406:                                              ; preds = %383, %396
  %407 = phi ptr [ %375, %383 ], [ %391, %396 ]
  %408 = phi i32 [ %382, %383 ], [ 1, %396 ]
  %409 = load ptr, ptr %407, align 8, !tbaa !171
  %410 = getelementptr inbounds ptr, ptr %409, i64 4
  %411 = load ptr, ptr %410, align 8
  call void %411(ptr noundef nonnull align 8 dereferenceable(224) %407) #19
  br label %412

412:                                              ; preds = %395, %406, %396
  %413 = phi i32 [ 1, %395 ], [ %408, %406 ], [ 1, %396 ]
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @componentTypes) #15
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions) #15
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @classes) #15
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @enums) #15
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @classDescriptors) #15
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @configOptions) #15
  call void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16) @omnetapps) #15
  call void @_ZN11cSimulation19clearLoadedNedFilesEv() #15
  ret i32 %413

414:                                              ; preds = %389, %347
  %415 = phi { ptr, i32 } [ %390, %389 ], [ %348, %347 ]
  resume { ptr, i32 } %415

416:                                              ; preds = %317, %308, %162
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN16ExecuteOnStartup10executeAllEv() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZL14verifyIntTypesv() unnamed_addr #6 !prof !165 !PGOFuncName !187 {
  %1 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #16
  %2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.26, i64 noundef 1, i64 noundef 2) #19
  %3 = load i32, ptr %1, align 16
  %4 = icmp eq i32 %3, 3285041
  br i1 %4, label %7, label %5, !prof !175

5:                                                ; preds = %0
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @abort() #22
  unreachable

7:                                                ; preds = %0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #16
  ret void
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN7ArgListC1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN7ArgList5parseEiPPcPKc(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7ArgList11optionValueEci(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK7ArgList8argumentEi(ptr noundef nonnull align 8 dereferenceable(168), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN13InifileReaderC1Ev(ptr noundef nonnull align 8 dereferenceable(192)) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK7ArgList11optionGivenEc(ptr noundef nonnull align 8 dereferenceable(168), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_Z10fileExistsPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN25SectionBasedConfigurationC1Ev(ptr noundef nonnull align 8 dereferenceable(416)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK7ArgList14getLongOptionsB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map.3") align 8, ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !188 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret void
}

; Function Attrs: optsize
declare void @_Z20loadExtensionLibraryPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !189 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !190
  %4 = load ptr, ptr %0, align 8, !tbaa !192
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !193 {
  %3 = load ptr, ptr %0, align 8, !tbaa !192
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z9createOnePKc(ptr noundef %0) local_unnamed_addr #4 comdat !prof !194 {
  %2 = tail call noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef %0) #15
  ret ptr %2
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !192
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %0) local_unnamed_addr #6 comdat !prof !196 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str.6, ptr %0, !prof !197
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #24
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
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef ptr @_ZN21cOmnetAppRegistration10chooseBestEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN21cOmnetAppRegistration9createOneEv(ptr noundef nonnull align 8 dereferenceable(84) %0) local_unnamed_addr #4 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %class.cOmnetAppRegistration, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = tail call noundef ptr %3() #15
  ret ptr %4
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7ArgListD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %3 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 4
  tail call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #19
  %4 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 3
  tail call void @_ZNSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  %5 = getelementptr inbounds %class.ArgList, ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11cSimulationC1EPKcP6cEnvir(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11cSimulation19setActiveSimulationEPS_(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN23cGlobalRegistrationList5clearEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11cSimulation19clearLoadedNedFilesEv() local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z18env_dummy_functionv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !208 {
  %1 = alloca %class.Speedometer, align 8
  %2 = alloca %class.cFileOutputVectorManager, align 8
  %3 = alloca %class.cFileOutputScalarManager, align 8
  %4 = alloca %class.cFileSnapshotManager, align 8
  %5 = alloca %class.cIndexedFileOutputVectorManager, align 8
  %6 = alloca %class.MatchableObjectAdapter, align 8
  %7 = tail call noundef double @_Z11exponentialdi(double noundef 1.000000e+00, i32 noundef 0) #15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #16
  call void @_ZN11SpeedometerC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %2) #16
  call void @_ZN24cFileOutputVectorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #15
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #16
  invoke void @_ZN24cFileOutputScalarManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #15
          to label %8 unwind label %12

8:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  invoke void @_ZN20cFileSnapshotManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
          to label %9 unwind label %14

9:                                                ; preds = %8
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %5) #16
  invoke void @_ZN31cIndexedFileOutputVectorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #15
          to label %10 unwind label %16

10:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  invoke void @_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 1, ptr noundef null) #15
          to label %11 unwind label %18

11:                                               ; preds = %10
  call void @_ZN22MatchableObjectAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @_ZN31cIndexedFileOutputVectorManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #19
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %5) #16
  call void @_ZN20cFileSnapshotManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @_ZN24cFileOutputScalarManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #16
  call void @_ZN24cFileOutputVectorManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #19
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #16
  ret void

12:                                               ; preds = %0
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %24

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %22

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  call void @_ZN31cIndexedFileOutputVectorManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #19
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %5) #16
  call void @_ZN20cFileSnapshotManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @_ZN24cFileOutputScalarManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(140) %3) #19
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #16
  call void @_ZN24cFileOutputVectorManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(148) %2) #19
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #16
  resume { ptr, i32 } %25
}

; Function Attrs: optsize
declare noundef double @_Z11exponentialdi(double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11SpeedometerC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN24cFileOutputVectorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN24cFileOutputScalarManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN20cFileSnapshotManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN31cIndexedFileOutputVectorManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22MatchableObjectAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !171
  %2 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN31cIndexedFileOutputVectorManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #6 comdat align 2 {
  store ptr getelementptr inbounds ({ [36 x ptr] }, ptr @_ZTV31cIndexedFileOutputVectorManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !171
  %2 = getelementptr inbounds %class.cIndexedFileOutputVectorManager, ptr %0, i64 0, i32 5
  tail call void @_ZNSt6vectorIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %3 = getelementptr inbounds %class.cIndexedFileOutputVectorManager, ptr %0, i64 0, i32 1
  tail call void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  tail call void @_ZN24cFileOutputVectorManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) #19
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN20cFileSnapshotManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN24cFileOutputScalarManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN24cFileOutputVectorManagerD1Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !188 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #15
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #23
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !209 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !210

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #19
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #15
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #19
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !211, !llvm.loop !212

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !213 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !214 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !215 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !219 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !221 {
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #15
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !221 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #15
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !221 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !222 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #6 comdat align 2 !prof !223 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !221 {
  tail call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !223 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !223 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !221 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN13cClassFactory9createOneEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !165 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !171
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
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #19
  tail call void @_ZdlPv(ptr noundef nonnull %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #17
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #15
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
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !226
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !208 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.29) #15
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #15
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !230, !range !231, !noundef !232
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !233
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #6 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat !prof !234 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #4 comdat !prof !235 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !165 {
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  invoke void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #15
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #23
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !236 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4, !prof !237

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #19
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #15
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #19
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !prof !238, !llvm.loop !239

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !240 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !165 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !188 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #6 comdat align 2 !prof !234 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !220
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !234 {
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  tail call void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !234 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #15
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !234 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #15
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !234 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !241 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #6 comdat align 2 !prof !242 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node.72", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !234 {
  tail call void @_ZNSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::pair.74", ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !242 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !242 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !234 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE10deallocateEPSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE10deallocateEPSD_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !240 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !208 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = load ptr, ptr %0, align 8, !tbaa !243
  %3 = getelementptr inbounds %"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !245
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorES2_EvT_S4_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #15
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10opp_stringD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !246 {
  %2 = load ptr, ptr %0, align 8, !tbaa !247
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN24cFileOutputVectorManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !234 {
  tail call void @_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorEEvT_S4_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !249 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %2 = load ptr, ptr %0, align 8, !tbaa !243
  %3 = getelementptr inbounds %"struct.std::_Vector_base<cIndexedFileOutputVectorManager::sVector *, std::allocator<cIndexedFileOutputVectorManager::sVector *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !250
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIPN31cIndexedFileOutputVectorManager7sVectorEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #23
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !234 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN31cIndexedFileOutputVectorManager7sVectorEEEvT_S6_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN31cIndexedFileOutputVectorManager7sVectorEEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !234 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !251 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !252

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIPN31cIndexedFileOutputVectorManager7sVectorEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPN31cIndexedFileOutputVectorManager7sVectorEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !165 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPN31cIndexedFileOutputVectorManager7sVectorEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !253 {
  tail call void @_ZNSt15__new_allocatorIPN31cIndexedFileOutputVectorManager7sVectorEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPN31cIndexedFileOutputVectorManager7sVectorEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !254 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #6 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !255 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  store i64 %6, ptr %4, align 8, !tbaa !256
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !257

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #15
  %10 = load i64, ptr %4, align 8, !tbaa !256
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #15
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #19
  store ptr null, ptr %5, align 8, !tbaa !258
  %15 = load i64, ptr %4, align 8, !tbaa !256
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #15
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !255 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !167
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !255 {
  store ptr %1, ptr %0, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !255 {
  %2 = load ptr, ptr %0, align 8, !tbaa !258
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !260

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !255 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !255 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !262 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !192
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !263
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 5
  invoke void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #15
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #23
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat !prof !261 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !261 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !264

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %5) #15
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !265, !llvm.loop !266

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !267 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !268 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !269

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #15
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !195 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !270 {
  tail call void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_startup.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { builtin optsize allocsize(0) }
attributes #18 = { builtin nounwind optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { noreturn }
attributes #21 = { cold optsize }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { noreturn nounwind }
attributes #24 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!164}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!35 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_41Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!36 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_41Ev, ptr @_Znwm, i64 1}
!37 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_41Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!38 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!39 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_Znwm, i64 1}
!40 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_42Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!41 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 1}
!42 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_Znwm, i64 1}
!43 = !{ptr @_ZN12_GLOBAL__N_119__onstartup_func_43Ev, ptr @_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_, i64 1}
!44 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN16ExecuteOnStartup10executeAllEv, i64 1}
!45 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZL14verifyIntTypesv, i64 1}
!46 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_Znwm, i64 4}
!47 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN7ArgListC1Ev, i64 1}
!48 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN7ArgList5parseEiPPcPKc, i64 1}
!49 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNK7ArgList11optionValueEci, i64 5}
!50 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNK7ArgList8argumentEi, i64 2}
!51 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN13InifileReaderC1Ev, i64 1}
!52 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNK7ArgList11optionGivenEc, i64 2}
!53 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_Z10fileExistsPKc, i64 1}
!54 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN25SectionBasedConfigurationC1Ev, i64 1}
!55 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNK7ArgList14getLongOptionsB5cxx11Ev, i64 1}
!56 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, i64 1}
!57 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE4sizeEv, i64 8}
!58 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv, i64 3}
!59 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm, i64 7}
!60 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 8}
!61 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_Z20loadExtensionLibraryPKc, i64 7}
!62 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 1}
!63 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 2}
!64 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc, i64 1}
!65 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_Z15opp_nulltoemptyPKc, i64 1}
!66 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSaIcEC2Ev, i64 1}
!67 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 1}
!68 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt15__new_allocatorIcED2Ev, i64 1}
!69 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_, i64 1}
!70 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 4}
!71 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN21cOmnetAppRegistration10chooseBestEv, i64 1}
!72 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @printf, i64 1}
!73 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN21cOmnetAppRegistration9createOneEv, i64 1}
!74 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 1}
!75 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN11cSimulationC1EPKcP6cEnvir, i64 1}
!76 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN11cSimulation19setActiveSimulationEPS_, i64 2}
!77 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN23cGlobalRegistrationList5clearEv, i64 7}
!78 = !{ptr @_Z18setupUserInterfaceiPPcP14cConfiguration, ptr @_ZN11cSimulation19clearLoadedNedFilesEv, i64 1}
!79 = !{ptr @_ZL14verifyIntTypesv, ptr @sprintf, i64 1}
!80 = !{ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, i64 4}
!81 = !{ptr @_Z9createOnePKc, ptr @_ZN13cClassFactory9createOneEPKc, i64 6}
!82 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv, i64 606}
!83 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, i64 606}
!84 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 606}
!85 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, i64 4}
!86 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 4}
!87 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEED2Ev, i64 4}
!88 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_S_rightEPSt18_Rb_tree_node_base, i64 33}
!89 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, i64 33}
!90 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_S_leftEPSt18_Rb_tree_node_base, i64 33}
!91 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, i64 33}
!92 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE9_M_mbeginEv, i64 293}
!93 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, i64 33}
!94 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, i64 33}
!95 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 33}
!96 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, i64 33}
!97 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, i64 33}
!98 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE21_M_get_Node_allocatorEv, i64 33}
!99 = !{ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS8_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, i64 33}
!100 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE7destroyIS9_EEvRSB_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, i64 33}
!101 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, i64 127}
!102 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE7destroyIS9_EEvPT_, ptr @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, i64 33}
!103 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EE7_M_addrEv, i64 127}
!104 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEE10deallocateERSB_PSA_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEE10deallocateEPSA_m, i64 33}
!105 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!106 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!107 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!108 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!109 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!110 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!111 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!112 = !{ptr @_ZNSt3mapIcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessIcESaISt4pairIKcS8_EEED2Ev, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev, i64 1}
!113 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv, i64 1}
!114 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, i64 1}
!115 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EED2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEED2Ev, i64 1}
!116 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_S_rightEPSt18_Rb_tree_node_base, i64 2}
!117 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, i64 2}
!118 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE7_S_leftEPSt18_Rb_tree_node_base, i64 2}
!119 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E, i64 2}
!120 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE9_M_mbeginEv, i64 7}
!121 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E, i64 2}
!122 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E, i64 2}
!123 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv, i64 2}
!124 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv, i64 2}
!125 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_, i64 2}
!126 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE21_M_get_Node_allocatorEv, i64 2}
!127 = !{ptr @_ZNSt8_Rb_treeIcSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessIcESaISB_EE11_M_put_nodeEPSt13_Rb_tree_nodeISB_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m, i64 2}
!128 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE7destroyISC_EEvRSE_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_, i64 2}
!129 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv, i64 10}
!130 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE7destroyISC_EEvPT_, ptr @_ZNSt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED2Ev, i64 2}
!131 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEE7_M_addrEv, i64 10}
!132 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEEE10deallocateERSE_PSD_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKcSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEE10deallocateEPSD_m, i64 2}
!133 = !{ptr @_ZNSt6vectorIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE19_M_get_Tp_allocatorEv, i64 1}
!134 = !{ptr @_ZNSt6vectorIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev, ptr @_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorES2_EvT_S4_RSaIT0_E, i64 1}
!135 = !{ptr @_ZNSt6vectorIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev, i64 1}
!136 = !{ptr @_ZN10opp_stringD2Ev, ptr @_ZdaPv, i64 277850}
!137 = !{ptr @_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorES2_EvT_S4_RSaIT0_E, ptr @_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorEEvT_S4_, i64 2}
!138 = !{ptr @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev, ptr @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE13_M_deallocateEPS2_m, i64 1}
!139 = !{ptr @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EED2Ev, ptr @_ZNSt15__new_allocatorIPN31cIndexedFileOutputVectorManager7sVectorEED2Ev, i64 1}
!140 = !{ptr @_ZSt8_DestroyIPPN31cIndexedFileOutputVectorManager7sVectorEEvT_S4_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPPN31cIndexedFileOutputVectorManager7sVectorEEEvT_S6_, i64 2}
!141 = !{ptr @_ZNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE13_M_deallocateEPS2_m, ptr @_ZNSt16allocator_traitsISaIPN31cIndexedFileOutputVectorManager7sVectorEEE10deallocateERS3_PS2_m, i64 17}
!142 = !{ptr @_ZNSt16allocator_traitsISaIPN31cIndexedFileOutputVectorManager7sVectorEEE10deallocateERS3_PS2_m, ptr @_ZNSt15__new_allocatorIPN31cIndexedFileOutputVectorManager7sVectorEE10deallocateEPS2_m, i64 18}
!143 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!144 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!145 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!146 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!147 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!148 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!149 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!150 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!151 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!152 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!153 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!154 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!155 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!156 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, i64 610}
!157 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, i64 606}
!158 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, i64 606}
!159 = !{ptr @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, i64 610}
!160 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_, ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, i64 1918}
!161 = !{ptr @_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 1920}
!162 = !{ptr @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m, ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, i64 1137}
!163 = !{ptr @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateERS6_PS5_m, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE10deallocateEPS5_m, i64 1137}
!164 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!165 = !{!"function_entry_count", i64 1}
!166 = !{!"startup.cc:_ZN12_GLOBAL__N_119__onstartup_func_41Ev"}
!167 = !{!168, !168, i64 0}
!168 = !{!"any pointer", !169, i64 0}
!169 = !{!"omnipotent char", !170, i64 0}
!170 = !{!"Simple C++ TBAA"}
!171 = !{!172, !172, i64 0}
!172 = !{!"vtable pointer", !170, i64 0}
!173 = !{!"startup.cc:_ZN12_GLOBAL__N_119__onstartup_func_42Ev"}
!174 = !{!"startup.cc:_ZN12_GLOBAL__N_119__onstartup_func_43Ev"}
!175 = !{!"branch_weights", i32 2, i32 1}
!176 = !{!"branch_weights", i32 1, i32 2}
!177 = distinct !{!177, !178}
!178 = !{!"llvm.loop.mustprogress"}
!179 = distinct !{!179, !178}
!180 = !{!"branch_weights", i32 1, i32 1}
!181 = distinct !{!181, !178}
!182 = !{!"branch_weights", i32 0, i32 1}
!183 = distinct !{!183, !178}
!184 = distinct !{!184, !178}
!185 = distinct !{!185, !178}
!186 = !{!"branch_weights", i32 691761468, i32 1455722180}
!187 = !{!"startup.cc:_ZL14verifyIntTypesv"}
!188 = !{!"function_entry_count", i64 4}
!189 = !{!"function_entry_count", i64 105782}
!190 = !{!191, !168, i64 8}
!191 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !168, i64 0, !168, i64 8, !168, i64 16}
!192 = !{!191, !168, i64 0}
!193 = !{!"function_entry_count", i64 2163}
!194 = !{!"function_entry_count", i64 6}
!195 = !{!"function_entry_count", i64 606}
!196 = !{!"function_entry_count", i64 425}
!197 = !{!"branch_weights", i32 4, i32 423}
!198 = !{!199, !168, i64 40}
!199 = !{!"_ZTS21cOmnetAppRegistration", !200, i64 0, !168, i64 40, !205, i64 48, !204, i64 80}
!200 = !{!"_ZTS12cOwnedObject", !201, i64 0, !168, i64 24, !204, i64 32}
!201 = !{!"_ZTS12cNamedObject", !202, i64 0, !168, i64 8, !203, i64 16, !203, i64 18}
!202 = !{!"_ZTS7cObject"}
!203 = !{!"short", !169, i64 0}
!204 = !{!"int", !169, i64 0}
!205 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !206, i64 0, !207, i64 8, !169, i64 16}
!206 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !168, i64 0}
!207 = !{!"long", !169, i64 0}
!208 = !{!"function_entry_count", i64 0}
!209 = !{!"function_entry_count", i64 41}
!210 = !{!"branch_weights", i32 8, i32 34}
!211 = !{!"branch_weights", i32 34, i32 0}
!212 = distinct !{!212, !178}
!213 = !{!"function_entry_count", i64 293}
!214 = !{!"function_entry_count", i64 5}
!215 = !{!"function_entry_count", i64 101}
!216 = !{!217, !168, i64 24}
!217 = !{!"_ZTSSt18_Rb_tree_node_base", !218, i64 0, !168, i64 8, !168, i64 16, !168, i64 24}
!218 = !{!"_ZTSSt14_Rb_tree_color", !169, i64 0}
!219 = !{!"function_entry_count", i64 323}
!220 = !{!217, !168, i64 16}
!221 = !{!"function_entry_count", i64 33}
!222 = !{!"function_entry_count", i64 134}
!223 = !{!"function_entry_count", i64 127}
!224 = !{!225, !168, i64 8}
!225 = !{!"_ZTSSt15_Rb_tree_header", !217, i64 0, !207, i64 32}
!226 = !{!227, !204, i64 8}
!227 = !{!"_ZTS10cException", !228, i64 0, !204, i64 8, !205, i64 16, !229, i64 48, !205, i64 56, !205, i64 88, !204, i64 120}
!228 = !{!"_ZTSSt9exception"}
!229 = !{!"bool", !169, i64 0}
!230 = !{!227, !229, i64 48}
!231 = !{i8 0, i8 2}
!232 = !{}
!233 = !{!227, !204, i64 120}
!234 = !{!"function_entry_count", i64 2}
!235 = !{!"function_entry_count", i64 2107073}
!236 = !{!"function_entry_count", i64 3}
!237 = !{!"branch_weights", i32 1, i32 3}
!238 = !{!"branch_weights", i32 3, i32 0}
!239 = distinct !{!239, !178}
!240 = !{!"function_entry_count", i64 7}
!241 = !{!"function_entry_count", i64 12}
!242 = !{!"function_entry_count", i64 10}
!243 = !{!244, !168, i64 0}
!244 = !{!"_ZTSNSt12_Vector_baseIPN31cIndexedFileOutputVectorManager7sVectorESaIS2_EE17_Vector_impl_dataE", !168, i64 0, !168, i64 8, !168, i64 16}
!245 = !{!244, !168, i64 8}
!246 = !{!"function_entry_count", i64 444560}
!247 = !{!248, !168, i64 0}
!248 = !{!"_ZTS10opp_string", !168, i64 0}
!249 = !{!"function_entry_count", i64 38}
!250 = !{!244, !168, i64 16}
!251 = !{!"function_entry_count", i64 19}
!252 = !{!"branch_weights", i32 2, i32 19}
!253 = !{!"function_entry_count", i64 18}
!254 = !{!"function_entry_count", i64 1891507}
!255 = !{!"function_entry_count", i64 1889443}
!256 = !{!207, !207, i64 0}
!257 = !{!"branch_weights", i32 1257663, i32 631782}
!258 = !{!259, !168, i64 0}
!259 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !168, i64 0}
!260 = !{!"branch_weights", i32 1889444, i32 1}
!261 = !{!"function_entry_count", i64 610}
!262 = !{!"function_entry_count", i64 2888}
!263 = !{!191, !168, i64 16}
!264 = !{!"branch_weights", i32 1, i32 610}
!265 = !{!"branch_weights", i32 610, i32 1311}
!266 = distinct !{!266, !178}
!267 = !{!"function_entry_count", i64 1920}
!268 = !{!"function_entry_count", i64 1745}
!269 = !{!"branch_weights", i32 609, i32 1138}
!270 = !{!"function_entry_count", i64 1137}
