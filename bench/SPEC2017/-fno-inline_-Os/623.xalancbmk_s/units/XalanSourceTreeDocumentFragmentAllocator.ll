; ModuleID = 'XalanSourceTreeDocumentFragmentAllocator.cpp'
source_filename = "XalanSourceTreeDocumentFragmentAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanListIteratorBase.0" = type { ptr }
%"class.std::reverse_iterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase.0" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::XalanSourceTreeDocumentFragment" = type { %"class.xalanc_1_10::XalanDocumentFragment", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment>::NextBlock" = type { i16, i32 }
%"struct.std::less" = type { i8 }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }
%"class.std::reverse_iterator.33" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerEtb = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEED0Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11destroyNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEi = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10deallocateEPNS5_4NodeE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4backEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE6createERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13allocateBlockEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlockC2Et = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEE8allocateEmPKv = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEE10deallocateEPS1_m = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock4castEPv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv = comdat any

$_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE10ownsObjectEPKS1_ = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_ = comdat any

$_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE15isOccupiedBlockEPKNS2_9NextBlockE = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock4castEPKv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_ = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock10isValidForEt = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE11isInBordersEPKS1_t = comdat any

$_ZNKSt4lessIPKN11xalanc_1_1031XalanSourceTreeDocumentFragmentEEclES3_S3_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8freeNodeERNS5_4NodeE = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_ = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclERS3_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtED2Ev = comdat any

$_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERKS0_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE12destroyBlockEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv = comdat any

$_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv = comdat any

$_ZN11xalanc_1_1012XalanDestroyINS_31XalanSourceTreeDocumentFragmentEEEvRT_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE7isEmptyEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_ = comdat any

$_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE = linkonce_odr dso_local constant [79 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [101 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN11xalanc_1_1031XalanSourceTreeDocumentFragmentE = external unnamed_addr constant { [30 x ptr] }, align 8

@_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !149 {
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerEtb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerEtb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 !prof !149 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #8
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !150
  %6 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 !prof !149 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !150
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !161
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !150
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 !prof !162 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  br i1 %4, label %9, label %5, !prof !163

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  br i1 %8, label %14, label %9, !prof !165

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !161
  %13 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %10, i16 noundef zeroext %12) #8
  store ptr %13, ptr %2, align 8, !tbaa !164
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %16) #8
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %1) #8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #8
  br i1 %9, label %13, label %10, !prof !166

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  %12 = load ptr, ptr %11, align 8, !tbaa !164
  store ptr %12, ptr %3, align 8, !tbaa !164
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  br i1 %8, label %43, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %10 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  store ptr %10, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %11 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  store ptr %11, ptr %4, align 8
  %12 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br i1 %12, label %13, label %24

13:                                               ; preds = %9, %21
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %15 = load ptr, ptr %14, align 8, !tbaa !164
  %16 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #8
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  %20 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %1) #8
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %23 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br i1 %23, label %13, label %24, !llvm.loop !168

24:                                               ; preds = %13, %21, %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  %25 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br i1 %25, label %26, label %39

26:                                               ; preds = %24, %36
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %28 = load ptr, ptr %27, align 8, !tbaa !164
  %29 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef %1) #8
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %32 = load ptr, ptr %31, align 8, !tbaa !164
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %38 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br i1 %38, label %26, label %39, !llvm.loop !170

39:                                               ; preds = %26, %30, %36, %24
  %40 = phi i1 [ false, %24 ], [ %29, %36 ], [ %29, %30 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %41

41:                                               ; preds = %17, %39
  %42 = phi i1 [ %40, %39 ], [ true, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %43

43:                                               ; preds = %2, %41
  %44 = phi i1 [ %42, %41 ], [ false, %2 ]
  ret i1 %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !171 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr %7) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !149 {
  store ptr %1, ptr %0, align 8, !tbaa !172
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !161
  %13 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %10, i16 noundef zeroext %12) #8
  store ptr %13, ptr %2, align 8, !tbaa !164
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %16) #8
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %11
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef %1) #8
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %13 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br i1 %13, label %7, label %14, !llvm.loop !173

14:                                               ; preds = %11, %7, %2
  %15 = phi i1 [ false, %2 ], [ %10, %7 ], [ %10, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i1 %15
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !174
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8, !prof !175

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
          to label %9 unwind label %34

9:                                                ; preds = %8, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
          to label %10 unwind label %32

10:                                               ; preds = %9
  %11 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %12 unwind label %32

12:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %11, label %13, label %17, !prof !175

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  invoke void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #8
          to label %14 unwind label %32

14:                                               ; preds = %13
  %15 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %15) #8
          to label %16 unwind label %32

16:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %9, !llvm.loop !176

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !177
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi ptr [ %19, %17 ], [ %25, %23 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !178

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !179
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %21) #8
          to label %20 unwind label %30, !llvm.loop !181

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 8, !tbaa !174
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %27) #8
          to label %28 unwind label %34

28:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %29

29:                                               ; preds = %28, %1
  ret void

30:                                               ; preds = %23
  %31 = landingpad { ptr, i32 }
          catch ptr null
  br label %36

32:                                               ; preds = %14, %13, %10, %9
  %33 = landingpad { ptr, i32 }
          catch ptr null
  br label %36

34:                                               ; preds = %26, %8
  %35 = landingpad { ptr, i32 }
          catch ptr null
  br label %36

36:                                               ; preds = %32, %34, %30
  %37 = phi { ptr, i32 } [ %31, %30 ], [ %33, %32 ], [ %35, %34 ]
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #10
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !183 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %4 = load ptr, ptr %1, align 8, !tbaa !185
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !179
  store ptr %6, ptr %1, align 8, !tbaa !185
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !187 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !188 {
  %3 = load ptr, ptr %0, align 8, !tbaa !172
  %4 = load ptr, ptr %3, align 8, !tbaa !150
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !189 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !190

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #8
  store ptr %6, ptr %2, align 8, !tbaa !174
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %6, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !179
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %6, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !191
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !192 {
  store ptr %1, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !188 {
  %3 = mul i64 %1, 24
  %4 = load ptr, ptr %0, align 8, !tbaa !172
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !183 {
  %3 = load ptr, ptr %0, align 8, !tbaa !185
  %4 = load ptr, ptr %1, align 8, !tbaa !185
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !193 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %4 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !194 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !195
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !198
  %6 = icmp ult i16 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  store i16 %1, ptr %3, align 2, !tbaa !199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !200 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !195
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !198
  %6 = icmp eq i16 %3, %5
  br i1 %6, label %22, label %7, !prof !201

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !202
  %10 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !204
  %12 = icmp eq i16 %9, %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !205
  %15 = zext i16 %9 to i64
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %14, i64 %15
  br i1 %12, label %17, label %22, !prof !166

17:                                               ; preds = %7
  %18 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock4castEPv(ptr noundef %16) #8
  %19 = load i16, ptr %18, align 4, !tbaa !206
  store i16 %19, ptr %10, align 2, !tbaa !204
  %20 = load i16, ptr %2, align 8, !tbaa !195
  %21 = add i16 %20, 1
  store i16 %21, ptr %2, align 8, !tbaa !195
  br label %22

22:                                               ; preds = %7, %17, %1
  %23 = phi ptr [ null, %1 ], [ %16, %17 ], [ %16, %7 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !193 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = load ptr, ptr %2, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !193 {
  %3 = load ptr, ptr %0, align 8, !tbaa !209
  %4 = load ptr, ptr %1, align 8, !tbaa !209
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !193 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !211 {
  %2 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !211 {
  store ptr %1, ptr %0, align 8, !tbaa !209
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = load ptr, ptr %1, align 8, !tbaa !185
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  store ptr %5, ptr %1, align 8, !tbaa !185
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %2 = load ptr, ptr %0, align 8, !tbaa !185
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !213 {
  %3 = load ptr, ptr %1, align 8, !tbaa !185
  store ptr %3, ptr %0, align 8, !tbaa !185
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !177
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !214

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !179
  br label %12

10:                                               ; preds = %3
  %11 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #8
  store ptr %11, ptr %4, align 8, !tbaa !177
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %5, %7 ], [ %11, %10 ]
  %14 = phi ptr [ %9, %7 ], [ null, %10 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !172
  %16 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %15) #8
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %13, i64 0, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !191
  store ptr %20, ptr %17, align 8, !tbaa !164
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %13, i64 0, i32 2
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  store ptr %22, ptr %21, align 8, !tbaa !164
  %23 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !191
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %25, i64 0, i32 2
  store ptr %13, ptr %26, align 8, !tbaa !179
  %27 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %27, i64 0, i32 1
  store ptr %13, ptr %28, align 8, !tbaa !191
  store ptr %14, ptr %4, align 8, !tbaa !177
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !149 {
  %4 = load ptr, ptr %1, align 8, !tbaa !164
  store ptr %4, ptr %0, align 8, !tbaa !164
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !149 {
  %5 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32) #8
  %6 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  %7 = load i16, ptr %3, align 2, !tbaa !199
  invoke void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i16 noundef zeroext %7) #8
          to label %8 unwind label %10

8:                                                ; preds = %4
  store ptr %6, ptr %1, align 8, !tbaa !164
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  %9 = load ptr, ptr %1, align 8, !tbaa !164
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  ret ptr %9

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !215 {
  store ptr %1, ptr %0, align 8, !tbaa !164
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !150
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #8
  store ptr %8, ptr %4, align 8, !tbaa !216
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !215 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !202
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  store i16 0, ptr %5, align 2, !tbaa !204
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !198
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9, !prof !218

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %16, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !205
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %14, i64 %13
  %16 = add nuw nsw i64 %13, 1
  %17 = trunc i64 %16 to i16
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %15, i16 noundef zeroext %17) #8
  %18 = load i16, ptr %6, align 2, !tbaa !198
  %19 = zext i16 %18 to i64
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %12, label %11, !prof !219, !llvm.loop !220
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !215 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !216
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !215 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !216
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !221

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !222
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #8
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !195
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  store i16 %2, ptr %5, align 2, !tbaa !198
  %6 = zext i16 %2 to i64
  %7 = invoke noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %6, ptr noundef null) #8
          to label %8 unwind label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  store ptr %7, ptr %9, align 8, !tbaa !205
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !223 {
  store i16 %1, ptr %0, align 4, !tbaa !206
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment>::NextBlock", ptr %0, i64 0, i32 1
  store i32 -2228259, ptr %3, align 4, !tbaa !224
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !198
  %6 = zext i16 %5 to i64
  invoke void @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %6) #8
          to label %7 unwind label %8

7:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !149 {
  store ptr %1, ptr %0, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %4 = load ptr, ptr %0, align 8, !tbaa !225
  %5 = shl i64 %1, 5
  %6 = load ptr, ptr %4, align 8, !tbaa !150
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5) #8
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !149 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5, !prof !175

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !225
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1) #8
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !226 {
  %2 = load ptr, ptr %0, align 8, !tbaa !172
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock4castEPv(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !162 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !162 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !204
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  store i16 %4, ptr %5, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !167 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %4 = load i64, ptr %0, align 8, !tbaa !164
  store i64 %4, ptr %2, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  store ptr %5, ptr %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock4castEPKv(ptr noundef %1) #8
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %3) #8
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %2 = tail call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #1 comdat align 2 !prof !167 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !227
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !167 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %6 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %2 = load ptr, ptr %0, align 8, !tbaa.struct !227
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %2 = load ptr, ptr %0, align 8, !tbaa !209
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !191
  store ptr %4, ptr %0, align 8, !tbaa !209
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %2 = load ptr, ptr %0, align 8, !tbaa !209
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #8
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !198
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %1, i16 noundef zeroext %6) #8
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ true, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock4castEPKv(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !198
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %4) #8
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment>::NextBlock", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !224
  %5 = icmp eq i32 %4, -2228259
  %6 = load i16, ptr %0, align 4
  %7 = icmp ule i16 %6, %1
  %8 = select i1 %5, i1 %7, i1 false
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 !prof !162 {
  %4 = alloca %"struct.std::less", align 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !198
  %7 = icmp ult i16 %6, %2
  br i1 %7, label %8, label %9, !prof !201

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i16 [ %6, %8 ], [ %2, %3 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !205
  %13 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1031XalanSourceTreeDocumentFragmentEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %12) #9
  br i1 %13, label %19, label %14, !prof !201

14:                                               ; preds = %9
  %15 = load ptr, ptr %11, align 8, !tbaa !205
  %16 = zext i16 %10 to i64
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %15, i64 %16
  %18 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1031XalanSourceTreeDocumentFragmentEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %17) #9
  br i1 %18, label %20, label %19, !prof !166

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %14, %19
  %21 = phi i1 [ false, %19 ], [ true, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i1 %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1031XalanSourceTreeDocumentFragmentEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !193 {
  %4 = icmp ult ptr %1, %2
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !228 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !149 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !191
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !179
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !191
  store ptr null, ptr %5, align 8, !tbaa !191
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  store ptr %10, ptr %3, align 8, !tbaa !179
  store ptr %1, ptr %9, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %2 = load ptr, ptr %0, align 8, !tbaa !209
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  store ptr %4, ptr %0, align 8, !tbaa !209
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !171 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  store ptr %2, ptr %4, align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br i1 %6, label %7, label %13, !prof !229

7:                                                ; preds = %3, %7
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  %9 = load ptr, ptr %8, align 8, !tbaa !164
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br i1 %10, label %7, label %11, !prof !230, !llvm.loop !231

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !171 {
  store ptr %1, ptr %0, align 8, !tbaa !164
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !171 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %5, label %6, label %9, !prof !229

6:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #8
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %8 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br i1 %8, label %6, label %9, !prof !230, !llvm.loop !232

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %1) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !233
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %3 = load ptr, ptr %1, align 8, !tbaa !185
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanSourceTreeDocumentFragment> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  store ptr %5, ptr %1, align 8, !tbaa !185
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !149 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !149 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !175

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #8
  %6 = load ptr, ptr %2, align 8, !tbaa !150
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #1 comdat align 2 !prof !149 {
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !198
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !235

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %26, %1
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  ret void

12:                                               ; preds = %9, %26
  %13 = phi i64 [ 0, %9 ], [ %28, %26 ]
  %14 = phi i16 [ 0, %9 ], [ %27, %26 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !205
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %15, i64 %13
  %17 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock4castEPv(ptr noundef %16) #8
  %18 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %17) #8
          to label %19 unwind label %35

19:                                               ; preds = %12
  br i1 %18, label %20, label %26

20:                                               ; preds = %19
  %21 = load ptr, ptr %10, align 8, !tbaa !205
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %21, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !150
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(32) %22) #9
  %25 = add nuw i16 %14, 1
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i16 [ %25, %20 ], [ %14, %19 ]
  %28 = add nuw nsw i64 %13, 1
  %29 = load i16, ptr %2, align 2, !tbaa !198
  %30 = zext i16 %29 to i64
  %31 = icmp ult i64 %28, %30
  %32 = load i16, ptr %3, align 8
  %33 = icmp ult i16 %27, %32
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %12, label %11, !prof !230, !llvm.loop !236

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !149 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator6createERNS_23XalanSourceTreeDocumentE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(1056) %1) local_unnamed_addr #0 align 2 !prof !162 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC1ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(1056) %1) #8
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3) #8
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC1ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1056)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator6createERKNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 !prof !167 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1) #8
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1021XalanDocumentFragmentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanSourceTreeDocumentFragmentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !150
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanDocumentFragmentC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator7destroyEPNS_31XalanSourceTreeDocumentFragmentE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !162 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) #8
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %9 = alloca %"class.std::reverse_iterator.33", align 8
  %10 = alloca %"class.std::reverse_iterator.33", align 8
  %11 = alloca %"class.std::reverse_iterator.33", align 8
  %12 = alloca ptr, align 8
  %13 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %14 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %15 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #8
  br i1 %15, label %72, label %16, !prof !201

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %14) #8
  %17 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br i1 %17, label %18, label %40, !prof !237

18:                                               ; preds = %16, %38
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %20 = load ptr, ptr %19, align 8, !tbaa !164
  %21 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #8
  br i1 %21, label %22, label %40, !prof !166

22:                                               ; preds = %18
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %24 = load ptr, ptr %23, align 8, !tbaa !164
  %25 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %1) #8
  br i1 %25, label %26, label %38, !prof !166

26:                                               ; preds = %22
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %28 = load ptr, ptr %27, align 8, !tbaa !164
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %28, ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %14) #8
  %29 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br i1 %29, label %30, label %33, !prof !201

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %32 = load ptr, ptr %31, align 8, !tbaa !164
  store ptr %32, ptr %6, align 8, !tbaa !164
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %7) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !153, !range !238, !noundef !239
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37, !prof !166

37:                                               ; preds = %33
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  br label %40

38:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  %39 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br i1 %39, label %18, label %40, !prof !240, !llvm.loop !241

40:                                               ; preds = %18, %38, %16, %33, %37
  %41 = phi i1 [ false, %37 ], [ false, %33 ], [ true, %16 ], [ true, %38 ], [ true, %18 ]
  %42 = phi i8 [ 1, %37 ], [ 1, %33 ], [ 0, %16 ], [ 0, %38 ], [ 0, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.33") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.33") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %14) #8
  br i1 %41, label %43, label %68, !prof !242

43:                                               ; preds = %40
  %44 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  br i1 %44, label %45, label %68, !prof !242

45:                                               ; preds = %43, %65
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  %47 = load ptr, ptr %46, align 8, !tbaa !164
  %48 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef %1) #8
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  %50 = load ptr, ptr %49, align 8, !tbaa !164
  br i1 %48, label %51, label %61

51:                                               ; preds = %45
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %50, ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.33") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %14) #8
  %52 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %55 = load ptr, ptr %54, align 8, !tbaa !164
  store ptr %55, ptr %12, align 8, !tbaa !164
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %13) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  br label %56

56:                                               ; preds = %53, %51
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !153, !range !238, !noundef !239
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  br label %68

61:                                               ; preds = %45
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %63 = load ptr, ptr %62, align 8, !tbaa !164
  %64 = icmp eq ptr %50, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  %67 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #8
  br i1 %67, label %45, label %68, !prof !243

68:                                               ; preds = %61, %65, %43, %40, %56, %60
  %69 = phi i8 [ 1, %60 ], [ 1, %56 ], [ %42, %40 ], [ %42, %43 ], [ %42, %65 ], [ %42, %61 ]
  %70 = and i8 %69, 1
  %71 = icmp ne i8 %70, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %72

72:                                               ; preds = %2, %68
  %73 = phi i1 [ %71, %68 ], [ false, %2 ]
  ret i1 %73
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !202
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !204
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %14, label %8, !prof !166

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !205
  %11 = zext i16 %4 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocumentFragment", ptr %10, i64 %11
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %12, i16 noundef zeroext %6) #8
  %13 = load i16, ptr %3, align 8, !tbaa !202
  store i16 %13, ptr %5, align 2, !tbaa !204
  br label %14

14:                                               ; preds = %8, %2
  tail call void @_ZN11xalanc_1_1012XalanDestroyINS_31XalanSourceTreeDocumentFragmentEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %1) #8
  %15 = load i16, ptr %3, align 8, !tbaa !202
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %1, i16 noundef zeroext %15) #8
  %16 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !205
  %18 = ptrtoint ptr %1 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 5
  %22 = trunc i64 %21 to i16
  store i16 %22, ptr %5, align 2, !tbaa !204
  store i16 %22, ptr %3, align 8, !tbaa !202
  %23 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %24 = load i16, ptr %23, align 8, !tbaa !195
  %25 = add i16 %24, -1
  store i16 %25, ptr %23, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #8
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6) #8
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #8
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #8
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %14 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %17 = load ptr, ptr %16, align 8, !tbaa !164
  %18 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br i1 %18, label %20, label %21

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  br label %20

20:                                               ; preds = %19, %15
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #8
  br label %21

21:                                               ; preds = %15, %20, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator.33") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator.33") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !167 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !167 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanDestroyINS_31XalanSourceTreeDocumentFragmentEEEvRT_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat !prof !162 {
  %2 = load ptr, ptr %0, align 8, !tbaa !150
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !167 {
  %3 = load ptr, ptr %1, align 8, !tbaa !185
  store ptr %3, ptr %0, align 8, !tbaa !209
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !195
  %4 = icmp eq i16 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !193 {
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !167 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !167 {
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 !prof !244 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!148}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!36 = !{ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerEtb, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerEtb, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEED2Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv, i64 37275}
!42 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv, i64 74548}
!43 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv, i64 37273}
!44 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, i64 3}
!45 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE6createERN11xercesc_2_713MemoryManagerEt, i64 3}
!46 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_, i64 3}
!47 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13allocateBlockEv, i64 37275}
!48 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv, i64 74551}
!49 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE16commitAllocationEPS1_, i64 37275}
!50 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv, i64 37275}
!51 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9pop_frontEv, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9push_backERKS4_, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, i64 4}
!54 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, i64 4}
!55 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE16getMemoryManagerEv, i64 4}
!56 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 4}
!57 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, i64 4}
!58 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv, i64 4}
!59 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, i64 1}
!60 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, i64 1}
!61 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEED2Ev, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 1}
!62 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10deallocateEPNS5_4NodeE, i64 2}
!63 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv, i64 260934}
!64 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 260934}
!65 = !{ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 74561}
!66 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv, i64 74560}
!67 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 74560}
!68 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEi, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 1}
!69 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8allocateEm, i64 2}
!70 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, i64 74550}
!71 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, i64 74550}
!72 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 74550}
!73 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE6createERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE16getMemoryManagerEv, i64 37276}
!75 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlock4castEPv, i64 37273}
!76 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv, i64 74550}
!77 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 74550}
!78 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv, i64 74550}
!79 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 74550}
!80 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE11getListHeadEv, i64 149100}
!81 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8allocateEm, i64 1}
!82 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE, i64 1}
!83 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 4}
!84 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!85 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!86 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlockC2Et, i64 6}
!91 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEE8allocateEmPKv, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEE10deallocateEPS1_m, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEED2Ev, i64 1}
!95 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE11isInBordersEPKS1_t, i64 37275}
!96 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE11isInBordersEPKS1_t, ptr @_ZNKSt4lessIPKN11xalanc_1_1031XalanSourceTreeDocumentFragmentEEclES3_S3_, i64 74549}
!97 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, i64 149099}
!98 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5frontEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 149099}
!99 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, i64 1}
!100 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 1}
!101 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 6}
!102 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 2}
!103 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_, i64 2}
!104 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv, i64 2}
!105 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, i64 4}
!106 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, i64 6}
!107 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 6}
!108 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEi, i64 2}
!109 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 2}
!110 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE8freeNodeERNS5_4NodeE, i64 2}
!111 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_, i64 1}
!112 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, i64 1}
!115 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclERS3_, i64 1}
!116 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEclERS3_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtED2Ev, i64 1}
!117 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtED2Ev, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtED2Ev, i64 1}
!118 = !{ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 1}
!119 = !{ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator6createERNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13allocateBlockEv, i64 37275}
!120 = !{ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator6createERNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, i64 37275}
!121 = !{ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator6createERNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1031XalanSourceTreeDocumentFragmentC1ERN11xercesc_2_713MemoryManagerERNS_23XalanSourceTreeDocumentE, i64 37275}
!122 = !{ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator6createERNS_23XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE16commitAllocationEPS1_, i64 37275}
!123 = !{ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator7destroyEPNS_31XalanSourceTreeDocumentFragmentE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, i64 37275}
!124 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5emptyEv, i64 37275}
!125 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, i64 74256}
!126 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, i64 37274}
!127 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 74257}
!128 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 110950}
!129 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE14blockAvailableEv, i64 36984}
!130 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtE9ownsBlockEPKS1_, i64 36983}
!131 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13destroyObjectEPS1_, i64 36982}
!132 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 1}
!133 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 1}
!134 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE10push_frontERKS4_, i64 1}
!135 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE12destroyBlockEv, i64 1}
!136 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEppEv, i64 1}
!137 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv, i64 37274}
!138 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv, i64 37274}
!139 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEE13destroyObjectEPS1_, ptr @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, i64 1}
!140 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlockC2Et, i64 37276}
!141 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1012XalanDestroyINS_31XalanSourceTreeDocumentFragmentEEEvRT_, i64 37275}
!142 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE3endEv, i64 37275}
!143 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE6rbeginEv, ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, i64 37275}
!144 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE5beginEv, i64 37275}
!145 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4rendEv, ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, i64 37275}
!146 = !{ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_31XalanSourceTreeDocumentFragmentEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 74550}
!147 = !{ptr @_ZN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 3}
!148 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!149 = !{!"function_entry_count", i64 1}
!150 = !{!151, !151, i64 0}
!151 = !{!"vtable pointer", !152, i64 0}
!152 = !{!"Simple C++ TBAA"}
!153 = !{!154, !160, i64 40}
!154 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE", !155, i64 0, !160, i64 40}
!155 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE", !156, i64 8, !158, i64 16}
!156 = !{!"short", !157, i64 0}
!157 = !{!"omnipotent char", !152, i64 0}
!158 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEE", !159, i64 0, !159, i64 8, !159, i64 16}
!159 = !{!"any pointer", !157, i64 0}
!160 = !{!"bool", !157, i64 0}
!161 = !{!155, !156, i64 8}
!162 = !{!"function_entry_count", i64 37275}
!163 = !{!"branch_weights", i32 2, i32 37275}
!164 = !{!159, !159, i64 0}
!165 = !{!"branch_weights", i32 37275, i32 1}
!166 = !{!"branch_weights", i32 37276, i32 1}
!167 = !{!"function_entry_count", i64 0}
!168 = distinct !{!168, !169}
!169 = !{!"llvm.loop.mustprogress"}
!170 = distinct !{!170, !169}
!171 = !{!"function_entry_count", i64 4}
!172 = !{!158, !159, i64 0}
!173 = distinct !{!173, !169}
!174 = !{!158, !159, i64 8}
!175 = !{!"branch_weights", i32 1, i32 2}
!176 = distinct !{!176, !169}
!177 = !{!158, !159, i64 16}
!178 = !{!"branch_weights", i32 2, i32 2}
!179 = !{!180, !159, i64 16}
!180 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEE4NodeE", !159, i64 0, !159, i64 8, !159, i64 16}
!181 = distinct !{!181, !169}
!182 = !{!"function_entry_count", i64 260934}
!183 = !{!"function_entry_count", i64 74561}
!184 = !{!"function_entry_count", i64 74560}
!185 = !{!186, !159, i64 0}
!186 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEE", !159, i64 0}
!187 = !{!"function_entry_count", i64 5}
!188 = !{!"function_entry_count", i64 2}
!189 = !{!"function_entry_count", i64 484594}
!190 = !{!"branch_weights", i32 2, i32 484594}
!191 = !{!180, !159, i64 8}
!192 = !{!"function_entry_count", i64 335495}
!193 = !{!"function_entry_count", i64 74550}
!194 = !{!"function_entry_count", i64 111824}
!195 = !{!196, !156, i64 8}
!196 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_31XalanSourceTreeDocumentFragmentEtEE", !197, i64 0, !156, i64 8, !156, i64 10, !159, i64 16}
!197 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_31XalanSourceTreeDocumentFragmentEEE", !159, i64 0}
!198 = !{!196, !156, i64 10}
!199 = !{!156, !156, i64 0}
!200 = !{!"function_entry_count", i64 37276}
!201 = !{!"branch_weights", i32 1, i32 37276}
!202 = !{!203, !156, i64 24}
!203 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEE", !196, i64 0, !156, i64 24, !156, i64 26}
!204 = !{!203, !156, i64 26}
!205 = !{!196, !159, i64 16}
!206 = !{!207, !156, i64 0}
!207 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtE9NextBlockE", !156, i64 0, !208, i64 4}
!208 = !{!"int", !157, i64 0}
!209 = !{!210, !159, i64 0}
!210 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEENS_9XalanListIS5_E4NodeEEE", !159, i64 0}
!211 = !{!"function_entry_count", i64 149100}
!212 = !{!"function_entry_count", i64 260925}
!213 = !{!"function_entry_count", i64 74551}
!214 = !{!"branch_weights", i32 2, i32 1}
!215 = !{!"function_entry_count", i64 50702}
!216 = !{!217, !159, i64 8}
!217 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !159, i64 0, !159, i64 8}
!218 = !{!"branch_weights", i32 1, i32 127}
!219 = !{!"branch_weights", i32 577, i32 127}
!220 = distinct !{!220, !169}
!221 = !{!"branch_weights", i32 50703, i32 1}
!222 = !{!217, !159, i64 0}
!223 = !{!"function_entry_count", i64 37285}
!224 = !{!207, !208, i64 4}
!225 = !{!197, !159, i64 0}
!226 = !{!"function_entry_count", i64 37280}
!227 = !{i64 0, i64 8, !164}
!228 = !{!"function_entry_count", i64 149099}
!229 = !{!"branch_weights", i32 2, i32 3}
!230 = !{!"branch_weights", i32 0, i32 2}
!231 = distinct !{!231, !169}
!232 = distinct !{!232, !169}
!233 = !{!234, !159, i64 0}
!234 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEE", !159, i64 0}
!235 = !{!"branch_weights", i32 2, i32 5}
!236 = distinct !{!236, !169}
!237 = !{!"branch_weights", i32 127, i32 1}
!238 = !{i8 0, i8 2}
!239 = !{}
!240 = !{!"branch_weights", i32 4771201, i32 127}
!241 = distinct !{!241, !169}
!242 = !{!"branch_weights", i32 1, i32 37275}
!243 = !{!"branch_weights", i32 0, i32 1}
!244 = !{!"function_entry_count", i64 3}
