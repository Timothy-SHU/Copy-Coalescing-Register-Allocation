; ModuleID = 'simulator/cstringpool.cc'
source_filename = "simulator/cstringpool.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.std::piecewise_construct_t" = type { i8 }
%class.cStringPool = type <{ %"class.std::__cxx11::basic_string", %"class.std::map", i8, [7 x i8] }>
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.cStringPool::strless" }
%"struct.cStringPool::strless" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [16 x i8] }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"struct.std::pair" = type <{ ptr, i32, [4 x i8] }>
%"struct.std::_Rb_tree_iterator" = type { ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.3" = type { i8 }
%"struct.std::_Select1st" = type { i8 }
%"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Auto_node" = type { ptr, ptr }
%"struct.std::pair.4" = type { ptr, ptr }

$_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEC2Ev = comdat any

$_Z15opp_nulltoemptyPKc = comdat any

$_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EEC2Ev = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev = comdat any

$_ZNSaISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev = comdat any

$_ZNSt20_Rb_tree_key_compareIN11cStringPool7strlessEEC2Ev = comdat any

$_ZNSt15_Rb_tree_headerC2Ev = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev = comdat any

$_ZNSt15_Rb_tree_header8_M_resetEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EED2Ev = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEED2Ev = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE7destroyIS4_EEvRS6_PT_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv = comdat any

$_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE7destroyIS4_EEvPT_ = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv = comdat any

$_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE7_M_addrEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE10deallocateERS6_PS5_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE10deallocateEPS5_m = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE9_M_mbeginEv = comdat any

$_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5emptyEv = comdat any

$_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5beginEv = comdat any

$_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKPciEES6_ = comdat any

$_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEEptEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEppEv = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5emptyEv = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5beginEv = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2EPKSt18_Rb_tree_node_base = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv = comdat any

$_ZNKSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv = comdat any

$_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE7_M_addrEv = comdat any

$_ZN11cStaticFlag5isSetEv = comdat any

$_Z10opp_strdupPKc = comdat any

$_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_ = comdat any

$_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_ = comdat any

$_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv = comdat any

$_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_ = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv = comdat any

$_ZNK11cStringPool7strlessclEPKcS2_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base = comdat any

$_ZNKSt10_Select1stISt4pairIKPciEEclERKS3_ = comdat any

$_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE11lower_boundERS4_ = comdat any

$_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE8key_compEv = comdat any

$_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEdeEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_ = comdat any

$_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2ERKSt17_Rb_tree_iteratorIS3_E = comdat any

$_ZNSt5tupleIJRKPcEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS2_EEEbE4typeELb1EEES2_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11lower_boundERS2_ = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8key_compEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS2_EESF_IJEEEEERS9_DpOT_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_ = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node6_M_keyEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node9_M_insertES1_IPSt18_Rb_tree_node_baseSC_E = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_get_nodeEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_ = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE8allocateERS6_m = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESC_IJEEEEEvRS6_PT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESB_IJEEEEEvPT_DpOT0_ = comdat any

$_ZNSt5tupleIJRKPcEEC2EOS3_ = comdat any

$_ZNSt4pairIKPciEC2IJRS1_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKPcEEC2EOS3_ = comdat any

$_ZNSt4pairIKPciEC2IJRS1_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE = comdat any

$_ZSt3getILm0EJRKPcEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_ = comdat any

$_ZSt12__get_helperILm0ERKPcJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE = comdat any

$_ZNSt11_Tuple_implILm0EJRKPcEE7_M_headERS3_ = comdat any

$_ZNSt10_Head_baseILm0ERKPcLb0EE7_M_headERS3_ = comdat any

$_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEE13_M_const_castEv = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4sizeEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_rightmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_leftmostEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_ = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEmmEv = comdat any

$_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEppEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5beginEv = comdat any

$_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKPciEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt11_Tuple_implILm0EJRKPcEEC2ES2_ = comdat any

$_ZNSt10_Head_baseILm0ERKPcLb0EEC2ES2_ = comdat any

$_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_ = comdat any

$_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKPciEES6_ = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_ = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_ = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPKSt18_Rb_tree_node_base = comdat any

$_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS3_E = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_E = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"contents of stringpool \22%s\22:\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  \22%s\22 %p, %d ref(s)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [106 x i8] c"ERROR: cStringPool::get(\22%s\22) invoked outside main() -- please do not use cStringPool from global objects\00", align 1
@_ZN11cStaticFlag10staticflagE = external local_unnamed_addr global i8, align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"ERROR: cStringPool::peek(\22%s\22) invoked outside main() -- please do not use cStringPool from global objects\00", align 1
@.str.5 = private unnamed_addr constant [93 x i8] c"Warning: cStringPool::release(): string \22%s\22 released too late, after main() already exited\0A\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"ERROR: cStringPool::release(): string %p \22%s\22 not in stringpool\0A\00", align 1
@.str.7 = private unnamed_addr constant [113 x i8] c"ERROR: cStringPool::release(): wrong string pointer %p \22%s\22, stringpool has a different copy of the same string\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cstringpool.cc, ptr null }]

@_ZN11cStringPoolC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11cStringPoolC2EPKc
@_ZN11cStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11cStringPoolD2Ev

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
define dso_local void @_ZN11cStringPoolC2EPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %3 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  tail call void @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #17
  %4 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %1) #15
  %5 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4) #15
          to label %6 unwind label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 2
  store i8 1, ptr %7, align 8, !tbaa !186
  ret void

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !185 {
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %0) local_unnamed_addr #5 comdat !prof !203 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str, ptr %0, !prof !204
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !205 {
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !185 {
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !185 {
  tail call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  tail call void @_ZNSt20_Rb_tree_key_compareIN11cStringPool7strlessEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !185 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20_Rb_tree_key_compareIN11cStringPool7strlessEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !185 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_headerC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !206 {
  store i32 0, ptr %0, align 8, !tbaa !207
  tail call void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !185 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Rb_tree_header8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !209
  %3 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !210
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  store ptr %0, ptr %4, align 8, !tbaa !211
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !205 {
  %2 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  invoke void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %2) #15
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !205 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %7, %4 ], [ %1, %2 ]
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #17
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %6) #15
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %5) #17
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %5) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !213

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !215 {
  %2 = tail call noundef ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !205 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !216 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !218 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !219
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !220 {
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #17
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %4 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #15
  tail call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE7destroyIS4_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, i64 noundef 1) #15
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE7destroyIS4_EEvRS6_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !220 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !221 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !222 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE7destroyIS4_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !220 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !222 {
  %2 = tail call noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !222 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE10deallocateERS6_PS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 !prof !220 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE10deallocateEPS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #19
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE9_M_mbeginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !215 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11cStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #5 align 2 !prof !205 {
  %2 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 2
  store i8 0, ptr %2, align 8, !tbaa !186
  %3 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  tail call void @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZNK11cStringPool4dumpEv(ptr noundef nonnull align 8 dereferenceable(81) %0) local_unnamed_addr #5 align 2 !prof !205 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %9 = tail call ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  store ptr %9, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %10 = tail call ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  store ptr %10, ptr %3, align 8
  %11 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br i1 %11, label %13, label %12

12:                                               ; preds = %13, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %25

13:                                               ; preds = %6, %13
  %14 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %15 = load ptr, ptr %14, align 8, !tbaa !223
  %16 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %17 = load ptr, ptr %16, align 8, !tbaa !223
  %18 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  %19 = getelementptr inbounds %"struct.std::pair", ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !226
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %15, ptr noundef %17, i32 noundef %20) #15
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %23 = call ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  store ptr %23, ptr %3, align 8
  %24 = call noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br i1 %24, label %13, label %12, !llvm.loop !227

25:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = tail call noundef zeroext i1 @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret i1 %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt23_Rb_tree_const_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !205 {
  %3 = load ptr, ptr %0, align 8, !tbaa !228
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = icmp ne ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = tail call ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = load ptr, ptr %0, align 8, !tbaa !228
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !228
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !212
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #17
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !205 {
  store ptr %1, ptr %0, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !230 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !230 {
  %2 = tail call noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE7_M_addrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 !prof !230 {
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !231 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = alloca ptr, align 8
  %7 = tail call noundef zeroext i1 @_ZN11cStaticFlag5isSetEv() #15
  br i1 %7, label %12, label %8, !prof !232

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !tbaa !233
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %1) #21
  %11 = tail call noundef ptr @_Z10opp_strdupPKc(ptr noundef %1) #15
  br label %35

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %35, label %14, !prof !234

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %15 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr %1, ptr %4, align 8, !tbaa !233
  %16 = call ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  store ptr %16, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %17 = call ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %15) #17
  store ptr %17, ptr %5, align 8
  %18 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br i1 %18, label %19, label %26, !prof !235

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %21 = add i64 %20, 1
  %22 = call noalias noundef nonnull ptr @_Znam(i64 noundef %21) #22
  store ptr %22, ptr %6, align 8, !tbaa !233
  %23 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %1) #17
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  store i32 1, ptr %24, align 4, !tbaa !236
  %25 = load ptr, ptr %6, align 8, !tbaa !233
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %33

26:                                               ; preds = %14
  %27 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %28 = getelementptr inbounds %"struct.std::pair", ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !226
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !226
  %31 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %32 = load ptr, ptr %31, align 8, !tbaa !223
  br label %33

33:                                               ; preds = %26, %19
  %34 = phi ptr [ %25, %19 ], [ %32, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %35

35:                                               ; preds = %12, %33, %8
  %36 = phi ptr [ %34, %33 ], [ %11, %8 ], [ null, %12 ]
  ret ptr %36
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11cStaticFlag5isSetEv() local_unnamed_addr #5 comdat align 2 !prof !237 {
  %1 = load i8, ptr @_ZN11cStaticFlag10staticflagE, align 1, !tbaa !238, !range !239, !noundef !240
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z10opp_strdupPKc(ptr noundef %0) local_unnamed_addr #4 comdat !prof !241 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !242

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !243
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !244

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %8 = add i64 %7, 1
  %9 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %8) #22
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #17
  br label %11

11:                                               ; preds = %1, %3, %6
  %12 = phi ptr [ %9, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !245 {
  %3 = tail call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !246 {
  %3 = load ptr, ptr %0, align 8, !tbaa !247
  %4 = load ptr, ptr %1, align 8, !tbaa !247
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !249 {
  %2 = tail call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  ret ptr %2
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.cStringPool::strless", align 1
  %6 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.3", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %9 = tail call ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE11lower_boundERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  store ptr %9, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %10 = tail call ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %10, ptr %4, align 8
  %11 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  br i1 %11, label %17, label %12, !prof !250

12:                                               ; preds = %2
  call void @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  %13 = load ptr, ptr %1, align 8, !tbaa !233
  %14 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %15 = load ptr, ptr %14, align 8, !tbaa !223
  %16 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %13, ptr noundef %15) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br i1 %16, label %18, label %21, !prof !251

17:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %18

18:                                               ; preds = %17, %12
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2ERKSt17_Rb_tree_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZNSt5tupleIJRKPcEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS2_EEEbE4typeELb1EEES2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  %19 = load ptr, ptr %6, align 8
  %20 = call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %19, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) #15
  store ptr %20, ptr %3, align 8, !tbaa.struct !252
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %21

21:                                               ; preds = %18, %12
  %22 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %23 = getelementptr inbounds %"struct.std::pair", ptr %22, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !253 {
  %2 = load ptr, ptr %0, align 8, !tbaa !247
  %3 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !245 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %6 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %7 = tail call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %8 = tail call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br i1 %9, label %16, label %10, !prof !254

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !233
  %12 = load ptr, ptr %3, align 8, !tbaa !247
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %12) #15
  %14 = load ptr, ptr %13, align 8, !tbaa !233
  %15 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %11, ptr noundef %14) #15
  br i1 %15, label %16, label %18, !prof !255

16:                                               ; preds = %10, %2
  %17 = call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  br label %20

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 8, !tbaa.struct !252
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 !prof !249 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %22, label %7, !prof !256

7:                                                ; preds = %4, %18
  %8 = phi ptr [ %20, %18 ], [ %1, %4 ]
  %9 = phi ptr [ %19, %18 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull %8) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !233
  %12 = load ptr, ptr %3, align 8, !tbaa !233
  %13 = tail call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %11, ptr noundef %12) #15
  br i1 %13, label %16, label %14, !prof !257

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #17
  br label %18

16:                                               ; preds = %7
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %8) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %9, %16 ], [ %8, %14 ]
  %20 = phi ptr [ %17, %16 ], [ %15, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !prof !258, !llvm.loop !259

22:                                               ; preds = %18, %4
  %23 = phi ptr [ %2, %4 ], [ %19, %18 ]
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %23) #17
  %24 = load ptr, ptr %5, align 8
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !260 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !261 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 !prof !262 {
  %4 = load i8, ptr %1, align 1, !tbaa !243
  %5 = load i8, ptr %2, align 1, !tbaa !243
  %6 = icmp slt i8 %4, %5
  br i1 %6, label %12, label %7, !prof !263

7:                                                ; preds = %3
  %8 = icmp eq i8 %4, %5
  br i1 %8, label %9, label %12, !prof !264

9:                                                ; preds = %7
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %2) #20
  %11 = icmp slt i32 %10, 0
  br label %12

12:                                               ; preds = %7, %3, %9
  %13 = phi i1 [ %11, %9 ], [ true, %3 ], [ false, %7 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !265 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr noundef %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
  %2 = alloca %"struct.std::_Select1st", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  %3 = tail call noundef ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt10_Select1stISt4pairIKPciEEclERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 !prof !266 {
  store ptr %1, ptr %0, align 8, !tbaa !247
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt10_Select1stISt4pairIKPciEEclERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 !prof !230 {
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE11lower_boundERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %3 = tail call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11lower_boundERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !267 {
  tail call void @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !268 {
  %2 = load ptr, ptr %0, align 8, !tbaa !247
  %3 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Auto_node", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS2_EESF_IJEEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  %8 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
          to label %9 unwind label %18

9:                                                ; preds = %5
  %10 = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %8) #15
          to label %11 unwind label %18

11:                                               ; preds = %9
  %12 = extractvalue { ptr, ptr } %10, 0
  %13 = extractvalue { ptr, ptr } %10, 1
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !269

15:                                               ; preds = %11
  %16 = invoke ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node9_M_insertES1_IPSt18_Rb_tree_node_baseSC_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %12, ptr nonnull %13) #15
          to label %17 unwind label %18

17:                                               ; preds = %15
  store ptr %16, ptr %6, align 8
  br label %21

18:                                               ; preds = %15, %9, %5
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  resume { ptr, i32 } %19

20:                                               ; preds = %11
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %12) #17
  br label %21

21:                                               ; preds = %20, %17
  call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  %22 = load ptr, ptr %6, align 8
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2ERKSt17_Rb_tree_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !270 {
  %3 = load ptr, ptr %1, align 8, !tbaa !247
  store ptr %3, ptr %0, align 8, !tbaa !228
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKPcEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS2_EEEbE4typeELb1EEES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  invoke void @_ZNSt11_Tuple_implILm0EJRKPcEEC2ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11lower_boundERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %3 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %4 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %5 = tail call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8key_compEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !267 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS2_EESF_IJEEEEERS9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #4 comdat align 2 !prof !220 {
  store ptr %1, ptr %0, align 8, !tbaa !233
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Auto_node", ptr %0, i64 0, i32 1
  %7 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  store ptr %7, ptr %6, align 8, !tbaa !271
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %4 = alloca %"struct.std::pair.4", align 8
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
  %14 = call ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  store ptr %14, ptr %6, align 8
  %15 = call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %16 = icmp eq ptr %14, %15
  %17 = ptrtoint ptr %14 to i64
  br i1 %16, label %18, label %35, !prof !250

18:                                               ; preds = %3
  %19 = call noundef i64 @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %30, label %21, !prof !273

21:                                               ; preds = %18
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %23 = load ptr, ptr %22, align 8, !tbaa !233
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %23) #15
  %25 = load ptr, ptr %24, align 8, !tbaa !233
  %26 = load ptr, ptr %2, align 8, !tbaa !233
  %27 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %25, ptr noundef %26) #15
  br i1 %27, label %28, label %30, !prof !274

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !233
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %29) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %99

30:                                               ; preds = %21, %18
  %31 = call { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %32 = extractvalue { ptr, ptr } %31, 0
  store ptr %32, ptr %4, align 8
  %33 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %34 = extractvalue { ptr, ptr } %31, 1
  store ptr %34, ptr %33, align 8
  br label %99

35:                                               ; preds = %3
  %36 = load ptr, ptr %2, align 8, !tbaa !233
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %14) #15
  %38 = load ptr, ptr %37, align 8, !tbaa !233
  %39 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %36, ptr noundef %38) #15
  br i1 %39, label %40, label %66, !prof !275

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store i64 %17, ptr %8, align 8, !tbaa !233
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %42 = load ptr, ptr %41, align 8, !tbaa !233
  %43 = icmp eq ptr %42, %14
  br i1 %43, label %44, label %47, !prof !276

44:                                               ; preds = %40
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %46) #15
  br label %65

47:                                               ; preds = %40
  %48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %49 = load ptr, ptr %48, align 8, !tbaa !247
  %50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %49) #15
  %51 = load ptr, ptr %50, align 8, !tbaa !233
  %52 = load ptr, ptr %2, align 8, !tbaa !233
  %53 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %51, ptr noundef %52) #15
  br i1 %53, label %54, label %60, !prof !277

54:                                               ; preds = %47
  %55 = load ptr, ptr %8, align 8, !tbaa !247
  %56 = call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %55) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59, !prof !278

58:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store ptr null, ptr %9, align 8, !tbaa !233
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %65

59:                                               ; preds = %54
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  br label %65

60:                                               ; preds = %47
  %61 = call { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %62 = extractvalue { ptr, ptr } %61, 0
  store ptr %62, ptr %4, align 8
  %63 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %64 = extractvalue { ptr, ptr } %61, 1
  store ptr %64, ptr %63, align 8
  br label %65

65:                                               ; preds = %60, %59, %58, %44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %99

66:                                               ; preds = %35
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %14) #15
  %68 = load ptr, ptr %67, align 8, !tbaa !233
  %69 = load ptr, ptr %2, align 8, !tbaa !233
  %70 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %68, ptr noundef %69) #15
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %72 = load i64, ptr %6, align 8, !tbaa !233
  store i64 %72, ptr %10, align 8, !tbaa !233
  %73 = inttoptr i64 %72 to ptr
  %74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %75 = load ptr, ptr %74, align 8, !tbaa !233
  %76 = icmp eq ptr %75, %73
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store ptr null, ptr %11, align 8, !tbaa !233
  %78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %78) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %97

79:                                               ; preds = %71
  %80 = load ptr, ptr %2, align 8, !tbaa !233
  %81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %82 = load ptr, ptr %81, align 8, !tbaa !247
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %82) #15
  %84 = load ptr, ptr %83, align 8, !tbaa !233
  %85 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %80, ptr noundef %84) #15
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load ptr, ptr %6, align 8, !tbaa !247
  %88 = call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef %87) #17
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store ptr null, ptr %12, align 8, !tbaa !233
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %97

91:                                               ; preds = %86
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %10) #15
  br label %97

92:                                               ; preds = %79
  %93 = call { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  %94 = extractvalue { ptr, ptr } %93, 0
  store ptr %94, ptr %4, align 8
  %95 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %96 = extractvalue { ptr, ptr } %93, 1
  store ptr %96, ptr %95, align 8
  br label %97

97:                                               ; preds = %92, %91, %90, %77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %99

98:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  store ptr null, ptr %13, align 8, !tbaa !233
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %99

99:                                               ; preds = %98, %97, %65, %30, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %100 = load ptr, ptr %4, align 8
  %101 = insertvalue { ptr, ptr } poison, ptr %100, 0
  %102 = getelementptr inbounds { ptr, ptr }, ptr %4, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8
  %104 = insertvalue { ptr, ptr } %101, ptr %103, 1
  ret { ptr, ptr } %104
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node6_M_keyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr noundef %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node9_M_insertES1_IPSt18_Rb_tree_node_baseSC_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %4 = load ptr, ptr %0, align 8, !tbaa !279
  %5 = getelementptr inbounds %"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Auto_node", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !271
  %7 = tail call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2, ptr noundef %6) #15
  store ptr null, ptr %5, align 8, !tbaa !271
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 !prof !220 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Auto_node", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !251

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !279
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %3) #17
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %5 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_get_nodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %2, i64 noundef 1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %7 = tail call noundef ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #15
  invoke void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESC_IJEEEEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
          to label %14 unwind label %8

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = tail call ptr @__cxa_begin_catch(ptr %10) #16
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) #17
  invoke void @__cxa_rethrow() #23
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
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %8
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE8allocateERS6_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #17
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !280

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 384307168202282325
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

10:                                               ; preds = %3
  %11 = mul i64 %1, 48
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #5 comdat align 2 !prof !220 {
  ret i64 192153584101141162
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESC_IJEEEEEvRS6_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 !prof !220 {
  tail call void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESB_IJEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #15
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESB_IJEEEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %6 = alloca %"class.std::tuple", align 8
  call void @_ZNSt5tupleIJRKPcEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @_ZNSt4pairIKPciEC2IJRS1_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %6) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5tupleIJRKPcEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !220 {
  tail call void @_ZNSt11_Tuple_implILm0EJRKPcEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKPciEC2IJRS1_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !220 {
  %3 = alloca %"class.std::tuple.3", align 1
  call void @_ZNSt4pairIKPciEC2IJRS1_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKPcEEC2EOS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !220 {
  %3 = load i64, ptr %1, align 8, !tbaa !233
  store i64 %3, ptr %0, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIKPciEC2IJRS1_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 !prof !220 {
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getILm0EJRKPcEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %5 = load ptr, ptr %4, align 8, !tbaa !233
  store ptr %5, ptr %0, align 8, !tbaa !223
  %6 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getILm0EJRKPcEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !220 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt12__get_helperILm0ERKPcJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt12__get_helperILm0ERKPcJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat !prof !220 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt11_Tuple_implILm0EJRKPcEE7_M_headERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt11_Tuple_implILm0EJRKPcEE7_M_headERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !220 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10_Head_baseILm0ERKPcLb0EE7_M_headERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt10_Head_baseILm0ERKPcLb0EE7_M_headERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !220 {
  %2 = load ptr, ptr %0, align 8, !tbaa !281
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEE13_M_const_castEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !220 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !228
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) #17
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !283 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !212
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_rightmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !284 {
  %2 = getelementptr inbounds i8, ptr %0, i64 32
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !285 {
  %4 = load ptr, ptr %1, align 8, !tbaa !233
  store ptr %4, ptr %0, align 8, !tbaa !286
  %5 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !233
  store ptr %6, ptr %5, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !289 {
  %3 = alloca %"struct.std::pair.4", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %7 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %9 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %9, ptr %4, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %10 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %10, ptr %5, align 8, !tbaa !233
  %11 = icmp eq ptr %9, null
  br i1 %11, label %28, label %12, !prof !290

12:                                               ; preds = %2, %21
  %13 = phi ptr [ %22, %21 ], [ %9, %2 ]
  store ptr %13, ptr %5, align 8, !tbaa !233
  %14 = load ptr, ptr %1, align 8, !tbaa !233
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull %13) #15
  %16 = load ptr, ptr %15, align 8, !tbaa !233
  %17 = tail call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %14, ptr noundef %16) #15
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #17
  store ptr %19, ptr %4, align 8, !tbaa !233
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21, !prof !291

21:                                               ; preds = %18, %23
  %22 = phi ptr [ %19, %18 ], [ %24, %23 ]
  br label %12, !llvm.loop !292

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr noundef nonnull %13) #17
  store ptr %24, ptr %4, align 8, !tbaa !233
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %21, !prof !291

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %13) #17
  br label %35

27:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %13) #17
  br label %29

28:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %10) #17
  br label %29

29:                                               ; preds = %27, %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %30 = call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %30, ptr %7, align 8
  %31 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br i1 %31, label %32, label %33, !prof !293

32:                                               ; preds = %29
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKPciEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %43

33:                                               ; preds = %29
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %35

35:                                               ; preds = %26, %33
  %36 = load ptr, ptr %6, align 8, !tbaa !247
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %36) #15
  %38 = load ptr, ptr %37, align 8, !tbaa !233
  %39 = load ptr, ptr %1, align 8, !tbaa !233
  %40 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %38, ptr noundef %39) #15
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKPciEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  br label %43

42:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !233
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %43

43:                                               ; preds = %42, %41, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %44 = load ptr, ptr %3, align 8
  %45 = insertvalue { ptr, ptr } poison, ptr %44, 0
  %46 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = insertvalue { ptr, ptr } %45, ptr %47, 1
  ret { ptr, ptr } %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_leftmostEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !295 {
  %4 = load ptr, ptr %1, align 8, !tbaa !233
  store ptr %4, ptr %0, align 8, !tbaa !286
  %5 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !233
  store ptr %6, ptr %5, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !296 {
  %2 = load ptr, ptr %0, align 8, !tbaa !247
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !247
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 !prof !220 {
  %2 = load ptr, ptr %0, align 8, !tbaa !247
  %3 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %2) #20
  store ptr %3, ptr %0, align 8, !tbaa !247
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !289 {
  %2 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !210
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #17
  %5 = load ptr, ptr %2, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKPciEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #5 comdat align 2 !prof !289 {
  %4 = load ptr, ptr %1, align 8, !tbaa !233
  store ptr %4, ptr %0, align 8, !tbaa !286
  %5 = getelementptr inbounds %"struct.std::pair.4", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !233
  store ptr %6, ptr %5, align 8, !tbaa !288
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %16, !prof !297

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %16, label %10, !prof !298

10:                                               ; preds = %7
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr noundef %3) #15
  %12 = load ptr, ptr %11, align 8, !tbaa !233
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %2) #15
  %14 = load ptr, ptr %13, align 8, !tbaa !233
  %15 = tail call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %12, ptr noundef %14) #15
  br label %16

16:                                               ; preds = %10, %7, %4
  %17 = phi i1 [ true, %7 ], [ true, %4 ], [ %15, %10 ]
  %18 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %17, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %18) #17
  %19 = getelementptr inbounds i8, ptr %0, i64 40
  %20 = load i64, ptr %19, align 8, !tbaa !212
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !212
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %3) #17
  %22 = load ptr, ptr %5, align 8
  ret ptr %22
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Tuple_implILm0EJRKPcEEC2ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 !prof !220 {
  tail call void @_ZNSt10_Head_baseILm0ERKPcLb0EEC2ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt10_Head_baseILm0ERKPcLb0EEC2ES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #5 comdat align 2 !prof !220 {
  store ptr %1, ptr %0, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11cStringPool4peekEPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !205 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = tail call noundef zeroext i1 @_ZN11cStaticFlag5isSetEv() #15
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !233
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef %1) #21
  br label %22

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %13 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr %1, ptr %4, align 8, !tbaa !233
  %14 = call ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  store ptr %14, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %15 = call ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %13) #17
  store ptr %15, ptr %5, align 8
  %16 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = call noundef ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %19 = load ptr, ptr %18, align 8, !tbaa !223
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi ptr [ %19, %17 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %22

22:                                               ; preds = %10, %20, %7
  %23 = phi ptr [ %21, %20 ], [ null, %7 ], [ null, %10 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !205 {
  %3 = tail call ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat !prof !205 {
  %3 = load ptr, ptr %0, align 8, !tbaa !228
  %4 = load ptr, ptr %1, align 8, !tbaa !228
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 !prof !205 {
  %3 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %5 = tail call noundef ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %6 = tail call noundef ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  %7 = tail call ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  store ptr %7, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %8 = tail call ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  store ptr %8, ptr %4, align 8
  %9 = call noundef zeroext i1 @_ZSteqRKSt23_Rb_tree_const_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !233
  %12 = load ptr, ptr %3, align 8, !tbaa !228
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr noundef %12) #15
  %14 = load ptr, ptr %13, align 8, !tbaa !233
  %15 = call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %11, ptr noundef %14) #15
  br i1 %15, label %16, label %18

16:                                               ; preds = %10, %2
  %17 = call ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  br label %20

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 8, !tbaa.struct !252
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 !prof !205 {
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4, %18
  %8 = phi ptr [ %20, %18 ], [ %1, %4 ]
  %9 = phi ptr [ %19, %18 ], [ %2, %4 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull %8) #15
  %11 = load ptr, ptr %10, align 8, !tbaa !233
  %12 = load ptr, ptr %3, align 8, !tbaa !233
  %13 = tail call noundef zeroext i1 @_ZNK11cStringPool7strlessclEPKcS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %11, ptr noundef %12) #15
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef nonnull %8) #17
  br label %18

16:                                               ; preds = %7
  %17 = tail call noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef nonnull %8) #17
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %9, %16 ], [ %8, %14 ]
  %20 = phi ptr [ %17, %16 ], [ %15, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !299

22:                                               ; preds = %18, %4
  %23 = phi ptr [ %2, %4 ], [ %19, %18 ]
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2EPKSt18_Rb_tree_node_base(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %23) #17
  %24 = load ptr, ptr %5, align 8
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !219
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPKSt18_Rb_tree_node_base(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11cStringPool7releaseEPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !300 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !range !239
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %41, label %11, !prof !301

11:                                               ; preds = %2
  %12 = tail call noundef zeroext i1 @_ZN11cStaticFlag5isSetEv() #15
  br i1 %12, label %16, label %13, !prof !302

13:                                               ; preds = %11
  %14 = load ptr, ptr @stderr, align 8, !tbaa !233
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef nonnull %1) #21
  br label %41

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %17 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store ptr %1, ptr %4, align 8, !tbaa !233
  %18 = call ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  store ptr %18, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %19 = call ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv(ptr noundef nonnull align 8 dereferenceable(48) %17) #17
  store ptr %19, ptr %5, align 8
  %20 = call noundef zeroext i1 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br i1 %20, label %21, label %24, !prof !303

21:                                               ; preds = %16
  %22 = load ptr, ptr @stderr, align 8, !tbaa !233
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.6, ptr noundef nonnull %1, ptr noundef nonnull %1) #21
  br label %40

24:                                               ; preds = %16
  %25 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %26 = load ptr, ptr %25, align 8, !tbaa !223
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %31, label %28, !prof !302

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !tbaa !233
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.7, ptr noundef nonnull %1, ptr noundef nonnull %1) #21
  br label %40

31:                                               ; preds = %24
  %32 = call noundef ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %33 = getelementptr inbounds %"struct.std::pair", ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !226
  %35 = add nsw i32 %34, -1
  store i32 %35, ptr %33, align 8, !tbaa !226
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40, !prof !235

37:                                               ; preds = %31
  call void @_ZdaPv(ptr noundef nonnull %1) #19
  %38 = load ptr, ptr %3, align 8, !tbaa.struct !252
  %39 = call ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr %38) #15
  br label %40

40:                                               ; preds = %31, %37, %28, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %41

41:                                               ; preds = %2, %40, %13
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %3 = tail call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #4 comdat align 2 !prof !220 {
  %3 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %4 = alloca %"struct.std::_Rb_tree_iterator", align 8
  %5 = alloca %"struct.std::_Rb_tree_const_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = ptrtoint ptr %1 to i64
  store i64 %6, ptr %3, align 8, !tbaa !233
  %7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2ERKSt17_Rb_tree_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %8 = load ptr, ptr %5, align 8
  call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %8) #15
  %9 = load ptr, ptr %3, align 8
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #5 comdat align 2 !prof !220 {
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %4) #17
  %5 = getelementptr inbounds i8, ptr %0, i64 40
  %6 = load i64, ptr %5, align 8, !tbaa !212
  %7 = add i64 %6, -1
  store i64 %7, ptr %5, align 8, !tbaa !212
  ret void
}

; Function Attrs: nounwind optsize
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cstringpool.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { cold optsize }
attributes #22 = { builtin optsize allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!184}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!36 = !{ptr @_ZN11cStringPoolC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 4}
!37 = !{ptr @_ZN11cStringPoolC2EPKc, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEC2Ev, i64 4}
!38 = !{ptr @_ZN11cStringPoolC2EPKc, ptr @_Z15opp_nulltoemptyPKc, i64 4}
!39 = !{ptr @_ZN11cStringPoolC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 4}
!40 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEC2Ev, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EEC2Ev, i64 4}
!41 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EEC2Ev, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev, i64 4}
!42 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev, ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev, i64 4}
!43 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev, ptr @_ZNSt20_Rb_tree_key_compareIN11cStringPool7strlessEEC2Ev, i64 4}
!44 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev, ptr @_ZNSt15_Rb_tree_headerC2Ev, i64 4}
!45 = !{ptr @_ZNSaISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEEC2Ev, i64 4}
!46 = !{ptr @_ZNSt15_Rb_tree_headerC2Ev, ptr @_ZNSt15_Rb_tree_header8_M_resetEv, i64 192152}
!47 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv, ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE9_M_mbeginEv, i64 974014}
!48 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E, i64 166}
!49 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E, i64 166}
!50 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv, i64 166}
!51 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv, i64 166}
!52 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE7destroyIS4_EEvRS6_PT_, i64 166}
!53 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv, i64 166}
!54 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE10deallocateERS6_PS5_m, i64 166}
!55 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE7destroyIS4_EEvRS6_PT_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE7destroyIS4_EEvPT_, i64 166}
!56 = !{ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv, i64 1947961}
!57 = !{ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv, ptr @_ZN9__gnu_cxx16__aligned_membufISt4pairIKPciEE7_M_addrEv, i64 1947961}
!58 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE10deallocateERS6_PS5_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE10deallocateEPS5_m, i64 166}
!59 = !{ptr @_ZNKSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv, i64 8370236}
!60 = !{ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE6_M_ptrEv, ptr @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKPciEE7_M_addrEv, i64 8370236}
!61 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_ZN11cStaticFlag5isSetEv, i64 495769}
!62 = !{ptr @_ZN11cStringPool3getEPKc, ptr @fprintf, i64 1}
!63 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_Z10opp_strdupPKc, i64 1}
!64 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_, i64 486913}
!65 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv, i64 486913}
!66 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_, i64 486913}
!67 = !{ptr @_ZN11cStringPool3getEPKc, ptr @strlen, i64 167}
!68 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_Znam, i64 167}
!69 = !{ptr @_ZN11cStringPool3getEPKc, ptr @strcpy, i64 167}
!70 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, i64 167}
!71 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv, i64 973492}
!72 = !{ptr @_Z10opp_strdupPKc, ptr @strlen, i64 188204299}
!73 = !{ptr @_Z10opp_strdupPKc, ptr @_Znam, i64 188204299}
!74 = !{ptr @_Z10opp_strdupPKc, ptr @strcpy, i64 188204299}
!75 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_, i64 973830}
!76 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv, i64 973996}
!77 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE11lower_boundERS4_, i64 166}
!78 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv, i64 166}
!79 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_, i64 166}
!80 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE8key_compEv, i64 134}
!81 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEdeEv, i64 300}
!82 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNK11cStringPool7strlessclEPKcS2_, i64 134}
!83 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2ERKSt17_Rb_tree_iteratorIS3_E, i64 165}
!84 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNSt5tupleIJRKPcEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS2_EEEbE4typeELb1EEES2_, i64 165}
!85 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, i64 165}
!86 = !{ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv, i64 1947328}
!87 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv, i64 973830}
!88 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv, i64 973830}
!89 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_, i64 973830}
!90 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv, i64 1947660}
!91 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_, i64 973830}
!92 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 973798}
!93 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_, ptr @_ZNK11cStringPool7strlessclEPKcS2_, i64 973798}
!94 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E, i64 7395852}
!95 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_, ptr @_ZNK11cStringPool7strlessclEPKcS2_, i64 7395852}
!96 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base, i64 3807682}
!97 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base, i64 3588171}
!98 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base, i64 973996}
!99 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE3endEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base, i64 1947992}
!100 = !{ptr @_ZNK11cStringPool7strlessclEPKcS2_, ptr @strcmp, i64 4857403}
!101 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E, i64 974141}
!102 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE11lower_boundERS4_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11lower_boundERS2_, i64 166}
!103 = !{ptr @_ZNKSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE8key_compEv, ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8key_compEv, i64 135}
!104 = !{ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEdeEv, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv, i64 301}
!105 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS2_EESF_IJEEEEERS9_DpOT_, i64 166}
!106 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node6_M_keyEv, i64 166}
!107 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, i64 166}
!108 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node9_M_insertES1_IPSt18_Rb_tree_node_baseSC_E, i64 165}
!109 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base, i64 1}
!110 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeD2Ev, i64 166}
!111 = !{ptr @_ZNSt5tupleIJRKPcEEC2ILb1ETnNSt9enable_ifIXclsr4_TCCIXT_EEE29__is_implicitly_constructibleIS2_EEEbE4typeELb1EEES2_, ptr @_ZNSt11_Tuple_implILm0EJRKPcEEC2ES2_, i64 166}
!112 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11lower_boundERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv, i64 166}
!113 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11lower_boundERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv, i64 166}
!114 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11lower_boundERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_, i64 166}
!115 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS2_EESF_IJEEEEERS9_DpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_, i64 166}
!116 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEE13_M_const_castEv, i64 166}
!117 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv, i64 166}
!118 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4sizeEv, i64 32}
!119 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_rightmostEv, i64 26}
!120 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 270}
!121 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNK11cStringPool7strlessclEPKcS2_, i64 270}
!122 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_, i64 69}
!123 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, i64 20}
!124 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_leftmostEv, i64 157}
!125 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_, i64 77}
!126 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEmmEv, i64 122}
!127 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base, i64 121}
!128 = !{ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node6_M_keyEv, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E, i64 166}
!129 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_node9_M_insertES1_IPSt18_Rb_tree_node_baseSC_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, i64 166}
!130 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeD2Ev, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, i64 1}
!131 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_get_nodeEv, i64 166}
!132 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_, i64 166}
!133 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_get_nodeEv, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv, i64 166}
!134 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE11_M_get_nodeEv, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE8allocateERS6_m, i64 166}
!135 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE21_M_get_Node_allocatorEv, i64 166}
!136 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_, ptr @_ZNSt13_Rb_tree_nodeISt4pairIKPciEE9_M_valptrEv, i64 166}
!137 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_, ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESC_IJEEEEEvRS6_PT_DpOT0_, i64 166}
!138 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE8allocateERS6_m, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE8allocateEmPKv, i64 166}
!139 = !{ptr @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKPciEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESC_IJEEEEEvRS6_PT_DpOT0_, ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESB_IJEEEEEvPT_DpOT0_, i64 166}
!140 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESB_IJEEEEEvPT_DpOT0_, ptr @_ZNSt5tupleIJRKPcEEC2EOS3_, i64 166}
!141 = !{ptr @_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKPciEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJRS3_EESB_IJEEEEEvPT_DpOT0_, ptr @_ZNSt4pairIKPciEC2IJRS1_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE, i64 166}
!142 = !{ptr @_ZNSt5tupleIJRKPcEEC2EOS3_, ptr @_ZNSt11_Tuple_implILm0EJRKPcEEC2EOS3_, i64 166}
!143 = !{ptr @_ZNSt4pairIKPciEC2IJRS1_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE, ptr @_ZNSt4pairIKPciEC2IJRS1_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE, i64 166}
!144 = !{ptr @_ZNSt4pairIKPciEC2IJRS1_EJLm0EEJETpTnmJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE, ptr @_ZSt3getILm0EJRKPcEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_, i64 166}
!145 = !{ptr @_ZSt3getILm0EJRKPcEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS7_, ptr @_ZSt12__get_helperILm0ERKPcJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, i64 166}
!146 = !{ptr @_ZSt12__get_helperILm0ERKPcJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, ptr @_ZNSt11_Tuple_implILm0EJRKPcEE7_M_headERS3_, i64 166}
!147 = !{ptr @_ZNSt11_Tuple_implILm0EJRKPcEE7_M_headERS3_, ptr @_ZNSt10_Head_baseILm0ERKPcLb0EE7_M_headERS3_, i64 166}
!148 = !{ptr @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKPciEE13_M_const_castEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base, i64 166}
!149 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_beginEv, i64 18}
!150 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv, i64 18}
!151 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E, i64 1}
!152 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNK11cStringPool7strlessclEPKcS2_, i64 2}
!153 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base, i64 17}
!154 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5beginEv, i64 18}
!155 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_, i64 18}
!156 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKPciEERS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_, i64 18}
!157 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEmmEv, i64 1}
!158 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 1}
!159 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, ptr @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS5_S6_EEEbE4typeELb1EEERKS1_SA_, i64 1}
!160 = !{ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEmmEv, ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, i64 124}
!161 = !{ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEppEv, ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base, i64 166}
!162 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5beginEv, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base, i64 18}
!163 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_M_endEv, i64 88}
!164 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E, i64 69}
!165 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base, i64 69}
!166 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, ptr @_ZNK11cStringPool7strlessclEPKcS2_, i64 69}
!167 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 166}
!168 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEC2EPSt18_Rb_tree_node_base, i64 166}
!169 = !{ptr @_ZNSt11_Tuple_implILm0EJRKPcEEC2ES2_, ptr @_ZNSt10_Head_baseILm0ERKPcLb0EEC2ES2_, i64 166}
!170 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZN11cStaticFlag5isSetEv, i64 486913}
!171 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @fprintf, i64 3}
!172 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE4findERS4_, i64 486912}
!173 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE3endEv, i64 486912}
!174 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKPciEES6_, i64 486912}
!175 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZNKSt17_Rb_tree_iteratorISt4pairIKPciEEptEv, i64 973821}
!176 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZdaPv, i64 167}
!177 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E, i64 167}
!178 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE5eraseB5cxx11ESt17_Rb_tree_iteratorIS5_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS3_E, i64 166}
!179 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS3_E, ptr @_ZNSt17_Rb_tree_iteratorISt4pairIKPciEEppEv, i64 166}
!180 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS3_E, ptr @_ZNSt23_Rb_tree_const_iteratorISt4pairIKPciEEC2ERKSt17_Rb_tree_iteratorIS3_E, i64 166}
!181 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE5eraseB5cxx11ESt17_Rb_tree_iteratorIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_E, i64 166}
!182 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_E, ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_, i64 166}
!183 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS3_E, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E, i64 166}
!184 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!185 = !{!"function_entry_count", i64 4}
!186 = !{!187, !202, i64 80}
!187 = !{!"_ZTS11cStringPool", !188, i64 0, !194, i64 32, !202, i64 80}
!188 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !189, i64 0, !193, i64 8, !191, i64 16}
!189 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !190, i64 0}
!190 = !{!"any pointer", !191, i64 0}
!191 = !{!"omnipotent char", !192, i64 0}
!192 = !{!"Simple C++ TBAA"}
!193 = !{!"long", !191, i64 0}
!194 = !{!"_ZTSSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE", !195, i64 0}
!195 = !{!"_ZTSSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE", !196, i64 0}
!196 = !{!"_ZTSNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !197, i64 0, !199, i64 8}
!197 = !{!"_ZTSSt20_Rb_tree_key_compareIN11cStringPool7strlessEE", !198, i64 0}
!198 = !{!"_ZTSN11cStringPool7strlessE"}
!199 = !{!"_ZTSSt15_Rb_tree_header", !200, i64 0, !193, i64 32}
!200 = !{!"_ZTSSt18_Rb_tree_node_base", !201, i64 0, !190, i64 8, !190, i64 16, !190, i64 24}
!201 = !{!"_ZTSSt14_Rb_tree_color", !191, i64 0}
!202 = !{!"bool", !191, i64 0}
!203 = !{!"function_entry_count", i64 425}
!204 = !{!"branch_weights", i32 4, i32 423}
!205 = !{!"function_entry_count", i64 0}
!206 = !{!"function_entry_count", i64 192152}
!207 = !{!199, !201, i64 0}
!208 = !{!"function_entry_count", i64 197751}
!209 = !{!199, !190, i64 8}
!210 = !{!199, !190, i64 16}
!211 = !{!199, !190, i64 24}
!212 = !{!199, !193, i64 32}
!213 = distinct !{!213, !214}
!214 = !{!"llvm.loop.mustprogress"}
!215 = !{!"function_entry_count", i64 974014}
!216 = !{!"function_entry_count", i64 3588298}
!217 = !{!200, !190, i64 24}
!218 = !{!"function_entry_count", i64 3807685}
!219 = !{!200, !190, i64 16}
!220 = !{!"function_entry_count", i64 166}
!221 = !{!"function_entry_count", i64 664}
!222 = !{!"function_entry_count", i64 1947961}
!223 = !{!224, !190, i64 0}
!224 = !{!"_ZTSSt4pairIKPciE", !190, i64 0, !225, i64 8}
!225 = !{!"int", !191, i64 0}
!226 = !{!224, !225, i64 8}
!227 = distinct !{!227, !214}
!228 = !{!229, !190, i64 0}
!229 = !{!"_ZTSSt23_Rb_tree_const_iteratorISt4pairIKPciEE", !190, i64 0}
!230 = !{!"function_entry_count", i64 8370236}
!231 = !{!"function_entry_count", i64 495769}
!232 = !{!"branch_weights", i32 495770, i32 1}
!233 = !{!190, !190, i64 0}
!234 = !{!"branch_weights", i32 8855, i32 486916}
!235 = !{!"branch_weights", i32 167, i32 486750}
!236 = !{!225, !225, i64 0}
!237 = !{!"function_entry_count", i64 1139427}
!238 = !{!202, !202, i64 0}
!239 = !{i8 0, i8 2}
!240 = !{}
!241 = !{!"function_entry_count", i64 188204319}
!242 = !{!"branch_weights", i32 13, i32 188204308}
!243 = !{!191, !191, i64 0}
!244 = !{!"branch_weights", i32 7, i32 188204302}
!245 = !{!"function_entry_count", i64 973830}
!246 = !{!"function_entry_count", i64 1947844}
!247 = !{!248, !190, i64 0}
!248 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKPciEE", !190, i64 0}
!249 = !{!"function_entry_count", i64 973996}
!250 = !{!"branch_weights", i32 32, i32 136}
!251 = !{!"branch_weights", i32 167, i32 1}
!252 = !{i64 0, i64 8, !233}
!253 = !{!"function_entry_count", i64 1947328}
!254 = !{!"branch_weights", i32 32, i32 973800}
!255 = !{!"branch_weights", i32 -1, i32 1}
!256 = !{!"branch_weights", i32 1, i32 973996}
!257 = !{!"branch_weights", i32 3588175, i32 3807686}
!258 = !{!"branch_weights", i32 973996, i32 6421864}
!259 = distinct !{!259, !214}
!260 = !{!"function_entry_count", i64 974268}
!261 = !{!"function_entry_count", i64 1947992}
!262 = !{!"function_entry_count", i64 8370135}
!263 = !{!"branch_weights", i32 2017230, i32 6352907}
!264 = !{!"branch_weights", i32 4857405, i32 1495503}
!265 = !{!"function_entry_count", i64 974141}
!266 = !{!"function_entry_count", i64 2922356}
!267 = !{!"function_entry_count", i64 135}
!268 = !{!"function_entry_count", i64 301}
!269 = !{!"branch_weights", i32 1, i32 167}
!270 = !{!"function_entry_count", i64 332}
!271 = !{!272, !190, i64 8}
!272 = !{!"_ZTSNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE10_Auto_nodeE", !190, i64 0, !190, i64 8}
!273 = !{!"branch_weights", i32 19, i32 14}
!274 = !{!"branch_weights", i32 14, i32 1}
!275 = !{!"branch_weights", i32 136, i32 1}
!276 = !{!"branch_weights", i32 12, i32 125}
!277 = !{!"branch_weights", i32 125, i32 1}
!278 = !{!"branch_weights", i32 58, i32 68}
!279 = !{!272, !190, i64 0}
!280 = !{!"branch_weights", i32 1, i32 2000}
!281 = !{!282, !190, i64 0}
!282 = !{!"_ZTSSt10_Head_baseILm0ERKPcLb0EE", !190, i64 0}
!283 = !{!"function_entry_count", i64 31}
!284 = !{!"function_entry_count", i64 26}
!285 = !{!"function_entry_count", i64 435559}
!286 = !{!287, !190, i64 0}
!287 = !{!"_ZTSSt4pairIPSt18_Rb_tree_node_baseS1_E", !190, i64 0, !190, i64 8}
!288 = !{!287, !190, i64 8}
!289 = !{!"function_entry_count", i64 18}
!290 = !{!"branch_weights", i32 18, i32 1}
!291 = !{!"branch_weights", i32 1, i32 0}
!292 = distinct !{!292, !214}
!293 = !{!"branch_weights", i32 19, i32 1}
!294 = !{!"function_entry_count", i64 157}
!295 = !{!"function_entry_count", i64 377582}
!296 = !{!"function_entry_count", i64 124}
!297 = !{!"branch_weights", i32 89, i32 79}
!298 = !{!"branch_weights", i32 19, i32 71}
!299 = distinct !{!299, !214}
!300 = !{!"function_entry_count", i64 514519}
!301 = !{!"branch_weights", i32 210028604, i32 -590479936}
!302 = !{!"branch_weights", i32 486916, i32 1}
!303 = !{!"branch_weights", i32 1, i32 486916}
