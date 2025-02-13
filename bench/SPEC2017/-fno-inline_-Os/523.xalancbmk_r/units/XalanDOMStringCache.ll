; ModuleID = 'XalanDOMStringCache.cpp'
source_filename = "XalanDOMStringCache.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.std::reverse_iterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase.1" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"struct.std::less" = type { i8 }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock" = type { i16, i32 }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZSt4findIPPN11xalanc_1_1014XalanDOMStringES2_ET_S4_S4_RKT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1031XalanDOMStringReusableAllocator7destroyERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1031XalanDOMStringReusableAllocator5resetEv = comdat any

$_ZN11xalanc_1_1014XalanDOMString5clearEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13destroyObjectEPS1_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv = comdat any

$_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t = comdat any

$_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et = comdat any

$_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_ = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE7isEmptyEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_ = comdat any

$_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock10isValidForEt = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_ = comdat any

$_ZSt4copyIPtS0_ET0_T_S2_S1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_14XalanDOMStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_1014XalanDOMStringEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_1014XalanDOMStringEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_1014XalanDOMStringEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_1014XalanDOMStringEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1014XalanDOMStringEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014XalanDOMStringEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEENS0_16_Iter_equals_valIT_EERS7_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEC2ERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_ = comdat any

$_ZSt4copyIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

@_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC2ERN11xercesc_2_713MemoryManagerEj
@_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanDOMStringCacheC2ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !262 {
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #10
          to label %5 unwind label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 2
  store i32 %2, ptr %6, align 8, !tbaa !263
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext 32) #10
          to label %8 unwind label %11

8:                                                ; preds = %5
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %13

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !277 {
  store ptr %1, ptr %0, align 8, !tbaa !278
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !279
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !280
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !281

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #10
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !282
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !283 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !280
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !284

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #10
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !282
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #10
          to label %11 unwind label %12

11:                                               ; preds = %8, %1
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !262 {
  invoke void @_ZN11xalanc_1_1019XalanDOMStringCache5clearEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #10
          to label %2 unwind label %5

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanDOMStringCache5clearEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !262 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !285 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br i1 %4, label %5, label %9, !prof !286

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #10
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %7, ptr %2, align 8, !tbaa !287
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %14

9:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %11 = load ptr, ptr %10, align 8, !tbaa !287
  store ptr %11, ptr %3, align 8, !tbaa !287
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %13 = load ptr, ptr %3, align 8, !tbaa !287
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi ptr [ %7, %5 ], [ %13, %9 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !288 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !279
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !289 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !290 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !279
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !291 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !279
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !279
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !282
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 !prof !285 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !287
  %7 = call noundef ptr @_ZSt4findIPPN11xalanc_1_1014XalanDOMStringES2_ET_S4_S4_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %8 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %9 = icmp ne ptr %7, %8
  br i1 %9, label %10, label %22, !prof !292

10:                                               ; preds = %2
  %11 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !263
  %14 = zext i32 %13 to i64
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %19, !prof !293

16:                                               ; preds = %10
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  %18 = call noundef zeroext i1 @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator7destroyERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(36) %1) #10
  br label %20

19:                                               ; preds = %10
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, i32 noundef -1) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  br label %20

20:                                               ; preds = %19, %16
  %21 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %7) #10
  br label %22

22:                                               ; preds = %2, %20
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4findIPPN11xalanc_1_1014XalanDOMStringES2_ET_S4_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !285 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !294 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !295 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !296 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !279
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator7destroyERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %1) #10
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !298 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !279
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !299

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #10
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !262 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 !prof !300 {
  %2 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  br i1 %4, label %20, label %5, !prof !301

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %18
  %8 = load i32, ptr %6, align 8, !tbaa !263
  %9 = zext i32 %8 to i64
  %10 = icmp ugt i64 %2, %9
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %12 = load ptr, ptr %11, align 8, !tbaa !287
  br i1 %10, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMStringCache", ptr %0, i64 0, i32 4
  %15 = tail call noundef zeroext i1 @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator7destroyERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(36) %12) #10
  br label %18

16:                                               ; preds = %7
  tail call void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %12) #10
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %17) #10
  br label %18

18:                                               ; preds = %16, %13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %19 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  br i1 %19, label %20, label %7, !prof !302, !llvm.loop !303

20:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMString5clearEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !305 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #10
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !306
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %9 = alloca %"class.std::reverse_iterator", align 8
  %10 = alloca %"class.std::reverse_iterator", align 8
  %11 = alloca %"class.std::reverse_iterator", align 8
  %12 = alloca ptr, align 8
  %13 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %14 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %15 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  br i1 %15, label %72, label %16, !prof !309

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  %17 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br i1 %17, label %18, label %40, !prof !310

18:                                               ; preds = %16, %38
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %20 = load ptr, ptr %19, align 8, !tbaa !287
  %21 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %20) #10
  br i1 %21, label %22, label %40, !prof !311

22:                                               ; preds = %18
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %24 = load ptr, ptr %23, align 8, !tbaa !287
  %25 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef %1) #10
  br i1 %25, label %26, label %38, !prof !312

26:                                               ; preds = %22
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %28 = load ptr, ptr %27, align 8, !tbaa !287
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %28, ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  %29 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br i1 %29, label %30, label %33, !prof !313

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %32 = load ptr, ptr %31, align 8, !tbaa !287
  store ptr %32, ptr %6, align 8, !tbaa !287
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %7) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !314, !range !315, !noundef !316
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37, !prof !317

37:                                               ; preds = %33
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #10
  br label %40

38:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  %39 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br i1 %39, label %18, label %40, !prof !318, !llvm.loop !319

40:                                               ; preds = %18, %38, %16, %33, %37
  %41 = phi i1 [ false, %37 ], [ false, %33 ], [ true, %16 ], [ true, %38 ], [ true, %18 ]
  %42 = phi i8 [ 1, %37 ], [ 1, %33 ], [ 0, %16 ], [ 0, %38 ], [ 0, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  br i1 %41, label %43, label %68, !prof !320

43:                                               ; preds = %40
  %44 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br i1 %44, label %45, label %68, !prof !320

45:                                               ; preds = %43, %65
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  %47 = load ptr, ptr %46, align 8, !tbaa !287
  %48 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef %1) #10
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  %50 = load ptr, ptr %49, align 8, !tbaa !287
  br i1 %48, label %51, label %61, !prof !321

51:                                               ; preds = %45
  call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %50, ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %14) #10
  %52 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  br i1 %52, label %53, label %56, !prof !322

53:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %55 = load ptr, ptr %54, align 8, !tbaa !287
  store ptr %55, ptr %12, align 8, !tbaa !287
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull %13) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  br label %56

56:                                               ; preds = %53, %51
  %57 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !314, !range !315, !noundef !316
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %68, label %60, !prof !323

60:                                               ; preds = %56
  call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #10
  br label %68

61:                                               ; preds = %45
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %63 = load ptr, ptr %62, align 8, !tbaa !287
  %64 = icmp eq ptr %50, %63
  br i1 %64, label %68, label %65, !prof !324

65:                                               ; preds = %61
  %66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  %67 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #10
  br i1 %67, label %45, label %68, !prof !325

68:                                               ; preds = %61, %65, %43, %40, %56, %60
  %69 = phi i8 [ 1, %60 ], [ 1, %56 ], [ %42, %40 ], [ %42, %43 ], [ %42, %65 ], [ %42, %61 ]
  %70 = and i8 %69, 1
  %71 = icmp ne i8 %70, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %72

72:                                               ; preds = %2, %68
  %73 = phi i1 [ %71, %68 ], [ false, %2 ]
  ret i1 %73
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !326 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.1", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.1", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %4 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %5 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !327 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !328
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !330 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !332 {
  %2 = load ptr, ptr %0, align 8, !tbaa !333
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !335 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !336
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !339
  %6 = icmp ult i16 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !340 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !339
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %4) #10
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13destroyObjectEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !341
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !343
  %7 = icmp eq i16 %4, %6
  br i1 %7, label %14, label %8, !prof !344

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !345
  %11 = zext i16 %4 to i64
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 %11
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %12, i16 noundef zeroext %6) #10
  %13 = load i16, ptr %3, align 8, !tbaa !341
  store i16 %13, ptr %5, align 2, !tbaa !343
  br label %14

14:                                               ; preds = %8, %2
  tail call void @_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_(ptr noundef nonnull align 8 dereferenceable(36) %1) #10
  %15 = load i16, ptr %3, align 8, !tbaa !341
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %1, i16 noundef zeroext %15) #10
  %16 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !345
  %18 = ptrtoint ptr %1 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 40
  %22 = trunc i64 %21 to i16
  store i16 %22, ptr %5, align 2, !tbaa !343
  store i16 %22, ptr %3, align 8, !tbaa !341
  %23 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %24 = load i16, ptr %23, align 8, !tbaa !336
  %25 = add i16 %24, -1
  store i16 %25, ptr %23, align 8, !tbaa !336
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !346 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !347 {
  %3 = load ptr, ptr %1, align 8, !tbaa !333
  store ptr %3, ptr %0, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !348 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 !prof !349 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.1", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.1", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %10 = load ptr, ptr %9, align 8, !tbaa !287
  %11 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  %14 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %17 = load ptr, ptr %16, align 8, !tbaa !287
  %18 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %18, label %20, label %21

19:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %20

20:                                               ; preds = %19, %15
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  br label %21

21:                                               ; preds = %15, %20, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !350 {
  %3 = load ptr, ptr %1, align 8, !tbaa !333
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !328
  store ptr %5, ptr %1, align 8, !tbaa !333
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !351 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !297 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !352 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !353 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !354 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !326 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.1", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !328
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  %6 = load ptr, ptr %2, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !326 {
  %3 = load ptr, ptr %0, align 8, !tbaa !355
  %4 = load ptr, ptr %1, align 8, !tbaa !355
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !326 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.1", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #10
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !357 {
  %2 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !357 {
  store ptr %1, ptr %0, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !358 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !359
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !360

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #10
  store ptr %6, ptr %2, align 8, !tbaa !359
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !328
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !361
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !362 {
  %3 = mul i64 %1, 24
  %4 = load ptr, ptr %0, align 8, !tbaa !363
  %5 = load ptr, ptr %4, align 8, !tbaa !364
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 !prof !366 {
  store ptr %1, ptr %0, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !367 {
  %3 = load ptr, ptr %0, align 8, !tbaa !333
  %4 = load ptr, ptr %1, align 8, !tbaa !333
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 !prof !340 {
  %4 = alloca %"struct.std::less", align 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !339
  %7 = icmp ult i16 %6, %2
  br i1 %7, label %8, label %9, !prof !368

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i16 [ %6, %8 ], [ %2, %3 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !345
  %13 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %12) #11
  br i1 %13, label %19, label %14, !prof !369

14:                                               ; preds = %9
  %15 = load ptr, ptr %11, align 8, !tbaa !345
  %16 = zext i16 %10 to i64
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 %16
  %18 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %17) #11
  br i1 %18, label %20, label %19, !prof !370

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %14, %19
  %21 = phi i1 [ false, %19 ], [ true, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i1 %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !371 {
  %4 = icmp ult ptr %1, %2
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) unnamed_addr #2 comdat align 2 !prof !372 {
  store i16 %1, ptr %0, align 4, !tbaa !373
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %0, i64 0, i32 1
  store i32 -2228259, ptr %3, align 4, !tbaa !375
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat !prof !376 {
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !377 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !378 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !379
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !380

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #10
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !381
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #10
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !382 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !383 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !384

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #10
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !385, !llvm.loop !386

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !387 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !381
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !388 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !383 {
  %3 = load ptr, ptr %0, align 8, !tbaa !389
  %4 = load ptr, ptr %3, align 8, !tbaa !364
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #2 comdat align 2 !prof !390 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !391 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !381
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !392
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 !prof !393 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !361
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !328
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !361
  store ptr null, ptr %5, align 8, !tbaa !361
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !394
  store ptr %10, ptr %3, align 8, !tbaa !328
  store ptr %1, ptr %9, align 8, !tbaa !394
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !395 {
  %2 = load ptr, ptr %0, align 8, !tbaa !333
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !393 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !394
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !396

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !328
  br label %12

10:                                               ; preds = %3
  %11 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #10
  store ptr %11, ptr %4, align 8, !tbaa !394
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %5, %7 ], [ %11, %10 ]
  %14 = phi ptr [ %9, %7 ], [ null, %10 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !363
  %16 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %15) #10
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %13, i64 0, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !361
  store ptr %20, ptr %17, align 8, !tbaa !287
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %13, i64 0, i32 2
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  store ptr %22, ptr %21, align 8, !tbaa !287
  %23 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !361
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %25, i64 0, i32 2
  store ptr %13, ptr %26, align 8, !tbaa !328
  %27 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 1
  store ptr %13, ptr %28, align 8, !tbaa !361
  store ptr %14, ptr %4, align 8, !tbaa !394
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !393 {
  %4 = load ptr, ptr %1, align 8, !tbaa !287
  store ptr %4, ptr %0, align 8, !tbaa !287
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKNS0_INS_23XalanListIteratorTraitsIS5_EES9_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !349 {
  %3 = load ptr, ptr %1, align 8, !tbaa !333
  store ptr %3, ptr %0, align 8, !tbaa !355
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !349 {
  %2 = load ptr, ptr %0, align 8, !tbaa !355
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !349 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !336
  %4 = icmp eq i16 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !349 {
  %2 = load ptr, ptr %0, align 8, !tbaa !355
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  store ptr %4, ptr %0, align 8, !tbaa !355
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !397 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !398 {
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !352 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !399 {
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !400 {
  %3 = load ptr, ptr %1, align 8, !tbaa !333
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !361
  store ptr %5, ptr %1, align 8, !tbaa !333
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !298 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr %7) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !298 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  store ptr %2, ptr %4, align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  br i1 %6, label %7, label %13, !prof !401

7:                                                ; preds = %3, %7
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %9 = load ptr, ptr %8, align 8, !tbaa !287
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  br i1 %10, label %7, label %11, !prof !402, !llvm.loop !403

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !404 {
  %2 = load ptr, ptr %0, align 8, !tbaa !363
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !298 {
  store ptr %1, ptr %0, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !298 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %5, label %6, label %9, !prof !401

6:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #10
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #10
  %8 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %8, label %6, label %9, !prof !402, !llvm.loop !405

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !406 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %1) #10
  %4 = load ptr, ptr %0, align 8, !tbaa !407
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !406 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !406 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !406 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !409

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #10
  %6 = load ptr, ptr %2, align 8, !tbaa !364
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #10
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #2 comdat align 2 !prof !406 {
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !406 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !339
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !410

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %24, %1
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret void

12:                                               ; preds = %9, %24
  %13 = phi i64 [ 0, %9 ], [ %26, %24 ]
  %14 = phi i16 [ 0, %9 ], [ %25, %24 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !345
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 %13
  %17 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv(ptr noundef %16) #10
  %18 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %17) #10
          to label %19 unwind label %33

19:                                               ; preds = %12
  br i1 %18, label %20, label %24, !prof !411

20:                                               ; preds = %19
  %21 = load ptr, ptr %10, align 8, !tbaa !345
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 %13
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %22) #11
  %23 = add nuw i16 %14, 1
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i16 [ %23, %20 ], [ %14, %19 ]
  %26 = add nuw nsw i64 %13, 1
  %27 = load i16, ptr %2, align 2, !tbaa !339
  %28 = zext i16 %27 to i64
  %29 = icmp ult i64 %26, %28
  %30 = load i16, ptr %3, align 8
  %31 = icmp ult i16 %25, %30
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %12, label %11, !prof !412, !llvm.loop !413

33:                                               ; preds = %12
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv(ptr noundef %0) local_unnamed_addr #2 comdat align 2 !prof !414 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !415 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #10
  br i1 %3, label %4, label %9, !prof !416

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !339
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %1, i16 noundef zeroext %6) #10
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ true, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !406 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !345
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !339
  %6 = zext i16 %5 to i64
  invoke void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %6) #10
          to label %7 unwind label %8

7:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !415 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !375
  %5 = icmp eq i32 %4, -2228259
  %6 = load i16, ptr %0, align 4
  %7 = icmp ule i16 %6, %1
  %8 = select i1 %5, i1 %7, i1 false, !prof !417
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !418 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5, !prof !419

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !420
  %7 = load ptr, ptr %6, align 8, !tbaa !364
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1) #10
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !418 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !406 {
  %4 = load ptr, ptr %1, align 8, !tbaa !333
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !328
  store ptr %6, ptr %1, align 8, !tbaa !333
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !421 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !423

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = tail call noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #10
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #10
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !424 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !424 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !425

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !426, !llvm.loop !427

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !428 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !424 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !287
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !429 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !430 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !424 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !431 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !424 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !430 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !432

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !433 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !392
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !392
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !381
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #10
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !428 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !287
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !428 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !428 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !434 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !278
  %5 = load ptr, ptr %4, align 8, !tbaa !364
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #10
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !435 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !434 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !436

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !437, !llvm.loop !438

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !434 {
  %3 = load ptr, ptr %0, align 8, !tbaa !278
  %4 = load ptr, ptr %3, align 8, !tbaa !364
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !439 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !440 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !279
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !280
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !441

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %11 = load ptr, ptr %0, align 8, !tbaa !278
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_14XalanDOMStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  %13 = load i64, ptr %4, align 8, !tbaa !279
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !279
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !442
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !278
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_14XalanDOMStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !439 {
  %4 = load ptr, ptr %1, align 8, !tbaa !287
  store ptr %4, ptr %0, align 8, !tbaa !287
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !443 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !279
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !434 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !278
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !279
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !442

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #10
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #10
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #10
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !444

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #10
  store ptr %24, ptr %8, align 8, !tbaa !282
  store i64 %3, ptr %7, align 8, !tbaa !280
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 !prof !445 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %3 = load ptr, ptr %0, align 8, !tbaa !278
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !282
  %7 = load ptr, ptr %1, align 8, !tbaa !278
  store ptr %7, ptr %0, align 8, !tbaa !278
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !446
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !282
  store ptr %11, ptr %5, align 8, !tbaa !282
  store ptr %3, ptr %1, align 8, !tbaa !278
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !446
  store <2 x i64> %9, ptr %4, align 8, !tbaa !446
  store <2 x i64> %12, ptr %8, align 8, !tbaa !446
  store ptr %6, ptr %10, align 8, !tbaa !282
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !447 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !447 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #10
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8, !prof !448

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !449

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #10
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16, !prof !450

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !278
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_14XalanDOMStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #10
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !279
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !279
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !prof !451, !llvm.loop !452

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %32 = load ptr, ptr %0, align 8, !tbaa !278
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #10
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #10
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #10
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #10
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #10
  %46 = icmp ugt i64 %45, %6
  br i1 %46, label %62, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds ptr, ptr %2, i64 %45
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %52

50:                                               ; preds = %52, %47
  %51 = icmp eq ptr %44, %1
  br i1 %51, label %60, label %56

52:                                               ; preds = %47, %52
  %53 = phi ptr [ %54, %52 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %53) #10
  %54 = getelementptr inbounds ptr, ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !llvm.loop !453

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #10
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !llvm.loop !454

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1014XalanDOMStringEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #10
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %68) #10
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !455

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds ptr, ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #10
  %74 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_1014XalanDOMStringEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #10
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !447 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !447 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !456 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !447 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !448

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #10
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !447 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !280
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_1014XalanDOMStringEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !349 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1014XalanDOMStringEET_S5_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1014XalanDOMStringEET_S5_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !349 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !456 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !287
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #10
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !456 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !456 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !278
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !349 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !287
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1014XalanDOMStringEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1014XalanDOMStringEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1014XalanDOMStringEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_1014XalanDOMStringEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !349 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1014XalanDOMStringEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !285 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !349 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_1014XalanDOMStringEET_S5_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !349 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !457 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_1014XalanDOMStringEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !349 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1014XalanDOMStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1014XalanDOMStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !285 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !458

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !349 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !287
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1014XalanDOMStringEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !459 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !349 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !349 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014XalanDOMStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1014XalanDOMStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !349 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !447 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !282
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !279
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !285 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !287
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !285 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !285 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30, !prof !460

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #10
  br i1 %13, label %47, label %14, !prof !461

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #10
  br i1 %16, label %47, label %17, !prof !461

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #10
  br i1 %19, label %47, label %20, !prof !462

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #10
  br i1 %22, label %47, label %23, !prof !463

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !prof !464, !llvm.loop !465

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %5, %28
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i64 [ %29, %27 ], [ %7, %3 ]
  %32 = phi ptr [ %24, %27 ], [ %0, %3 ]
  %33 = ashr exact i64 %31, 3
  switch i64 %33, label %46 [
    i64 3, label %34
    i64 2, label %38
    i64 1, label %43
  ], !prof !466

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #10
  br i1 %35, label %47, label %36, !prof !467

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #10
  br i1 %40, label %47, label %41, !prof !468

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #10
  br i1 %45, label %47, label %46, !prof !469

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !285 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !470 {
  %3 = load ptr, ptr %1, align 8, !tbaa !287
  %4 = load ptr, ptr %0, align 8, !tbaa !471
  %5 = load ptr, ptr %4, align 8, !tbaa !287
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !285 {
  store ptr %1, ptr %0, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !285 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !473

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %7 = tail call noundef ptr @_ZSt4copyIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #10
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #10
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %0) #10
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !285 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !474

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !475, !llvm.loop !476

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !285 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !287
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1014XalanDOMStringEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !285 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1014XalanDOMStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !477 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %5 = load i64, ptr %3, align 8, !tbaa !279
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !478, !llvm.loop !479

7:                                                ; preds = %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!261}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!35 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC2ERN11xercesc_2_713MemoryManagerEj, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 6}
!36 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC2ERN11xercesc_2_713MemoryManagerEj, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 3}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 45}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 88}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 43}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 43}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 43}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 43}
!44 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev, ptr @_ZN11xalanc_1_1019XalanDOMStringCache5clearEv, i64 3}
!45 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD1Ev, i64 3}
!46 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 6}
!47 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 6}
!48 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache5clearEv, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator5resetEv, i64 3}
!49 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 67596232}
!50 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv, i64 41374568}
!51 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 67596232}
!52 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv, i64 26221664}
!53 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 26221664}
!54 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 67596240}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 187636006}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 93818003}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 187636002}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 93818001}
!59 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 67596232}
!60 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 135192464}
!61 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZSt4findIPPN11xalanc_1_1014XalanDOMStringES2_ET_S4_S4_RKT0_, i64 67596232}
!62 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 67596231}
!63 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator7destroyERNS_14XalanDOMStringE, i64 41374462}
!64 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 26221769}
!65 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 26221769}
!66 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_, i64 67596231}
!67 = !{ptr @_ZSt4findIPPN11xalanc_1_1014XalanDOMStringES2_ET_S4_S4_RKT0_, ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEENS0_16_Iter_equals_valIT_EERS7_, i64 67596232}
!68 = !{ptr @_ZSt4findIPPN11xalanc_1_1014XalanDOMStringES2_ET_S4_S4_RKT0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, i64 67596232}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 67596317}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 202788787}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 202788787}
!72 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 67676402}
!73 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator7destroyERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, i64 41374463}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, i64 67596232}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 12}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 2}
!77 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 3}
!78 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 8}
!79 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 9}
!80 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 96538440}
!83 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 48269220}
!84 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 48269220}
!85 = !{ptr @_ZN11xalanc_1_1014XalanDOMString5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, i64 48269220}
!86 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv, i64 41374463}
!87 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 42765936}
!88 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 41374462}
!89 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 155552027}
!90 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 2103769529}
!91 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv, i64 151574648}
!92 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_, i64 1950617582}
!93 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13destroyObjectEPS1_, i64 41312775}
!94 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 40107127}
!95 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 40107127}
!96 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_, i64 40107127}
!97 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE12destroyBlockEv, i64 2}
!98 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv, i64 112786091}
!99 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv, i64 81295763}
!100 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv, i64 41374462}
!101 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, i64 1877814449}
!102 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv, i64 3672880034}
!103 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13destroyObjectEPS1_, ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv, i64 1796518714}
!104 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 82749031}
!105 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 82749031}
!106 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 82749031}
!107 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 292410287}
!108 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 292410287}
!109 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 123935280}
!110 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 123935280}
!111 = !{ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 163168932}
!112 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t, i64 1956800028}
!113 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et, i64 41374464}
!114 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13destroyObjectEPS1_, ptr @_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_, i64 41374463}
!115 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 41382724}
!116 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE, i64 41382724}
!117 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 40091652}
!118 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 40091652}
!119 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 120307695}
!120 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 81264688}
!121 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv, ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, i64 81264688}
!122 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 41374463}
!123 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv, ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, i64 41374463}
!124 = !{ptr @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, ptr @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, i64 1874900714}
!125 = !{ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 3670020978}
!126 = !{ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv, i64 3670020978}
!127 = !{ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 3670020978}
!128 = !{ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv, i64 1795120264}
!129 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 82749031}
!130 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 82749031}
!131 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 82749031}
!132 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 82749031}
!133 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 165498062}
!134 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm, i64 4}
!135 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t, ptr @_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_, i64 2953879889}
!136 = !{ptr @_ZN11xalanc_1_1012XalanDestroyINS_14XalanDOMStringEEEvRT_, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 42029689}
!137 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!148 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm, i64 2522}
!149 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE, i64 41385245}
!150 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 165540980}
!151 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 1293593}
!152 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 1293593}
!153 = !{ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 122639151}
!154 = !{ptr @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv, i64 3749801428}
!155 = !{ptr @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 1874900714}
!156 = !{ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 3749801428}
!157 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 5465141242}
!158 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 6}
!159 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 6}
!160 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv, i64 6}
!161 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 6}
!162 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, i64 6}
!163 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, i64 6}
!164 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 2168}
!165 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 2162}
!166 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_, i64 2162}
!167 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv, i64 2162}
!168 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 6}
!169 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 2168}
!170 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 2168}
!171 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi, i64 2162}
!172 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 2162}
!173 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE, i64 2162}
!174 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_, i64 2521}
!175 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, i64 2521}
!176 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, i64 2521}
!177 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_, i64 2520}
!178 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, i64 2521}
!179 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev, i64 2521}
!180 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv, i64 128}
!181 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE, i64 128}
!182 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 105}
!183 = !{ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_, i64 127}
!184 = !{ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE, ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock10isValidForEt, i64 126}
!185 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m, i64 2521}
!186 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev, i64 2521}
!187 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 2521}
!188 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 241572884}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 28158502}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, i64 28158502}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 28158502}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5eraseEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, i64 28158502}
!193 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPtET_S1_, i64 56317002}
!194 = !{ptr @_ZSt4copyIPtS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!195 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 1279868488}
!196 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!197 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 84475503}
!198 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!199 = !{ptr @_ZSt13__copy_move_aILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 28158501}
!200 = !{ptr @_ZSt14__copy_move_a1ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, i64 28158501}
!201 = !{ptr @_ZSt14__copy_move_a2ILb0EPtS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 28158501}
!202 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195952}
!203 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597976}
!204 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!205 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!206 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 39854}
!207 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 187636092}
!208 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 93818002}
!209 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_14XalanDOMStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 93818002}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 44}
!211 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 44}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 44}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 44}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm, i64 37}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 37}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 37}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 37}
!218 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 37}
!219 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 37}
!220 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 37}
!221 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 37}
!222 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 5}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 43}
!224 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 162}
!225 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 75}
!226 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 38}
!227 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 37}
!228 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 37}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, i64 36}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_14XalanDOMStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 37772}
!231 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 1}
!232 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 15}
!233 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 38}
!234 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 38}
!235 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 38}
!236 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, ptr @_ZSt8distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_, i64 67596270}
!237 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, i64 38}
!238 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!239 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 38}
!240 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 38}
!241 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt19__iterator_categoryIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 67596270}
!242 = !{ptr @_ZSt8distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_, ptr @_ZSt10__distanceIPKPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag, i64 67596270}
!243 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, ptr @_ZSt19__iterator_categoryIPPN11xalanc_1_1014XalanDOMStringEENSt15iterator_traitsIT_E17iterator_categoryERKS5_, i64 67596232}
!244 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_, ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag, i64 67596232}
!245 = !{ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEENS0_16_Iter_equals_valIT_EERS7_, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEC2ERS5_, i64 67596232}
!246 = !{ptr @_ZSt9__find_ifIPPN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEclIPS4_EEbT_, i64 89403452500}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 135192464}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 67596231}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZSt4copyIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_, i64 67596231}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_, i64 67596231}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm, i64 67596231}
!252 = !{ptr @_ZSt4copyIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_, ptr @_ZSt12__miter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_, i64 135192464}
!253 = !{ptr @_ZSt4copyIPPN11xalanc_1_1014XalanDOMStringES3_ET0_T_S5_S4_, ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_, i64 67596232}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 67596232}
!255 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_, ptr @_ZSt12__niter_baseIPPN11xalanc_1_1014XalanDOMStringEET_S4_, i64 202788696}
!256 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_, ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_, i64 67596232}
!257 = !{ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_, ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1014XalanDOMStringEET_RKS4_S4_, i64 67596232}
!258 = !{ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_, ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_, i64 67596232}
!259 = !{ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1014XalanDOMStringES3_ET1_T0_S5_S4_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1014XalanDOMStringEEEPT_PKS6_S9_S7_, i64 67596232}
!260 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 71}
!261 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!262 = !{!"function_entry_count", i64 3}
!263 = !{!264, !270, i64 64}
!264 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !265, i64 0, !265, i64 32, !270, i64 64, !271, i64 72}
!265 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !266, i64 0, !269, i64 8, !269, i64 16, !266, i64 24}
!266 = !{!"any pointer", !267, i64 0}
!267 = !{!"omnipotent char", !268, i64 0}
!268 = !{!"Simple C++ TBAA"}
!269 = !{!"long", !267, i64 0}
!270 = !{!"int", !267, i64 0}
!271 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !272, i64 0}
!272 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !273, i64 0, !276, i64 40}
!273 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !274, i64 8, !275, i64 16}
!274 = !{!"short", !267, i64 0}
!275 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !266, i64 0, !266, i64 8, !266, i64 16}
!276 = !{!"bool", !267, i64 0}
!277 = !{!"function_entry_count", i64 45}
!278 = !{!265, !266, i64 0}
!279 = !{!265, !269, i64 8}
!280 = !{!265, !269, i64 16}
!281 = !{!"branch_weights", i32 46, i32 1}
!282 = !{!265, !266, i64 24}
!283 = !{!"function_entry_count", i64 88}
!284 = !{!"branch_weights", i32 46, i32 44}
!285 = !{!"function_entry_count", i64 67596232}
!286 = !{!"branch_weights", i32 41374569, i32 26221665}
!287 = !{!266, !266, i64 0}
!288 = !{!"function_entry_count", i64 67596240}
!289 = !{!"function_entry_count", i64 93818003}
!290 = !{!"function_entry_count", i64 26221664}
!291 = !{!"function_entry_count", i64 93818001}
!292 = !{!"branch_weights", i32 67596233, i32 1}
!293 = !{!"branch_weights", i32 41374464, i32 26221770}
!294 = !{!"function_entry_count", i64 67596317}
!295 = !{!"function_entry_count", i64 202788787}
!296 = !{!"function_entry_count", i64 67676402}
!297 = !{!"function_entry_count", i64 41374463}
!298 = !{!"function_entry_count", i64 6}
!299 = !{!"branch_weights", i32 5, i32 3}
!300 = !{!"function_entry_count", i64 8}
!301 = !{!"branch_weights", i32 8, i32 1}
!302 = !{!"branch_weights", i32 1, i32 0}
!303 = distinct !{!303, !304}
!304 = !{!"llvm.loop.mustprogress"}
!305 = !{!"function_entry_count", i64 48269220}
!306 = !{!307, !270, i64 32}
!307 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !308, i64 0, !270, i64 32}
!308 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !266, i64 0, !269, i64 8, !269, i64 16, !266, i64 24}
!309 = !{!"branch_weights", i32 1, i32 41374464}
!310 = !{!"branch_weights", i32 15, i32 1}
!311 = !{!"branch_weights", i32 121789413, i32 39890226}
!312 = !{!"branch_weights", i32 1484239, i32 120305175}
!313 = !{!"branch_weights", i32 209155, i32 1275085}
!314 = !{!272, !276, i64 40}
!315 = !{i8 0, i8 2}
!316 = !{}
!317 = !{!"branch_weights", i32 1484239, i32 1}
!318 = !{!"branch_weights", i32 -1708093103, i32 15}
!319 = distinct !{!319, !304}
!320 = !{!"branch_weights", i32 1484238, i32 1}
!321 = !{!"branch_weights", i32 39890226, i32 1795120265}
!322 = !{!"branch_weights", i32 39879978, i32 10249}
!323 = !{!"branch_weights", i32 39890226, i32 1}
!324 = !{!"branch_weights", i32 1, i32 1795120265}
!325 = !{!"branch_weights", i32 1833526252, i32 1484238}
!326 = !{!"function_entry_count", i64 82749031}
!327 = !{!"function_entry_count", i64 292410287}
!328 = !{!329, !266, i64 16}
!329 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4NodeE", !266, i64 0, !266, i64 8, !266, i64 16}
!330 = !{!"function_entry_count", i64 123935280}
!331 = !{!"function_entry_count", i64 163168932}
!332 = !{!"function_entry_count", i64 5956978044}
!333 = !{!334, !266, i64 0}
!334 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEE", !266, i64 0}
!335 = !{!"function_entry_count", i64 244428771}
!336 = !{!337, !274, i64 8}
!337 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEE", !338, i64 0, !274, i64 8, !274, i64 10, !266, i64 16}
!338 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEE", !266, i64 0}
!339 = !{!337, !274, i64 10}
!340 = !{!"function_entry_count", i64 1956800028}
!341 = !{!342, !274, i64 24}
!342 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEE", !337, i64 0, !274, i64 24, !274, i64 26}
!343 = !{!342, !274, i64 26}
!344 = !{!"branch_weights", i32 41374464, i32 1}
!345 = !{!337, !266, i64 16}
!346 = !{!"function_entry_count", i64 41382724}
!347 = !{!"function_entry_count", i64 13167999625}
!348 = !{!"function_entry_count", i64 40091652}
!349 = !{!"function_entry_count", i64 0}
!350 = !{!"function_entry_count", i64 120307695}
!351 = !{!"function_entry_count", i64 81264688}
!352 = !{!"function_entry_count", i64 1874900714}
!353 = !{!"function_entry_count", i64 3670020978}
!354 = !{!"function_entry_count", i64 1795120264}
!355 = !{!356, !266, i64 0}
!356 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEE", !266, i64 0}
!357 = !{!"function_entry_count", i64 165498062}
!358 = !{!"function_entry_count", i64 581843629}
!359 = !{!275, !266, i64 8}
!360 = !{!"branch_weights", i32 4, i32 581843627}
!361 = !{!329, !266, i64 8}
!362 = !{!"function_entry_count", i64 2524}
!363 = !{!275, !266, i64 0}
!364 = !{!365, !365, i64 0}
!365 = !{!"vtable pointer", !268, i64 0}
!366 = !{!"function_entry_count", i64 416348088}
!367 = !{!"function_entry_count", i64 2038069646}
!368 = !{!"branch_weights", i32 1, i32 1956800029}
!369 = !{!"branch_weights", i32 959720168, i32 997079862}
!370 = !{!"branch_weights", i32 41374591, i32 955705272}
!371 = !{!"function_entry_count", i64 2953879889}
!372 = !{!"function_entry_count", i64 41455135}
!373 = !{!374, !274, i64 0}
!374 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockE", !274, i64 0, !270, i64 4}
!375 = !{!374, !270, i64 4}
!376 = !{!"function_entry_count", i64 42029689}
!377 = !{!"function_entry_count", i64 43398227}
!378 = !{!"function_entry_count", i64 128698679}
!379 = !{!308, !269, i64 16}
!380 = !{!"branch_weights", i32 43398290, i32 85300391}
!381 = !{!308, !266, i64 24}
!382 = !{!"function_entry_count", i64 6521798493}
!383 = !{!"function_entry_count", i64 85300390}
!384 = !{!"branch_weights", i32 1, i32 12185770}
!385 = !{!"branch_weights", i32 12185770, i32 -193930396}
!386 = distinct !{!386, !304}
!387 = !{!"function_entry_count", i64 227375739}
!388 = !{!"function_entry_count", i64 568333389}
!389 = !{!308, !266, i64 0}
!390 = !{!"function_entry_count", i64 30137156660}
!391 = !{!"function_entry_count", i64 825654971}
!392 = !{!308, !269, i64 8}
!393 = !{!"function_entry_count", i64 41385245}
!394 = !{!275, !266, i64 16}
!395 = !{!"function_entry_count", i64 206926225}
!396 = !{!"branch_weights", i32 2522, i32 41382725}
!397 = !{!"function_entry_count", i64 1293593}
!398 = !{!"function_entry_count", i64 122639151}
!399 = !{!"function_entry_count", i64 3749801428}
!400 = !{!"function_entry_count", i64 5465141242}
!401 = !{!"branch_weights", i32 223, i32 1}
!402 = !{!"branch_weights", i32 80481, i32 223}
!403 = distinct !{!403, !304}
!404 = !{!"function_entry_count", i64 41377095}
!405 = distinct !{!405, !304}
!406 = !{!"function_entry_count", i64 2521}
!407 = !{!408, !266, i64 0}
!408 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !266, i64 0}
!409 = !{!"branch_weights", i32 1, i32 2522}
!410 = !{!"branch_weights", i32 338688, i32 6345124}
!411 = !{!"branch_weights", i32 106, i32 23}
!412 = !{!"branch_weights", i32 0, i32 338688}
!413 = distinct !{!413, !304}
!414 = !{!"function_entry_count", i64 41374695}
!415 = !{!"function_entry_count", i64 127}
!416 = !{!"branch_weights", i32 128, i32 1}
!417 = !{!"branch_weights", i32 23, i32 106}
!418 = !{!"function_entry_count", i64 22998}
!419 = !{!"branch_weights", i32 1, i32 22999}
!420 = !{!338, !266, i64 0}
!421 = !{!"function_entry_count", i64 3070433834}
!422 = !{!"function_entry_count", i64 120786442}
!423 = !{!"branch_weights", i32 92627942, i32 28158502}
!424 = !{!"function_entry_count", i64 28158501}
!425 = !{!"branch_weights", i32 1, i32 28158501}
!426 = !{!"branch_weights", i32 28158501, i32 1251710038}
!427 = distinct !{!427, !304}
!428 = !{!"function_entry_count", i64 185895030}
!429 = !{!"function_entry_count", i64 56317002}
!430 = !{!"function_entry_count", i64 30109074}
!431 = !{!"function_entry_count", i64 86426076}
!432 = !{!"branch_weights", i32 28199083, i32 1909993}
!433 = !{!"function_entry_count", i64 1344597976}
!434 = !{!"function_entry_count", i64 43}
!435 = !{!"function_entry_count", i64 1103758852}
!436 = !{!"branch_weights", i32 1, i32 175}
!437 = !{!"branch_weights", i32 175, i32 162949}
!438 = distinct !{!438, !304}
!439 = !{!"function_entry_count", i64 93858781}
!440 = !{!"function_entry_count", i64 93818046}
!441 = !{!"branch_weights", i32 93818004, i32 44}
!442 = !{!"branch_weights", i32 6, i32 39}
!443 = !{!"function_entry_count", i64 296606828}
!444 = !{!"branch_weights", i32 1, i32 6}
!445 = !{!"function_entry_count", i64 81}
!446 = !{!269, !269, i64 0}
!447 = !{!"function_entry_count", i64 38}
!448 = !{!"branch_weights", i32 1, i32 39}
!449 = !{!"branch_weights", i32 39, i32 1}
!450 = !{!"branch_weights", i32 1, i32 155}
!451 = !{!"branch_weights", i32 155, i32 162961}
!452 = distinct !{!452, !304}
!453 = distinct !{!453, !304}
!454 = distinct !{!454, !304}
!455 = distinct !{!455, !304}
!456 = !{!"function_entry_count", i64 67596270}
!457 = !{!"function_entry_count", i64 202788696}
!458 = !{!"branch_weights", i32 45272592, i32 22323642}
!459 = !{!"function_entry_count", i64 135192464}
!460 = !{!"branch_weights", i32 7550972, i32 1}
!461 = !{!"branch_weights", i32 1, i32 -576078127}
!462 = !{!"branch_weights", i32 2756, i32 -576080883}
!463 = !{!"branch_weights", i32 3712311, i32 -579793194}
!464 = !{!"branch_weights", i32 -583629099, i32 7550972}
!465 = distinct !{!465, !304}
!466 = !{!"branch_weights", i32 2, i32 22408348, i32 11442694, i32 11454793}
!467 = !{!"branch_weights", i32 1, i32 22408348}
!468 = !{!"branch_weights", i32 11170257, i32 22680785}
!469 = !{!"branch_weights", i32 34135577, i32 1}
!470 = !{!"function_entry_count", i64 89343718472}
!471 = !{!472, !266, i64 0}
!472 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1014XalanDOMStringEEE", !266, i64 0}
!473 = !{!"branch_weights", i32 1, i32 67596233}
!474 = !{!"branch_weights", i32 1, i32 67596232}
!475 = !{!"branch_weights", i32 67596232, i32 1}
!476 = distinct !{!476, !304}
!477 = !{!"function_entry_count", i64 2}
!478 = !{!"branch_weights", i32 104, i32 3}
!479 = distinct !{!479, !304}
