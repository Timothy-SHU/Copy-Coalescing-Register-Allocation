; ModuleID = 'blender/extern/rangetree/range_tree_c_api.cc'
source_filename = "blender/extern/rangetree/range_tree_c_api.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.RangeTree<unsigned int>::Range" = type <{ i32, i32, i8, [3 x i8] }>
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Rb_tree_node" = type <{ %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf", [4 x i8] }>
%"struct.__gnu_cxx::__aligned_membuf" = type { [12 x i8] }
%"struct.std::pair" = type <{ %"struct.std::_Rb_tree_const_iterator", i8, [7 x i8] }>
%"struct.std::pair.0" = type <{ %"struct.std::_Rb_tree_iterator", i8, [7 x i8] }>
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Identity" = type { i8 }
%"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Alloc_node" = type { ptr }
%"struct.std::pair.3" = type { ptr, ptr }
%"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }

$_ZN9RangeTreeIjEC2Ejj = comdat any

$_ZN9RangeTreeIjEC2ERKS0_ = comdat any

$_ZN9RangeTreeIjED2Ev = comdat any

$_ZN9RangeTreeIjE4takeEj = comdat any

$_ZN9RangeTreeIjE6retakeEj = comdat any

$_ZN9RangeTreeIjE8take_anyEv = comdat any

$_ZN9RangeTreeIjE7releaseEj = comdat any

$_ZNK9RangeTreeIjE3hasEj = comdat any

$_ZNK9RangeTreeIjE9has_rangeEjj = comdat any

$_ZNK9RangeTreeIjE5emptyEv = comdat any

$_ZNK9RangeTreeIjE4sizeEv = comdat any

$_ZNK9RangeTreeIjE5printEv = comdat any

$_ZNK9RangeTreeIjE22allocation_lower_boundEv = comdat any

$_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EED2Ev = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEED2Ev = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE7destroyIS3_EEvRS5_PT_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE7destroyIS3_EEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE10deallocateERS5_PS4_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE10deallocateEPS4_m = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE9_M_mbeginEv = comdat any

$_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EEC2Ev = comdat any

$_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_ = comdat any

$_ZN9RangeTreeIjE5RangeC2Ejj = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEC2Ev = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareISt4lessIN9RangeTreeIjE5RangeEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_ = comdat any

$_ZNSt4pairISt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEbEC2IRSt17_Rb_tree_iteratorIS3_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_ = comdat any

$_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERS2_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeC2ERS8_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_ = comdat any

$_ZNSt4pairISt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEbEC2IS4_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_ = comdat any

$_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv = comdat any

$_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEES5_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_ = comdat any

$_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEmmEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_ = comdat any

$_ZNK9RangeTreeIjE5RangeltERKS1_ = comdat any

$_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERKS2_ = comdat any

$_ZNKSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE7_M_addrEv = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeclIS2_EEPSt13_Rb_tree_nodeIS2_EOT_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_create_nodeIJS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE8allocateERS5_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE9constructIS3_JS3_EEEvRS5_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE9constructIS3_JS3_EEEvPT_DpOT0_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2ERKSt17_Rb_tree_iteratorIS2_E = comdat any

$_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EEaSERKS6_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEaSERKS8_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_ = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_rootEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT0_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_rootEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_rightmostEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_leftmostEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE9constructIS3_JRKS3_EEEvPT_DpOT0_ = comdat any

$_ZNSt18_Rb_tree_node_base10_S_minimumEPS_ = comdat any

$_ZNSt18_Rb_tree_node_base10_S_maximumEPS_ = comdat any

$_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4findERKS2_ = comdat any

$_ZN9RangeTreeIjE5RangeC2Ej = comdat any

$_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEdeEv = comdat any

$_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4findERKS2_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E = comdat any

$_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEppEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_E = comdat any

$_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEE13_M_const_castEv = comdat any

$_ZSteqRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_ = comdat any

$_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5beginEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5beginEv = comdat any

$_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE11upper_boundERKS2_ = comdat any

$_ZStneRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEmmEv = comdat any

$_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertERKS2_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEmmEi = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11upper_boundERKS2_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_ = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_ = comdat any

$_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4findERKS2_ = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4findERKS2_ = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_ = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5emptyEv = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5emptyEv = comdat any

$_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4sizeEv = comdat any

$_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4sizeEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [12 x i8] c"RangeTree:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"  [\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"  <empty>\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_range_tree_c_api.cc, ptr null }]

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @range_tree_uint_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %3 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
  invoke void @_ZN9RangeTreeIjEC2Ejj(ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef %0, i32 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret ptr %3

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %3) #17
  resume { ptr, i32 } %6
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjEC2Ejj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  tail call void @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %4, i32 noundef %1, i32 noundef %2) #14
  %5 = invoke { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %4) #14
          to label %6 unwind label %7

6:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @range_tree_uint_copy(ptr noundef %0) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
  invoke void @_ZN9RangeTreeIjEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #17
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %3 = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @range_tree_uint_free(ptr noundef %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @_ZN9RangeTreeIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @range_tree_uint_take(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #4 {
  tail call void @_ZN9RangeTreeIjE4takeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjE4takeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %5 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %6 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ej(ptr noundef nonnull align 4 dereferenceable(9) %4, i32 noundef %1) #14
  %7 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %4) #14
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  %8 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %9 = load i32, ptr %8, align 4, !tbaa.struct !34
  %10 = getelementptr inbounds i8, ptr %8, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa.struct !41
  %12 = load ptr, ptr %3, align 8, !tbaa.struct !42
  %13 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %12) #14
  %14 = icmp ult i32 %9, %1
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  %16 = add i32 %1, -1
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %5, i32 noundef %9, i32 noundef %16) #14
  %17 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  br label %18

18:                                               ; preds = %15, %2
  %19 = add i32 %1, 1
  %20 = icmp ugt i32 %19, %11
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %6, i32 noundef %19, i32 noundef %11) #14
  %22 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %23

23:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @range_tree_uint_retake(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = tail call noundef zeroext i1 @_ZN9RangeTreeIjE6retakeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9RangeTreeIjE6retakeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %7 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ej(ptr noundef nonnull align 4 dereferenceable(9) %4, i32 noundef %1) #14
  %8 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %4) #14
  store ptr %8, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %9 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %9, ptr %5, align 8
  %10 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %13 = load i32, ptr %12, align 4, !tbaa.struct !34
  %14 = getelementptr inbounds i8, ptr %12, i64 4
  %15 = load i32, ptr %14, align 4, !tbaa.struct !41
  %16 = load ptr, ptr %3, align 8, !tbaa.struct !42
  %17 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %16) #14
  %18 = icmp ult i32 %13, %1
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  %20 = add i32 %1, -1
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %6, i32 noundef %13, i32 noundef %20) #14
  %21 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  br label %22

22:                                               ; preds = %19, %11
  %23 = add i32 %1, 1
  %24 = icmp ugt i32 %23, %15
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %7, i32 noundef %23, i32 noundef %15) #14
  %26 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %7) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #15
  br label %27

27:                                               ; preds = %22, %25, %2
  %28 = xor i1 %10, true
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i1 %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @range_tree_uint_take_any(ptr noundef nonnull %0) local_unnamed_addr #4 {
  %2 = tail call noundef i32 @_ZN9RangeTreeIjE8take_anyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN9RangeTreeIjE8take_anyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %3 = tail call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %3, ptr %2, align 8
  %4 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %5 = load i32, ptr %4, align 4, !tbaa !45
  call void @_ZN9RangeTreeIjE4takeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @range_tree_uint_release(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #4 {
  tail call void @_ZN9RangeTreeIjE7releaseEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjE7releaseEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %8 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %9 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %10 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %11 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %12 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %13 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %14 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %15 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ej(ptr noundef nonnull align 4 dereferenceable(9) %4, i32 noundef %1) #14
  %16 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE11upper_boundERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %4) #14
  store ptr %16, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %17 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %17, ptr %5, align 8
  %18 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br i1 %18, label %19, label %90

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %20 = load i64, ptr %3, align 8, !tbaa !43
  store i64 %20, ptr %6, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %21 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %21, ptr %7, align 8
  %22 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br label %25

25:                                               ; preds = %23, %19
  %26 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = add i32 %1, 1
  %29 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  %33 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %34 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !47
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %8, i32 noundef %1, i32 noundef %35) #14
  %36 = load ptr, ptr %6, align 8, !tbaa.struct !42
  %37 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %36) #14
  %38 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  br label %89

39:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ej(ptr noundef nonnull align 4 dereferenceable(9) %9, i32 noundef %1) #14
  %40 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #15
  br label %89

41:                                               ; preds = %25
  %42 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %43 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !47
  %45 = add i32 %44, 1
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = add i32 %1, 1
  %49 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %50 = load i32, ptr %49, align 4, !tbaa !45
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  %53 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %54 = load i32, ptr %53, align 4, !tbaa !45
  %55 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %56 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !47
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %10, i32 noundef %54, i32 noundef %57) #14
  %58 = load ptr, ptr %6, align 8, !tbaa.struct !42
  %59 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %58) #14
  %60 = load ptr, ptr %3, align 8, !tbaa.struct !42
  %61 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %60) #14
  %62 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  br label %89

63:                                               ; preds = %47, %41
  %64 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %65 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !47
  %67 = add i32 %66, 1
  %68 = icmp eq i32 %67, %1
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  %70 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %71 = load i32, ptr %70, align 4, !tbaa !45
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %11, i32 noundef %71, i32 noundef %1) #14
  %72 = load ptr, ptr %6, align 8, !tbaa.struct !42
  %73 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %72) #14
  %74 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  br label %89

75:                                               ; preds = %63
  %76 = add i32 %1, 1
  %77 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %78 = load i32, ptr %77, align 4, !tbaa !45
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #15
  %81 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %82 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %81, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !47
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %12, i32 noundef %1, i32 noundef %83) #14
  %84 = load ptr, ptr %3, align 8, !tbaa.struct !42
  %85 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %84) #14
  %86 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  br label %89

87:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ej(ptr noundef nonnull align 4 dereferenceable(9) %13, i32 noundef %1) #14
  %88 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %13) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #15
  br label %89

89:                                               ; preds = %52, %80, %87, %69, %32, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %106

90:                                               ; preds = %2
  %91 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %91, ptr %3, align 8, !tbaa.struct !42
  %92 = call ptr @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEmmEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #18
  %93 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %94 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %93, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !47
  %96 = add i32 %95, 1
  %97 = icmp eq i32 %96, %1
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  %99 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %100 = load i32, ptr %99, align 4, !tbaa !45
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %14, i32 noundef %100, i32 noundef %1) #14
  %101 = load ptr, ptr %3, align 8, !tbaa.struct !42
  %102 = call ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %101) #14
  %103 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %14) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  br label %106

104:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ej(ptr noundef nonnull align 4 dereferenceable(9) %15, i32 noundef %1) #14
  %105 = call { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %15) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #15
  br label %106

106:                                              ; preds = %98, %104, %89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @range_tree_uint_has(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = tail call noundef zeroext i1 @_ZNK9RangeTreeIjE3hasEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9RangeTreeIjE3hasEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ej(ptr noundef nonnull align 4 dereferenceable(9) %4, i32 noundef %1) #14
  %6 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %4) #14
  store ptr %6, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %7 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %7, ptr %5, align 8
  %8 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %11 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !47
  %13 = icmp uge i32 %12, %1
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ false, %2 ], [ %13, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @range_tree_uint_has_range(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = tail call noundef zeroext i1 @_ZNK9RangeTreeIjE9has_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) #14
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9RangeTreeIjE9has_rangeEjj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %5 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %5, i32 noundef %1, i32 noundef %2) #14
  %7 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %5) #14
  store ptr %7, ptr %4, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %8 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %8, ptr %6, align 8
  %9 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %16 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = icmp eq i32 %17, %2
  br label %19

19:                                               ; preds = %10, %14, %3
  %20 = phi i1 [ false, %3 ], [ false, %10 ], [ %18, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret i1 %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @range_tree_uint_empty(ptr noundef nonnull %0) local_unnamed_addr #7 {
  %2 = tail call noundef zeroext i1 @_ZNK9RangeTreeIjE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9RangeTreeIjE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef zeroext i1 @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @range_tree_uint_size(ptr noundef nonnull %0) local_unnamed_addr #7 {
  %2 = tail call noundef i32 @_ZNK9RangeTreeIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9RangeTreeIjE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @range_tree_uint_print(ptr noundef nonnull %0) local_unnamed_addr #4 {
  tail call void @_ZNK9RangeTreeIjE5printEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK9RangeTreeIjE5printEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %5 = tail call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %5, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %6 = tail call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %6, ptr %3, align 8
  %7 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br i1 %7, label %10, label %8

8:                                                ; preds = %23, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %9 = call noundef zeroext i1 @_ZNK9RangeTreeIjE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %9, label %29, label %31

10:                                               ; preds = %1, %23
  %11 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %12 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %11, i64 0, i32 2
  %13 = load i8, ptr %12, align 4, !tbaa !48, !range !49, !noundef !50
  %14 = icmp eq i8 %13, 0
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1) #14
  %16 = load i32, ptr %11, align 4, !tbaa !45
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef %16) #14
  br i1 %14, label %18, label %23

18:                                               ; preds = %10
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.3) #14
  %20 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %11, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !47
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef %21) #14
  br label %23

23:                                               ; preds = %10, %18
  %24 = phi ptr [ %22, %18 ], [ %17, %10 ]
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull @.str.2) #14
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %27 = call ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %27, ptr %3, align 8
  %28 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br i1 %28, label %10, label %8, !llvm.loop !51

29:                                               ; preds = %8
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4) #14
  br label %31

31:                                               ; preds = %29, %8
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @range_tree_uint_allocation_lower_bound(ptr noundef nonnull %0) local_unnamed_addr #7 {
  %2 = tail call noundef i32 @_ZNK9RangeTreeIjE22allocation_lower_boundEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK9RangeTreeIjE22allocation_lower_boundEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %3 = trunc i64 %2 to i32
  %4 = mul i32 %3, 12
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #14
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #18
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #14
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #18
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !53

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret ptr %2
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #18
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %1) #14
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE7destroyIS3_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #14
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
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE7destroyIS3_EEvRS5_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE7destroyIS3_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE6_M_ptrEv(ptr noundef nonnull align 4 dereferenceable(12) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE7destroyIS3_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE6_M_ptrEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE7_M_addrEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE7_M_addrEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #7 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE10deallocateERS5_PS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE10deallocateEPS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE10deallocateEPS4_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertEOS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::pair", align 8
  %4 = alloca %"struct.std::pair.0", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  %6 = extractvalue { ptr, i8 } %5, 0
  store ptr %6, ptr %4, align 8
  %7 = getelementptr inbounds { ptr, i8 }, ptr %4, i64 0, i32 1
  %8 = extractvalue { ptr, i8 } %5, 1
  store i8 %8, ptr %7, align 8
  call void @_ZNSt4pairISt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEbEC2IRSt17_Rb_tree_iteratorIS3_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %9 = load ptr, ptr %3, align 8
  %10 = insertvalue { ptr, i8 } poison, ptr %9, 0
  %11 = getelementptr inbounds { ptr, i8 }, ptr %3, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = insertvalue { ptr, i8 } %10, i8 %12, 1
  ret { ptr, i8 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjE5RangeC2Ejj(ptr noundef nonnull align 4 dereferenceable(9) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 {
  store i32 %1, ptr %0, align 4, !tbaa !45
  %4 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 4, !tbaa !47
  %5 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %0, i64 0, i32 2
  %6 = icmp eq i32 %1, %2
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %5, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  tail call void @_ZNSt20_Rb_tree_key_compareISt4lessIN9RangeTreeIjE5RangeEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareISt4lessIN9RangeTreeIjE5RangeEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  store i32 0, ptr %0, align 8, !tbaa !61
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !58
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !62
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::pair.0", align 8
  %4 = alloca %"struct.std::_Identity", align 1
  %5 = alloca %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Alloc_node", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca i8, align 1
  %8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  %10 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  %11 = call { ptr, ptr } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %10) #14
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeC2ERS8_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %16 = call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  store ptr %16, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 1, ptr %7, align 1, !tbaa !39
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEbEC2IS4_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %18

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %12) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  store i8 0, ptr %9, align 1, !tbaa !39
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEbEC2IS4_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
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
define linkonce_odr dso_local void @_ZNSt4pairISt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEbEC2IRSt17_Rb_tree_iteratorIS3_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2ERKSt17_Rb_tree_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load i8, ptr %2, align 1, !tbaa !39, !range !49, !noundef !50
  store i8 %5, ptr %4, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::pair.3", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %10, ptr %5, align 8, !tbaa !43
  %11 = icmp eq ptr %9, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %2, %20
  %13 = phi ptr [ %21, %20 ], [ %9, %2 ]
  %14 = tail call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull %13) #14
  %15 = tail call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(9) %14) #14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #18
  br label %20

18:                                               ; preds = %12
  %19 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #18
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %12, !llvm.loop !68

23:                                               ; preds = %20
  store ptr %13, ptr %5, align 8, !tbaa !43
  store ptr null, ptr %4, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %13) #18
  br i1 %15, label %25, label %31

24:                                               ; preds = %2
  store ptr null, ptr %4, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %10) #18
  br label %25

25:                                               ; preds = %24, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %26 = call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %26, ptr %7, align 8
  %27 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %37

29:                                               ; preds = %25
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br label %31

31:                                               ; preds = %29, %23
  %32 = load ptr, ptr %6, align 8, !tbaa !69
  %33 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %32) #14
  %34 = call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %33, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %37

36:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  store ptr null, ptr %8, align 8, !tbaa !43
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %37

37:                                               ; preds = %36, %35, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %38 = load ptr, ptr %3, align 8
  %39 = insertvalue { ptr, ptr } poison, ptr %38, 0
  %40 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = insertvalue { ptr, ptr } %39, ptr %41, 1
  ret { ptr, ptr } %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #7 comdat align 2 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeC2ERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #7 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSE_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Identity", align 1
  %8 = icmp eq ptr %1, null
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERS2_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 4 dereferenceable(9) %3) #14
  %14 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #14
  %15 = call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %13, ptr noundef nonnull align 4 dereferenceable(9) %14) #14
  br label %16

16:                                               ; preds = %12, %9, %5
  %17 = phi i1 [ true, %9 ], [ true, %5 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  %18 = call noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeclIS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(9) %3) #14
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %17, ptr noundef %18, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %19) #18
  %20 = getelementptr inbounds i8, ptr %0, i64 40
  %21 = load i64, ptr %20, align 8, !tbaa !64
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !64
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %18) #18
  %23 = load ptr, ptr %6, align 8
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairISt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEbEC2IS4_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 {
  %4 = load i64, ptr %1, align 8, !tbaa !43
  store i64 %4, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %"struct.std::pair.0", ptr %0, i64 0, i32 1
  %6 = load i8, ptr %2, align 1, !tbaa !39, !range !49, !noundef !50
  store i8 %6, ptr %5, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(9) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef zeroext i1 @_ZNK9RangeTreeIjE5RangeltERKS1_(ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(9) %2) #14
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %"struct.std::_Identity", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %0) #14
  %4 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 4 dereferenceable(9) %3) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !69
  %4 = load ptr, ptr %1, align 8, !tbaa !69
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #18
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #7 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  store ptr %4, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !43
  store ptr %6, ptr %5, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !69
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !69
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(ptr noundef %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #7 comdat align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  store ptr %4, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !43
  store ptr %6, ptr %5, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9RangeTreeIjE5RangeltERKS1_(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #7 comdat align 2 {
  %3 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !47
  %5 = load i32, ptr %1, align 4, !tbaa !45
  %6 = icmp ult i32 %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #7 comdat align 2 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE6_M_ptrEv(ptr noundef nonnull align 4 dereferenceable(12) %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE6_M_ptrEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE7_M_addrEv(ptr noundef nonnull align 4 dereferenceable(12) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufIN9RangeTreeIjE5RangeEE7_M_addrEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #7 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeclIS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_create_nodeIJS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  ret ptr %4
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_create_nodeIJS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE8allocateERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2) local_unnamed_addr #7 comdat align 2 {
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %5 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %1) #14
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE9constructIS3_JS3_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE8allocateERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !78

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 384307168202282325
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 48
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #16
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #7 comdat align 2 {
  ret i64 192153584101141162
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE9constructIS3_JS3_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2) local_unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE9constructIS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE9constructIS3_JS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2) local_unnamed_addr #7 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2ERKSt17_Rb_tree_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %3, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  %7 = call noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = invoke noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %11 unwind label %13

11:                                               ; preds = %9
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %10, ptr %12, align 8, !tbaa !43
  br label %15

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  resume { ptr, i32 } %14

15:                                               ; preds = %11, %5
  call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %16

16:                                               ; preds = %15, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #7 comdat align 2 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  store ptr %4, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", ptr %0, i64 0, i32 1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  store ptr %7, ptr %5, align 8, !tbaa !82
  %8 = getelementptr inbounds %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !43
  %9 = load ptr, ptr %0, align 8, !tbaa !80
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %9, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !83
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2, %11
  %17 = phi ptr [ %14, %11 ], [ null, %2 ]
  store ptr %17, ptr %5, align 8, !tbaa !82
  br label %18

18:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ERKS8_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base(ptr noundef %6) #18
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %7, ptr %8, align 8, !tbaa !43
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base(ptr noundef %6) #18
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %9, ptr %10, align 8, !tbaa !43
  %11 = getelementptr inbounds i8, ptr %1, i64 40
  %12 = load i64, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 %12, ptr %13, align 8, !tbaa !64
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_rootEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %4) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !83
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18
  %12 = invoke noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %11, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %13 unwind label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  store ptr %12, ptr %14, align 8, !tbaa !54
  br label %17

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          catch ptr null
  br label %37

17:                                               ; preds = %13, %4
  %18 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #18
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %17, %42
  %21 = phi ptr [ %43, %42 ], [ %18, %17 ]
  %22 = phi ptr [ %23, %42 ], [ %5, %17 ]
  %23 = invoke noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %24 unwind label %35

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %22, i64 0, i32 2
  store ptr %23, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %23, i64 0, i32 1
  store ptr %22, ptr %26, align 8, !tbaa !83
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %21) #18
  %32 = invoke noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %31, ptr noundef nonnull %23, ptr noundef nonnull align 8 dereferenceable(24) %3) #14
          to label %33 unwind label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %23, i64 0, i32 3
  store ptr %32, ptr %34, align 8, !tbaa !54
  br label %42

35:                                               ; preds = %30, %20
  %36 = landingpad { ptr, i32 }
          catch ptr null
  br label %37

37:                                               ; preds = %35, %15
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %16, %15 ]
  %39 = extractvalue { ptr, i32 } %38, 0
  %40 = tail call ptr @__cxa_begin_catch(ptr %39) #15
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5) #14
          to label %41 unwind label %45

41:                                               ; preds = %37
  invoke void @__cxa_rethrow() #22
          to label %52 unwind label %45

42:                                               ; preds = %33, %24
  %43 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %21) #18
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %20, !llvm.loop !85

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
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef ptr @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_S_maximumEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef ptr @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %1) #14
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(9) %4) #14
  %6 = load i32, ptr %1, align 8, !tbaa !86
  store i32 %6, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret ptr %5
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #14
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !84
  br i1 %4, label %9, label %7

7:                                                ; preds = %2
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %3) #18
  %8 = load ptr, ptr %5, align 8, !tbaa !84
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  br label %11

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %3, %7 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  store ptr %7, ptr %2, align 8, !tbaa !82
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  store ptr null, ptr %10, align 8, !tbaa !54
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %13 ]
  %19 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !87

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr %18, ptr %24
  store ptr %26, ptr %2, align 8
  br label %30

27:                                               ; preds = %9
  %28 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !57
  br label %30

29:                                               ; preds = %5
  store ptr null, ptr %0, align 8, !tbaa !80
  br label %30

30:                                               ; preds = %22, %29, %13, %27, %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2) local_unnamed_addr #7 comdat align 2 {
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %5 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %1) #14
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEEE9constructIS3_JRKS3_EEEvRS5_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2) local_unnamed_addr #7 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEEE9constructIS3_JRKS3_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(9) %2) local_unnamed_addr #7 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !34
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !88

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !89

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = tail call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  store ptr %5, ptr %4, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2ERKSt17_Rb_tree_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %6 = load ptr, ptr %3, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjE5RangeC2Ej(ptr noundef nonnull align 4 dereferenceable(9) %0, i32 noundef %1) unnamed_addr #7 comdat align 2 {
  store i32 %1, ptr %0, align 4, !tbaa !45
  %3 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !47
  %4 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %0, i64 0, i32 2
  store i8 1, ptr %4, align 4, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = tail call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) #14
  store ptr %5, ptr %4, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2ERKSt17_Rb_tree_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %6 = load ptr, ptr %3, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %7 = tail call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %8 = tail call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !69
  %12 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %11) #14
  %13 = call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(9) %12) #14
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !42
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(9) %3) local_unnamed_addr #4 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull %8) #14
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %10, ptr noundef nonnull align 4 dereferenceable(9) %3) #14
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !90

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #18
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5eraseB5cxx11ESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr %1, ptr %3, align 8, !tbaa.struct !42
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) #14
  %5 = call ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !79
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #7 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %4) #18
  %5 = getelementptr inbounds i8, ptr %0, i64 40
  %6 = load i64, ptr %5, align 8, !tbaa !64
  %7 = add i64 %6, -1
  store i64 %7, ptr %5, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = load ptr, ptr %1, align 8, !tbaa !79
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #18
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #7 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeIN9RangeTreeIjE5RangeEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(44) %2) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  call void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #18
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE11upper_boundERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = tail call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11upper_boundERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  store ptr %5, ptr %4, align 8
  call void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2ERKSt17_Rb_tree_iteratorIS2_E(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %6 = load ptr, ptr %3, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !79
  %4 = load ptr, ptr %1, align 8, !tbaa !79
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !79
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::pair", align 8
  %4 = alloca %"struct.std::pair.0", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %5 = tail call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  %6 = extractvalue { ptr, i8 } %5, 0
  store ptr %6, ptr %4, align 8
  %7 = getelementptr inbounds { ptr, i8 }, ptr %4, i64 0, i32 1
  %8 = extractvalue { ptr, i8 } %5, 1
  store i8 %8, ptr %7, align 8
  call void @_ZNSt4pairISt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEbEC2IRSt17_Rb_tree_iteratorIS3_ERbTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  %9 = load ptr, ptr %3, align 8
  %10 = insertvalue { ptr, i8 } poison, ptr %9, 0
  %11 = getelementptr inbounds { ptr, i8 }, ptr %3, i64 0, i32 1
  %12 = load i8, ptr %11, align 8
  %13 = insertvalue { ptr, i8 } %10, i8 %12, 1
  ret { ptr, i8 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEmmEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
  %3 = load ptr, ptr %0, align 8
  %4 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11upper_boundERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %5 = tail call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS2_EPSt18_Rb_tree_node_baseRKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(9) %3) local_unnamed_addr #4 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull %8) #14
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %3, ptr noundef nonnull align 4 dereferenceable(9) %10) #14
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %8, %12 ], [ %9, %14 ]
  %18 = phi ptr [ %13, %12 ], [ %15, %14 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !91

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #18
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::pair.0", align 8
  %4 = alloca %"struct.std::_Identity", align 1
  %5 = alloca %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Alloc_node", align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca i8, align 1
  %8 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  %10 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  %11 = call { ptr, ptr } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE24_M_get_insert_unique_posERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %10) #14
  %12 = extractvalue { ptr, ptr } %11, 0
  %13 = extractvalue { ptr, ptr } %11, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeC2ERS8_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %16 = call ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  store ptr %16, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 1, ptr %7, align 1, !tbaa !39
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEbEC2IS4_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %18

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %12) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #15
  store i8 0, ptr %9, align 1, !tbaa !39
  call void @_ZNSt4pairISt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEbEC2IS4_bTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %18

18:                                               ; preds = %17, %15
  %19 = load ptr, ptr %3, align 8
  %20 = insertvalue { ptr, i8 } poison, ptr %19, 0
  %21 = getelementptr inbounds { ptr, i8 }, ptr %3, i64 0, i32 1
  %22 = load i8, ptr %21, align 8
  %23 = insertvalue { ptr, i8 } %20, i8 %22, 1
  ret { ptr, i8 } %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Identity", align 1
  %8 = icmp eq ptr %1, null
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNKSt9_IdentityIN9RangeTreeIjE5RangeEEclERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 4 dereferenceable(9) %3) #14
  %14 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #14
  %15 = call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %13, ptr noundef nonnull align 4 dereferenceable(9) %14) #14
  br label %16

16:                                               ; preds = %12, %9, %5
  %17 = phi i1 [ true, %9 ], [ true, %5 ], [ %15, %12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  %18 = call noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(9) %3) #14
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %17, ptr noundef %18, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %19) #18
  %20 = getelementptr inbounds i8, ptr %0, i64 40
  %21 = load i64, ptr %20, align 8, !tbaa !64
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !64
  call void @_ZNSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %18) #18
  %23 = load ptr, ptr %6, align 8
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_create_nodeIJRKS2_EEEPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = tail call ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #4 comdat align 2 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %5 = tail call noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %6 = tail call noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  %7 = tail call ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(9) %1) #14
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %8 = tail call ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEES5_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !79
  %12 = call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %11) #14
  %13 = call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %1, ptr noundef nonnull align 4 dereferenceable(9) %12) #14
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = call ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  br label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 8, !tbaa.struct !42
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(9) %3) local_unnamed_addr #4 comdat align 2 {
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %4, %16
  %8 = phi ptr [ %18, %16 ], [ %1, %4 ]
  %9 = phi ptr [ %17, %16 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 4 dereferenceable(9) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull %8) #14
  %11 = tail call noundef zeroext i1 @_ZNKSt4lessIN9RangeTreeIjE5RangeEEclERKS2_S5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(9) %10, ptr noundef nonnull align 4 dereferenceable(9) %3) #14
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef nonnull %8) #18
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %9, %14 ], [ %8, %12 ]
  %18 = phi ptr [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !92

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %2, %4 ], [ %17, %16 ]
  call void @_ZNSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #18
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef zeroext i1 @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !64
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt3setIN9RangeTreeIjE5RangeESt4lessIS2_ESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #18
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !64
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4 align 2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_range_tree_c_api.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { builtin optsize allocsize(0) }
attributes #17 = { builtin nounwind optsize }
attributes #18 = { nounwind optsize }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { noreturn optsize }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 1, !39}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"bool", !37, i64 0}
!41 = !{i64 0, i64 4, !35, i64 4, i64 1, !39}
!42 = !{i64 0, i64 8, !43}
!43 = !{!44, !44, i64 0}
!44 = !{!"any pointer", !37, i64 0}
!45 = !{!46, !36, i64 0}
!46 = !{!"_ZTSN9RangeTreeIjE5RangeE", !36, i64 0, !36, i64 4, !40, i64 8}
!47 = !{!46, !36, i64 4}
!48 = !{!46, !40, i64 8}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = distinct !{!53, !52}
!54 = !{!55, !44, i64 24}
!55 = !{!"_ZTSSt18_Rb_tree_node_base", !56, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!56 = !{!"_ZTSSt14_Rb_tree_color", !37, i64 0}
!57 = !{!55, !44, i64 16}
!58 = !{!59, !44, i64 8}
!59 = !{!"_ZTSSt15_Rb_tree_header", !55, i64 0, !60, i64 32}
!60 = !{!"long", !37, i64 0}
!61 = !{!59, !56, i64 0}
!62 = !{!59, !44, i64 16}
!63 = !{!59, !44, i64 24}
!64 = !{!59, !60, i64 32}
!65 = !{!66, !40, i64 8}
!66 = !{!"_ZTSSt4pairISt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEEbE", !67, i64 0, !40, i64 8}
!67 = !{!"_ZTSSt23_Rb_tree_const_iteratorIN9RangeTreeIjE5RangeEE", !44, i64 0}
!68 = distinct !{!68, !52}
!69 = !{!70, !44, i64 0}
!70 = !{!"_ZTSSt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEE", !44, i64 0}
!71 = !{!72, !40, i64 8}
!72 = !{!"_ZTSSt4pairISt17_Rb_tree_iteratorIN9RangeTreeIjE5RangeEEbE", !70, i64 0, !40, i64 8}
!73 = !{!74, !44, i64 0}
!74 = !{!"_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E", !44, i64 0, !44, i64 8}
!75 = !{!74, !44, i64 8}
!76 = !{!77, !44, i64 0}
!77 = !{!"_ZTSNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE11_Alloc_nodeE", !44, i64 0}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{!67, !44, i64 0}
!80 = !{!81, !44, i64 0}
!81 = !{!"_ZTSNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeE", !44, i64 0, !44, i64 8, !44, i64 16}
!82 = !{!81, !44, i64 8}
!83 = !{!55, !44, i64 8}
!84 = !{!81, !44, i64 16}
!85 = distinct !{!85, !52}
!86 = !{!55, !56, i64 0}
!87 = distinct !{!87, !52}
!88 = distinct !{!88, !52}
!89 = distinct !{!89, !52}
!90 = distinct !{!90, !52}
!91 = distinct !{!91, !52}
!92 = distinct !{!92, !52}
