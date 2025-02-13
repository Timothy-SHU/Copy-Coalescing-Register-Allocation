; ModuleID = 'XStringCachedAllocator.cpp'
source_filename = "XStringCachedAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.std::reverse_iterator.1" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"struct.xalanc_1_10::XalanListIteratorBase.0" = type { ptr }
%"class.std::reverse_iterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase.0" }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::XStringCached" = type { %"class.xalanc_1_10::XStringBase", %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" }
%"class.xalanc_1_10::XStringBase" = type { %"class.xalanc_1_10::XObject", double, %"class.xalanc_1_10::XObjectResultTreeFragProxy" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XObjectResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", %"class.xalanc_1_10::XObjectResultTreeFragProxyText" }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyText" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock" = type { i16, i32 }
%"struct.std::less" = type { i8 }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerEtb = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEED0Ev = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11destroyNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEi = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10deallocateEPNS5_4NodeE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4backEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE6createERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13allocateBlockEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockC2Et = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEE8allocateEmPKv = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEE10deallocateEPS1_m = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv = comdat any

$_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE10ownsObjectEPKS1_ = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_ = comdat any

$_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE15isOccupiedBlockEPKNS2_9NextBlockE = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPKv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_ = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock10isValidForEt = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE11isInBordersEPKS1_t = comdat any

$_ZNKSt4lessIPKN11xalanc_1_1013XStringCachedEEclES3_S3_ = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8freeNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE12destroyBlockEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv = comdat any

$_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv = comdat any

$_ZN11xalanc_1_1012XalanDestroyINS_13XStringCachedEEEvRT_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE7isEmptyEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_ = comdat any

$_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv = comdat any

$_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_ = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclERS3_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtED2Ev = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = linkonce_odr dso_local constant [61 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [83 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1022XStringCachedAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1022XStringCachedAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XStringCachedAllocatorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XStringCachedAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !166 {
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerEtb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerEtb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 !prof !166 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #7
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %6 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XStringCachedAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !166 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !166 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 !prof !178 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  tail call void @_ZN11xalanc_1_1013XStringCachedC1ERNS_21XPathExecutionContext25GetAndReleaseCachedStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %3) #7
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 !prof !178 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  br i1 %4, label %9, label %5, !prof !179

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !180
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  br i1 %8, label %14, label %9, !prof !181

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !182
  %13 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %10, i16 noundef zeroext %12) #7
  store ptr %13, ptr %2, align 8, !tbaa !180
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %16 = load ptr, ptr %15, align 8, !tbaa !180
  %17 = call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %16) #7
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !183 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1013XStringCachedC1ERNS_21XPathExecutionContext25GetAndReleaseCachedStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !178 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  %6 = load ptr, ptr %5, align 8, !tbaa !180
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %1) #7
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #7
  br i1 %9, label %13, label %10, !prof !184

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  %12 = load ptr, ptr %11, align 8, !tbaa !180
  store ptr %12, ptr %3, align 8, !tbaa !180
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !178 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) #7
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !178 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %9 = alloca %"class.std::reverse_iterator.1", align 8
  %10 = alloca %"class.std::reverse_iterator.1", align 8
  %11 = alloca %"class.std::reverse_iterator.1", align 8
  %12 = alloca ptr, align 8
  %13 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %14 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %15 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #7
  br i1 %15, label %72, label %16, !prof !185

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %14) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %14) #7
  %17 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br i1 %17, label %18, label %40, !prof !186

18:                                               ; preds = %16, %38
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %20 = load ptr, ptr %19, align 8, !tbaa !180
  %21 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #7
  br i1 %21, label %22, label %40, !prof !187

22:                                               ; preds = %18
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %24 = load ptr, ptr %23, align 8, !tbaa !180
  %25 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %1) #7
  br i1 %25, label %26, label %38, !prof !188

26:                                               ; preds = %22
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %28 = load ptr, ptr %27, align 8, !tbaa !180
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %28, ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %14) #7
  %29 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br i1 %29, label %30, label %33, !prof !189

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %32 = load ptr, ptr %31, align 8, !tbaa !180
  store ptr %32, ptr %6, align 8, !tbaa !180
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %7) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !170, !range !190, !noundef !191
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37, !prof !192

37:                                               ; preds = %33
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  br label %40

38:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  %39 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br i1 %39, label %18, label %40, !prof !193, !llvm.loop !194

40:                                               ; preds = %18, %38, %16, %33, %37
  %41 = phi i1 [ false, %37 ], [ false, %33 ], [ true, %16 ], [ true, %38 ], [ true, %18 ]
  %42 = phi i8 [ 1, %37 ], [ 1, %33 ], [ 0, %16 ], [ 0, %38 ], [ 0, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.1") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %14) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.1") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %14) #7
  br i1 %41, label %43, label %68, !prof !196

43:                                               ; preds = %40
  %44 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br i1 %44, label %45, label %68, !prof !196

45:                                               ; preds = %43, %65
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %47 = load ptr, ptr %46, align 8, !tbaa !180
  %48 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef %1) #7
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %50 = load ptr, ptr %49, align 8, !tbaa !180
  br i1 %48, label %51, label %61, !prof !197

51:                                               ; preds = %45
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %50, ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.1") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %14) #7
  %52 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  br i1 %52, label %53, label %56, !prof !198

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %55 = load ptr, ptr %54, align 8, !tbaa !180
  store ptr %55, ptr %12, align 8, !tbaa !180
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %13) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  br label %56

56:                                               ; preds = %53, %51
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !170, !range !190, !noundef !191
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %68, label %60, !prof !199

60:                                               ; preds = %56
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  br label %68

61:                                               ; preds = %45
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %63 = load ptr, ptr %62, align 8, !tbaa !180
  %64 = icmp eq ptr %50, %63
  br i1 %64, label %68, label %65, !prof !200

65:                                               ; preds = %61
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  %67 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #7
  br i1 %67, label %45, label %68, !prof !201

68:                                               ; preds = %61, %65, %43, %40, %56, %60
  %69 = phi i8 [ 1, %60 ], [ 1, %56 ], [ %42, %40 ], [ %42, %43 ], [ %42, %65 ], [ %42, %61 ]
  %70 = and i8 %69, 1
  %71 = icmp ne i8 %70, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %72

72:                                               ; preds = %2, %68
  %73 = phi i1 [ %71, %68 ], [ false, %2 ]
  ret i1 %73
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 !prof !202 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !203 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr %7) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 !prof !166 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !167
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !182
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !204 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  br i1 %8, label %43, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %10 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  store ptr %10, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %11 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  store ptr %11, ptr %4, align 8
  %12 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br i1 %12, label %13, label %24

13:                                               ; preds = %9, %21
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %15 = load ptr, ptr %14, align 8, !tbaa !180
  %16 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #7
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %19 = load ptr, ptr %18, align 8, !tbaa !180
  %20 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %1) #7
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %23 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br i1 %23, label %13, label %24, !llvm.loop !205

24:                                               ; preds = %13, %21, %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  %25 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br i1 %25, label %26, label %39

26:                                               ; preds = %24, %36
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %28 = load ptr, ptr %27, align 8, !tbaa !180
  %29 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef %1) #7
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %32 = load ptr, ptr %31, align 8, !tbaa !180
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %34 = load ptr, ptr %33, align 8, !tbaa !180
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %38 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br i1 %38, label %26, label %39, !llvm.loop !206

39:                                               ; preds = %26, %30, %36, %24
  %40 = phi i1 [ false, %24 ], [ %29, %36 ], [ %29, %30 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %41

41:                                               ; preds = %17, %39
  %42 = phi i1 [ %40, %39 ], [ true, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %43

43:                                               ; preds = %2, %41
  %44 = phi i1 [ %42, %41 ], [ false, %2 ]
  ret i1 %44
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !166 {
  store ptr %1, ptr %0, align 8, !tbaa !207
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !204 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !180
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !182
  %13 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %10, i16 noundef zeroext %12) #7
  store ptr %13, ptr %2, align 8, !tbaa !180
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %16 = load ptr, ptr %15, align 8, !tbaa !180
  %17 = call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %16) #7
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !204 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %5 = load ptr, ptr %4, align 8, !tbaa !180
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !204 {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  %6 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %11
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef %1) #7
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %13 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br i1 %13, label %7, label %14, !llvm.loop !208

14:                                               ; preds = %11, %7, %2
  %15 = phi i1 [ false, %2 ], [ %10, %7 ], [ %10, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i1 %15
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !166 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8, !prof !210

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
          to label %9 unwind label %34

9:                                                ; preds = %8, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
          to label %10 unwind label %32

10:                                               ; preds = %9
  %11 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %12 unwind label %32

12:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br i1 %11, label %13, label %17, !prof !210

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  invoke void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #7
          to label %14 unwind label %32

14:                                               ; preds = %13
  %15 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %15) #7
          to label %16 unwind label %32

16:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %9, !llvm.loop !211

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !212
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi ptr [ %19, %17 ], [ %25, %23 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !213

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !214
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %21) #7
          to label %20 unwind label %30, !llvm.loop !216

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 8, !tbaa !209
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %27) #7
          to label %28 unwind label %34

28:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
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
  call void @__clang_call_terminate(ptr %38) #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !217 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !218 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !219 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !204 {
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !220 {
  %4 = load ptr, ptr %1, align 8, !tbaa !221
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  store ptr %6, ptr %1, align 8, !tbaa !221
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !223 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !224 {
  %3 = load ptr, ptr %0, align 8, !tbaa !207
  %4 = load ptr, ptr %3, align 8, !tbaa !167
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !225 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !226

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #7
  store ptr %6, ptr %2, align 8, !tbaa !209
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %6, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !214
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %6, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !227
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !228 {
  store ptr %1, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !224 {
  %3 = mul i64 %1, 24
  %4 = load ptr, ptr %0, align 8, !tbaa !207
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #7
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !229 {
  %3 = load ptr, ptr %0, align 8, !tbaa !221
  %4 = load ptr, ptr %1, align 8, !tbaa !221
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !230 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %4 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %5 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !232
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !235
  %6 = icmp ult i16 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !236 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !220 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  store i16 %1, ptr %3, align 2, !tbaa !237
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 comdat align 2 !prof !178 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !232
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !235
  %6 = icmp eq i16 %3, %5
  br i1 %6, label %22, label %7, !prof !185

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !238
  %10 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !240
  %12 = icmp eq i16 %9, %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !241
  %15 = zext i16 %9 to i64
  %16 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %14, i64 %15
  br i1 %12, label %17, label %22, !prof !242

17:                                               ; preds = %7
  %18 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPv(ptr noundef %16) #7
  %19 = load i16, ptr %18, align 4, !tbaa !243
  store i16 %19, ptr %10, align 2, !tbaa !240
  %20 = load i16, ptr %2, align 8, !tbaa !232
  %21 = add i16 %20, 1
  store i16 %21, ptr %2, align 8, !tbaa !232
  br label %22

22:                                               ; preds = %7, %17, %1
  %23 = phi ptr [ null, %1 ], [ %16, %17 ], [ %16, %7 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !230 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  %6 = load ptr, ptr %2, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !230 {
  %3 = load ptr, ptr %0, align 8, !tbaa !246
  %4 = load ptr, ptr %1, align 8, !tbaa !246
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !230 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !248 {
  %2 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !248 {
  store ptr %1, ptr %0, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !249 {
  %3 = load ptr, ptr %1, align 8, !tbaa !221
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !227
  store ptr %5, ptr %1, align 8, !tbaa !221
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !250 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !251 {
  %3 = load ptr, ptr %1, align 8, !tbaa !221
  store ptr %3, ptr %0, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !252 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !212
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !253

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  br label %12

10:                                               ; preds = %3
  %11 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #7
  store ptr %11, ptr %4, align 8, !tbaa !212
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %5, %7 ], [ %11, %10 ]
  %14 = phi ptr [ %9, %7 ], [ null, %10 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !207
  %16 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %15) #7
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %13, i64 0, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !227
  store ptr %20, ptr %17, align 8, !tbaa !180
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %13, i64 0, i32 2
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  store ptr %22, ptr %21, align 8, !tbaa !180
  %23 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !227
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %25, i64 0, i32 2
  store ptr %13, ptr %26, align 8, !tbaa !214
  %27 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %27, i64 0, i32 1
  store ptr %13, ptr %28, align 8, !tbaa !227
  store ptr %14, ptr %4, align 8, !tbaa !212
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !252 {
  %4 = load ptr, ptr %1, align 8, !tbaa !180
  store ptr %4, ptr %0, align 8, !tbaa !180
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !220 {
  %5 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32) #7
  %6 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %7 = load i16, ptr %3, align 2, !tbaa !237
  invoke void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i16 noundef zeroext %7) #7
          to label %8 unwind label %10

8:                                                ; preds = %4
  store ptr %6, ptr %1, align 8, !tbaa !180
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %9 = load ptr, ptr %1, align 8, !tbaa !180
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret ptr %9

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !254 {
  store ptr %1, ptr %0, align 8, !tbaa !180
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !167
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #7
  store ptr %8, ptr %4, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !255
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #7
  %4 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !238
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  store i16 0, ptr %5, align 2, !tbaa !240
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !235
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9, !prof !257

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %16, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !241
  %15 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %14, i64 %13
  %16 = add nuw nsw i64 %13, 1
  %17 = trunc i64 %16 to i16
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %15, i16 noundef zeroext %17) #7
  %18 = load i16, ptr %6, align 2, !tbaa !235
  %19 = zext i16 %18 to i64
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %12, label %11, !prof !258, !llvm.loop !259
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !255
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !254 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !255
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !260

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !261
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #7
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #9
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !232
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  store i16 %2, ptr %5, align 2, !tbaa !235
  %6 = zext i16 %2 to i64
  %7 = invoke noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %6, ptr noundef null) #7
          to label %8 unwind label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  store ptr %7, ptr %9, align 8, !tbaa !241
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !262 {
  store i16 %1, ptr %0, align 4, !tbaa !243
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %0, i64 0, i32 1
  store i32 -2228259, ptr %3, align 4, !tbaa !263
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !235
  %6 = zext i16 %5 to i64
  invoke void @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %6) #7
          to label %7 unwind label %8

7:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !220 {
  store ptr %1, ptr %0, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !220 {
  %4 = load ptr, ptr %0, align 8, !tbaa !264
  %5 = mul i64 %1, 80
  %6 = load ptr, ptr %4, align 8, !tbaa !167
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5) #7
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !220 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !220 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5, !prof !265

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !264
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1) #7
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPv(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !178 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !178 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !240
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  store i16 %4, ptr %5, align 8, !tbaa !238
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !204 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %4 = load i64, ptr %0, align 8, !tbaa !180
  store i64 %4, ptr %2, align 8, !tbaa !180
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %5 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  store ptr %5, ptr %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPKv(ptr noundef %1) #7
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %3) #7
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %2 = tail call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #1 comdat align 2 !prof !204 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !266
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !204 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %5 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %6 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa.struct !266
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa !246
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !227
  store ptr %4, ptr %0, align 8, !tbaa !246
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa !246
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #7
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !235
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %1, i16 noundef zeroext %6) #7
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ true, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPKv(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !204 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !267 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !235
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %4) #7
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached>::NextBlock", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !263
  %5 = icmp eq i32 %4, -2228259
  %6 = load i16, ptr %0, align 4
  %7 = icmp ule i16 %6, %1
  %8 = select i1 %5, i1 %7, i1 false
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 !prof !267 {
  %4 = alloca %"struct.std::less", align 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !235
  %7 = icmp ult i16 %6, %2
  br i1 %7, label %8, label %9, !prof !268

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i16 [ %6, %8 ], [ %2, %3 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !241
  %13 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1013XStringCachedEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %12) #8
  br i1 %13, label %19, label %14, !prof !269

14:                                               ; preds = %9
  %15 = load ptr, ptr %11, align 8, !tbaa !241
  %16 = zext i16 %10 to i64
  %17 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %15, i64 %16
  %18 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1013XStringCachedEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %17) #8
  br i1 %18, label %20, label %19, !prof !270

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %14, %19
  %21 = phi i1 [ false, %19 ], [ true, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i1 %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1013XStringCachedEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !271 {
  %4 = icmp ult ptr %1, %2
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %2 = load ptr, ptr %0, align 8, !tbaa !246
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  store ptr %4, ptr %0, align 8, !tbaa !246
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !272 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !273 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !274 {
  %2 = load ptr, ptr %0, align 8, !tbaa !207
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !236 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !275 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !252 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !227
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !214
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !227
  store ptr null, ptr %5, align 8, !tbaa !227
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !212
  store ptr %10, ptr %3, align 8, !tbaa !214
  store ptr %1, ptr %9, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !178 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !238
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !240
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %14, label %8, !prof !242

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !241
  %11 = zext i16 %4 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %10, i64 %11
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %12, i16 noundef zeroext %6) #7
  %13 = load i16, ptr %3, align 8, !tbaa !238
  store i16 %13, ptr %5, align 2, !tbaa !240
  br label %14

14:                                               ; preds = %8, %2
  tail call void @_ZN11xalanc_1_1012XalanDestroyINS_13XStringCachedEEEvRT_(ptr noundef nonnull align 8 dereferenceable(80) %1) #7
  %15 = load i16, ptr %3, align 8, !tbaa !238
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %1, i16 noundef zeroext %15) #7
  %16 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !241
  %18 = ptrtoint ptr %1 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 80
  %22 = trunc i64 %21 to i16
  store i16 %22, ptr %5, align 2, !tbaa !240
  store i16 %22, ptr %3, align 8, !tbaa !238
  %23 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %24 = load i16, ptr %23, align 8, !tbaa !232
  %25 = add i16 %24, -1
  store i16 %25, ptr %23, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 !prof !204 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %10 = load ptr, ptr %9, align 8, !tbaa !180
  %11 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #7
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %14 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %17 = load ptr, ptr %16, align 8, !tbaa !180
  %18 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br i1 %18, label %20, label %21

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %20

20:                                               ; preds = %19, %15
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #7
  br label %21

21:                                               ; preds = %15, %20, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !276 {
  %3 = load ptr, ptr %1, align 8, !tbaa !221
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XStringCached> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  store ptr %5, ptr %1, align 8, !tbaa !221
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator.1") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !277 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator.1") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !178 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !278 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !279 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !280 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanDestroyINS_13XStringCachedEEEvRT_(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat !prof !178 {
  %2 = load ptr, ptr %0, align 8, !tbaa !167
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr noundef nonnull align 8 dereferenceable(80) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !204 {
  %3 = load ptr, ptr %1, align 8, !tbaa !221
  store ptr %3, ptr %0, align 8, !tbaa !246
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !204 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !232
  %4 = icmp eq i16 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !281 {
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !278 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !282 {
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !203 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  store ptr %2, ptr %4, align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br i1 %6, label %7, label %13, !prof !283

7:                                                ; preds = %3, %7
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br i1 %10, label %7, label %11, !prof !284, !llvm.loop !285

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !203 {
  store ptr %1, ptr %0, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !203 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br i1 %5, label %6, label %9, !prof !283

6:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #7
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %8 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br i1 %8, label %6, label %9, !prof !284, !llvm.loop !286

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !220 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %1) #7
  %4 = load ptr, ptr %0, align 8, !tbaa !287
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !220 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !220 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !220 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !265

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !167
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #7
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #1 comdat align 2 !prof !220 {
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !235
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !289

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %26, %1
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  ret void

12:                                               ; preds = %9, %26
  %13 = phi i64 [ 0, %9 ], [ %28, %26 ]
  %14 = phi i16 [ 0, %9 ], [ %27, %26 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !241
  %16 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %15, i64 %13
  %17 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPv(ptr noundef %16) #7
  %18 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %17) #7
          to label %19 unwind label %35

19:                                               ; preds = %12
  br i1 %18, label %20, label %26

20:                                               ; preds = %19
  %21 = load ptr, ptr %10, align 8, !tbaa !241
  %22 = getelementptr inbounds %"class.xalanc_1_10::XStringCached", ptr %21, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !167
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(80) %22) #8
  %25 = add nuw i16 %14, 1
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i16 [ %25, %20 ], [ %14, %19 ]
  %28 = add nuw nsw i64 %13, 1
  %29 = load i16, ptr %2, align 2, !tbaa !235
  %30 = zext i16 %29 to i64
  %31 = icmp ult i64 %28, %30
  %32 = load i16, ptr %3, align 8
  %33 = icmp ult i16 %27, %32
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %12, label %11, !prof !290, !llvm.loop !291

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #9
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!165}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!35 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocatorC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerEtb, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerEtb, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, i64 67113825}
!41 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, i64 67113825}
!42 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1013XStringCachedC1ERNS_21XPathExecutionContext25GetAndReleaseCachedStringERN11xercesc_2_713MemoryManagerE, i64 67113825}
!43 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_, i64 67113825}
!44 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv, i64 67113825}
!45 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv, i64 134227648}
!46 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv, i64 67113823}
!47 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, i64 1750}
!48 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE6createERN11xercesc_2_713MemoryManagerEt, i64 1750}
!49 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_, i64 1750}
!50 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13allocateBlockEv, i64 67113825}
!51 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE16getMemoryManagerEv, i64 67115573}
!52 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv, i64 139169877}
!53 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE16commitAllocationEPS1_, i64 67113825}
!54 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv, i64 67113825}
!55 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv, i64 4942227}
!56 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_, i64 4942227}
!57 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, i64 67113825}
!58 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv, i64 67113825}
!59 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 67113824}
!60 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, i64 67113824}
!61 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 67113832}
!62 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 281127}
!63 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE14blockAvailableEv, i64 8}
!64 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_, i64 898618}
!65 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv, i64 8}
!66 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv, i64 67733267}
!67 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv, i64 67113824}
!68 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, i64 8664507}
!69 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv, i64 1797220}
!70 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13destroyObjectEPS1_, i64 619443}
!71 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 1944}
!72 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 1944}
!73 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_, i64 1944}
!74 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEE13destroyObjectEPS1_, ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv, i64 279167}
!75 = !{ptr @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 4}
!76 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 5}
!77 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, i64 5}
!78 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE16getMemoryManagerEv, i64 5}
!79 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 5}
!80 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, i64 5}
!81 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv, i64 5}
!82 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!83 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 1}
!84 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, i64 1}
!85 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 1}
!86 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10deallocateEPNS5_4NodeE, i64 584}
!87 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv, i64 479681155}
!88 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 479681155}
!89 = !{ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 16814767146}
!90 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv, i64 144129476}
!91 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 144129476}
!92 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEi, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 1748}
!93 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8allocateEm, i64 2}
!94 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 134227650}
!95 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, i64 134227650}
!96 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5emptyEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 134227650}
!97 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, i64 4942226}
!98 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9push_backERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 4942226}
!99 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE6createERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, i64 1748}
!100 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPv, i64 67113823}
!101 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv, i64 134227650}
!102 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 134227650}
!103 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv, i64 134227650}
!104 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 134227650}
!105 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE11getListHeadEv, i64 268455300}
!106 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 16618798}
!107 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8allocateEm, i64 1749}
!108 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE, i64 9899985}
!109 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 39599940}
!110 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1748}
!111 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1748}
!112 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt, i64 1748}
!113 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1748}
!114 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_13XStringCachedEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1748}
!115 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt, i64 1748}
!116 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockC2Et, i64 17471}
!117 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEEC2ERN11xercesc_2_713MemoryManagerE, i64 1748}
!118 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEE8allocateEmPKv, i64 1748}
!119 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEE10deallocateEPS1_m, i64 1748}
!120 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEED2Ev, i64 1748}
!121 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE9ownsBlockEPKS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE11isInBordersEPKS1_t, i64 16754842027}
!122 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtE11isInBordersEPKS1_t, ptr @_ZNKSt4lessIPKN11xalanc_1_1013XStringCachedEEclES3_S3_, i64 18524177257}
!123 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 273397525}
!124 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5frontEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 273397525}
!125 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 4957759}
!126 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 4957759}
!127 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 4942226}
!128 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE9pop_frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 4942226}
!129 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 9898237}
!130 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8freeNodeERNS5_4NodeE, i64 9898237}
!131 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockC2Et, i64 67113826}
!132 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1012XalanDestroyINS_13XStringCachedEEEvRT_, i64 67113825}
!133 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 16685495578}
!134 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, i64 72071666}
!135 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE6rbeginEv, ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, i64 72071666}
!136 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 67113825}
!137 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4rendEv, ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, i64 67113825}
!138 = !{ptr @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, ptr @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, i64 12150054}
!139 = !{ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 14384426}
!140 = !{ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv, i64 14384426}
!141 = !{ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 14384426}
!142 = !{ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEmmEv, i64 2234372}
!143 = !{ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 139185491}
!144 = !{ptr @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv, i64 24300108}
!145 = !{ptr @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 12150054}
!146 = !{ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 24300108}
!147 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 1462}
!148 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 1457}
!149 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_, i64 1457}
!150 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_13XStringCachedEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEv, i64 1457}
!151 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5beginEv, i64 5}
!152 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE3endEv, i64 1462}
!153 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 1462}
!154 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEppEi, i64 1457}
!155 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 1457}
!156 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE8freeNodeERNS5_4NodeE, i64 1457}
!157 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_, i64 1748}
!158 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, i64 1748}
!159 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, i64 1748}
!160 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclERS3_, i64 1747}
!161 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEclERS3_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtED2Ev, i64 1748}
!162 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtED2Ev, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtED2Ev, i64 1748}
!163 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtED2Ev, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlock4castEPv, i64 1}
!164 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtED2Ev, ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE15isOccupiedBlockEPKNS2_9NextBlockE, i64 1}
!165 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!166 = !{!"function_entry_count", i64 1}
!167 = !{!168, !168, i64 0}
!168 = !{!"vtable pointer", !169, i64 0}
!169 = !{!"Simple C++ TBAA"}
!170 = !{!171, !177, i64 40}
!171 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_13XStringCachedEEE", !172, i64 0, !177, i64 40}
!172 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13XStringCachedENS_18ReusableArenaBlockIS1_tEEEE", !173, i64 8, !175, i64 16}
!173 = !{!"short", !174, i64 0}
!174 = !{!"omnipotent char", !169, i64 0}
!175 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEE", !176, i64 0, !176, i64 8, !176, i64 16}
!176 = !{!"any pointer", !174, i64 0}
!177 = !{!"bool", !174, i64 0}
!178 = !{!"function_entry_count", i64 67113825}
!179 = !{!"branch_weights", i32 2, i32 67113825}
!180 = !{!176, !176, i64 0}
!181 = !{!"branch_weights", i32 67112078, i32 1748}
!182 = !{!172, !173, i64 8}
!183 = !{!"function_entry_count", i64 67115573}
!184 = !{!"branch_weights", i32 62171600, i32 4942227}
!185 = !{!"branch_weights", i32 1, i32 67113826}
!186 = !{!"branch_weights", i32 0, i32 1}
!187 = !{!"branch_weights", i32 -108054842, i32 1239461}
!188 = !{!"branch_weights", i32 15538997, i32 -123593838}
!189 = !{!"branch_weights", i32 4940455, i32 57215531}
!190 = !{i8 0, i8 2}
!191 = !{}
!192 = !{!"branch_weights", i32 62155985, i32 1}
!193 = !{!"branch_weights", i32 -106815382, i32 0}
!194 = distinct !{!194, !195}
!195 = !{!"llvm.loop.mustprogress"}
!196 = !{!"branch_weights", i32 7192214, i32 54963771}
!197 = !{!"branch_weights", i32 4957842, i32 2234373}
!198 = !{!"branch_weights", i32 15558, i32 4942285}
!199 = !{!"branch_weights", i32 4957842, i32 1}
!200 = !{!"branch_weights", i32 1, i32 2234373}
!201 = !{!"branch_weights", i32 0, i32 7192214}
!202 = !{!"function_entry_count", i64 4}
!203 = !{!"function_entry_count", i64 5}
!204 = !{!"function_entry_count", i64 0}
!205 = distinct !{!205, !195}
!206 = distinct !{!206, !195}
!207 = !{!175, !176, i64 0}
!208 = distinct !{!208, !195}
!209 = !{!175, !176, i64 8}
!210 = !{!"branch_weights", i32 1, i32 2}
!211 = distinct !{!211, !195}
!212 = !{!175, !176, i64 16}
!213 = !{!"branch_weights", i32 2, i32 1749}
!214 = !{!215, !176, i64 16}
!215 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEE4NodeE", !176, i64 0, !176, i64 8, !176, i64 16}
!216 = distinct !{!216, !195}
!217 = !{!"function_entry_count", i64 479681155}
!218 = !{!"function_entry_count", i64 16814767146}
!219 = !{!"function_entry_count", i64 144129476}
!220 = !{!"function_entry_count", i64 1748}
!221 = !{!222, !176, i64 0}
!222 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEE", !176, i64 0}
!223 = !{!"function_entry_count", i64 49499925}
!224 = !{!"function_entry_count", i64 1749}
!225 = !{!"function_entry_count", i64 892265931}
!226 = !{!"branch_weights", i32 2, i32 892265931}
!227 = !{!215, !176, i64 8}
!228 = !{!"function_entry_count", i64 623812379}
!229 = !{!"function_entry_count", i64 16826917200}
!230 = !{!"function_entry_count", i64 134227650}
!231 = !{!"function_entry_count", i64 16886835304}
!232 = !{!233, !173, i64 8}
!233 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_13XStringCachedEtEE", !234, i64 0, !173, i64 8, !173, i64 10, !176, i64 16}
!234 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_13XStringCachedEEE", !176, i64 0}
!235 = !{!233, !173, i64 10}
!236 = !{!"function_entry_count", i64 4942226}
!237 = !{!173, !173, i64 0}
!238 = !{!239, !173, i64 24}
!239 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtEE", !233, i64 0, !173, i64 24, !173, i64 26}
!240 = !{!239, !173, i64 26}
!241 = !{!233, !176, i64 16}
!242 = !{!"branch_weights", i32 67113826, i32 1}
!243 = !{!244, !173, i64 0}
!244 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_13XStringCachedEtE9NextBlockE", !173, i64 0, !245, i64 4}
!245 = !{!"int", !174, i64 0}
!246 = !{!247, !176, i64 0}
!247 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_13XStringCachedEtEEEENS_9XalanListIS5_E4NodeEEE", !176, i64 0}
!248 = !{!"function_entry_count", i64 268455300}
!249 = !{!"function_entry_count", i64 16618798}
!250 = !{!"function_entry_count", i64 33857387535}
!251 = !{!"function_entry_count", i64 16884940412}
!252 = !{!"function_entry_count", i64 9899985}
!253 = !{!"branch_weights", i32 1749, i32 9898238}
!254 = !{!"function_entry_count", i64 50702}
!255 = !{!256, !176, i64 8}
!256 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !176, i64 0, !176, i64 8}
!257 = !{!"branch_weights", i32 1, i32 1748}
!258 = !{!"branch_weights", i32 15733, i32 1748}
!259 = distinct !{!259, !195}
!260 = !{!"branch_weights", i32 50703, i32 1}
!261 = !{!256, !176, i64 0}
!262 = !{!"function_entry_count", i64 67131305}
!263 = !{!244, !245, i64 4}
!264 = !{!234, !176, i64 0}
!265 = !{!"branch_weights", i32 1, i32 1749}
!266 = !{i64 0, i64 8, !180}
!267 = !{!"function_entry_count", i64 16754842027}
!268 = !{!"branch_weights", i32 1, i32 -106256789}
!269 = !{!"branch_weights", i32 -548590595, i32 442333807}
!270 = !{!"branch_weights", i32 67113826, i32 1702221401}
!271 = !{!"function_entry_count", i64 18524177252}
!272 = !{!"function_entry_count", i64 273397525}
!273 = !{!"function_entry_count", i64 4957759}
!274 = !{!"function_entry_count", i64 67115578}
!275 = !{!"function_entry_count", i64 9898237}
!276 = !{!"function_entry_count", i64 16685495578}
!277 = !{!"function_entry_count", i64 72071666}
!278 = !{!"function_entry_count", i64 12150054}
!279 = !{!"function_entry_count", i64 14384426}
!280 = !{!"function_entry_count", i64 2234372}
!281 = !{!"function_entry_count", i64 139185491}
!282 = !{!"function_entry_count", i64 24300108}
!283 = !{!"branch_weights", i32 191, i32 1}
!284 = !{!"branch_weights", i32 55777, i32 191}
!285 = distinct !{!285, !195}
!286 = distinct !{!286, !195}
!287 = !{!288, !176, i64 0}
!288 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_13XStringCachedEtEEEE", !176, i64 0}
!289 = !{!"branch_weights", i32 1749, i32 3059002}
!290 = !{!"branch_weights", i32 0, i32 1749}
!291 = distinct !{!291, !195}
