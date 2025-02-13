; ModuleID = 'XalanDOMStringReusableAllocator.cpp'
source_filename = "XalanDOMStringReusableAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanListIteratorBase.0" = type { ptr }
%"class.std::reverse_iterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase.0" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock" = type { i16, i32 }
%"struct.std::less" = type { i8 }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerEtb = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEED0Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11destroyNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10deallocateEPNS5_4NodeE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4backEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE6createERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13allocateBlockEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE8allocateEmPKv = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv = comdat any

$_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE10ownsObjectEPKS1_ = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_ = comdat any

$_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPKv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_ = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock10isValidForEt = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t = comdat any

$_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_ = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = linkonce_odr dso_local constant [62 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [84 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !151 {
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerEtb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerEtb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 !prof !151 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #7
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !152
  %6 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 !prof !151 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !152
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !163
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !152
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 !prof !164 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  br i1 %4, label %9, label %5, !prof !165

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !166
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  br i1 %8, label %14, label %9, !prof !167

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !163
  %13 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %10, i16 noundef zeroext %12) #7
  store ptr %13, ptr %2, align 8, !tbaa !166
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %16 = load ptr, ptr %15, align 8, !tbaa !166
  %17 = call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %16) #7
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !164 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  %6 = load ptr, ptr %5, align 8, !tbaa !166
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %1) #7
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  %8 = load ptr, ptr %7, align 8, !tbaa !166
  %9 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #7
  br i1 %9, label %13, label %10, !prof !168

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  %12 = load ptr, ptr %11, align 8, !tbaa !166
  store ptr %12, ptr %3, align 8, !tbaa !166
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !169 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  br i1 %8, label %43, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %10 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  store ptr %10, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %11 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  store ptr %11, ptr %4, align 8
  %12 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br i1 %12, label %13, label %24

13:                                               ; preds = %9, %21
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  %16 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #7
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %19 = load ptr, ptr %18, align 8, !tbaa !166
  %20 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %1) #7
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %23 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  br i1 %23, label %13, label %24, !llvm.loop !170

24:                                               ; preds = %13, %21, %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  %25 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br i1 %25, label %26, label %39

26:                                               ; preds = %24, %36
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %28 = load ptr, ptr %27, align 8, !tbaa !166
  %29 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef %1) #7
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %32 = load ptr, ptr %31, align 8, !tbaa !166
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %34 = load ptr, ptr %33, align 8, !tbaa !166
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  %38 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  br i1 %38, label %26, label %39, !llvm.loop !172

39:                                               ; preds = %26, %30, %36, %24
  %40 = phi i1 [ false, %24 ], [ %29, %36 ], [ %29, %30 ], [ %29, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %41

41:                                               ; preds = %17, %39
  %42 = phi i1 [ %40, %39 ], [ true, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %43

43:                                               ; preds = %2, %41
  %44 = phi i1 [ %42, %41 ], [ false, %2 ]
  ret i1 %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !173 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #7
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr %7) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !151 {
  store ptr %1, ptr %0, align 8, !tbaa !174
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !169 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %7 = load ptr, ptr %6, align 8, !tbaa !166
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !163
  %13 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %10, i16 noundef zeroext %12) #7
  store ptr %13, ptr %2, align 8, !tbaa !166
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %16 = load ptr, ptr %15, align 8, !tbaa !166
  %17 = call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %16) #7
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !169 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !169 {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  %6 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %11
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef %1) #7
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  %13 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  br i1 %13, label %7, label %14, !llvm.loop !175

14:                                               ; preds = %11, %7, %2
  %15 = phi i1 [ false, %2 ], [ %10, %7 ], [ %10, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i1 %15
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !176
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8, !prof !177

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
          to label %9 unwind label %34

9:                                                ; preds = %8, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
          to label %10 unwind label %32

10:                                               ; preds = %9
  %11 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
          to label %12 unwind label %32

12:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %11, label %13, label %17, !prof !177

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #7
          to label %14 unwind label %32

14:                                               ; preds = %13
  %15 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %15) #7
          to label %16 unwind label %32

16:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %9, !llvm.loop !178

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !179
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi ptr [ %19, %17 ], [ %25, %23 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !180

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !181
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %21) #7
          to label %20 unwind label %30, !llvm.loop !183

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 8, !tbaa !176
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %27) #7
          to label %28 unwind label %34

28:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !185 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !186 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !169 {
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !187 {
  %4 = load ptr, ptr %1, align 8, !tbaa !188
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  store ptr %6, ptr %1, align 8, !tbaa !188
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !190 {
  %2 = load ptr, ptr %0, align 8, !tbaa !188
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %3 = load ptr, ptr %0, align 8, !tbaa !174
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !192 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !193

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #7
  store ptr %6, ptr %2, align 8, !tbaa !176
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !181
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !194
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !195 {
  store ptr %1, ptr %0, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !191 {
  %3 = mul i64 %1, 24
  %4 = load ptr, ptr %0, align 8, !tbaa !174
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #7
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !196 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = load ptr, ptr %1, align 8, !tbaa !188
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !197 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %4 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !198 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !199
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = icmp ult i16 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !203 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !187 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  store i16 %1, ptr %3, align 2, !tbaa !204
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !205 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #7
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 comdat align 2 !prof !164 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !199
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = icmp eq i16 %3, %5
  br i1 %6, label %22, label %7, !prof !206

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !207
  %10 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !209
  %12 = icmp eq i16 %9, %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !210
  %15 = zext i16 %9 to i64
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %14, i64 %15
  br i1 %12, label %17, label %22, !prof !211

17:                                               ; preds = %7
  %18 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv(ptr noundef %16) #7
  %19 = load i16, ptr %18, align 4, !tbaa !212
  store i16 %19, ptr %10, align 2, !tbaa !209
  %20 = load i16, ptr %2, align 8, !tbaa !199
  %21 = add i16 %20, 1
  store i16 %21, ptr %2, align 8, !tbaa !199
  br label %22

22:                                               ; preds = %7, %17, %1
  %23 = phi ptr [ null, %1 ], [ %16, %17 ], [ %16, %7 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !197 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #7
  %6 = load ptr, ptr %2, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !197 {
  %3 = load ptr, ptr %0, align 8, !tbaa !215
  %4 = load ptr, ptr %1, align 8, !tbaa !215
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !197 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !217 {
  %2 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !217 {
  store ptr %1, ptr %0, align 8, !tbaa !215
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !218 {
  %3 = load ptr, ptr %1, align 8, !tbaa !188
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  store ptr %5, ptr %1, align 8, !tbaa !188
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !219 {
  %2 = load ptr, ptr %0, align 8, !tbaa !188
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !220 {
  %3 = load ptr, ptr %1, align 8, !tbaa !188
  store ptr %3, ptr %0, align 8, !tbaa !188
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !221 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !222

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  br label %12

10:                                               ; preds = %3
  %11 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #7
  store ptr %11, ptr %4, align 8, !tbaa !179
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %5, %7 ], [ %11, %10 ]
  %14 = phi ptr [ %9, %7 ], [ null, %10 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !174
  %16 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %15) #7
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %13, i64 0, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !194
  store ptr %20, ptr %17, align 8, !tbaa !166
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %13, i64 0, i32 2
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  store ptr %22, ptr %21, align 8, !tbaa !166
  %23 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !194
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %25, i64 0, i32 2
  store ptr %13, ptr %26, align 8, !tbaa !181
  %27 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %27, i64 0, i32 1
  store ptr %13, ptr %28, align 8, !tbaa !194
  store ptr %14, ptr %4, align 8, !tbaa !179
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !221 {
  %4 = load ptr, ptr %1, align 8, !tbaa !166
  store ptr %4, ptr %0, align 8, !tbaa !166
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32) #7
  %6 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %7 = load i16, ptr %3, align 2, !tbaa !204
  invoke void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i16 noundef zeroext %7) #7
          to label %8 unwind label %10

8:                                                ; preds = %4
  store ptr %6, ptr %1, align 8, !tbaa !166
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #7
  %9 = load ptr, ptr %1, align 8, !tbaa !166
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret ptr %9

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !223 {
  store ptr %1, ptr %0, align 8, !tbaa !166
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !152
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #7
  store ptr %8, ptr %4, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !223 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #7
  %4 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !207
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  store i16 0, ptr %5, align 2, !tbaa !209
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !202
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9, !prof !226

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %16, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !210
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %14, i64 %13
  %16 = add nuw nsw i64 %13, 1
  %17 = trunc i64 %16 to i16
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %15, i16 noundef zeroext %17) #7
  %18 = load i16, ptr %6, align 2, !tbaa !202
  %19 = zext i16 %18 to i64
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %12, label %11, !prof !227, !llvm.loop !228
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !223 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !229

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !230
  %7 = load ptr, ptr %6, align 8, !tbaa !152
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !199
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  store i16 %2, ptr %5, align 2, !tbaa !202
  %6 = zext i16 %2 to i64
  %7 = invoke noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %6, ptr noundef null) #7
          to label %8 unwind label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  store ptr %7, ptr %9, align 8, !tbaa !210
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !231 {
  store i16 %1, ptr %0, align 4, !tbaa !212
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %0, i64 0, i32 1
  store i32 -2228259, ptr %3, align 4, !tbaa !232
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !202
  %6 = zext i16 %5 to i64
  invoke void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %6) #7
          to label %7 unwind label %8

7:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !233 {
  store ptr %1, ptr %0, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !233 {
  %4 = load ptr, ptr %0, align 8, !tbaa !234
  %5 = mul i64 %1, 40
  %6 = load ptr, ptr %4, align 8, !tbaa !152
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5) #7
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !233 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !233 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5, !prof !235

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !234
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1) #7
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !236 {
  %2 = load ptr, ptr %0, align 8, !tbaa !174
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !237 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !164 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !209
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  store i16 %4, ptr %5, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #7
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !169 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %4 = load i64, ptr %0, align 8, !tbaa !166
  store i64 %4, ptr %2, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  store ptr %5, ptr %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !169 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPKv(ptr noundef %1) #7
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %3) #7
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !169 {
  %2 = tail call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #1 comdat align 2 !prof !169 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !238
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !169 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.0", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %6 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !169 {
  %2 = load ptr, ptr %0, align 8, !tbaa.struct !238
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !169 {
  %2 = load ptr, ptr %0, align 8, !tbaa !215
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  store ptr %4, ptr %0, align 8, !tbaa !215
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !169 {
  %2 = load ptr, ptr %0, align 8, !tbaa !215
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !239 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #7
  br i1 %3, label %4, label %9, !prof !240

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !202
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %1, i16 noundef zeroext %6) #7
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ true, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPKv(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !169 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !241 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !202
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %4) #7
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !239 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString>::NextBlock", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !232
  %5 = icmp eq i32 %4, -2228259
  %6 = load i16, ptr %0, align 4
  %7 = icmp ule i16 %6, %1
  %8 = select i1 %5, i1 %7, i1 false, !prof !242
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 !prof !241 {
  %4 = alloca %"struct.std::less", align 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !202
  %7 = icmp ult i16 %6, %2
  br i1 %7, label %8, label %9, !prof !243

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i16 [ %6, %8 ], [ %2, %3 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !210
  %13 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %12) #8
  br i1 %13, label %19, label %14, !prof !244

14:                                               ; preds = %9
  %15 = load ptr, ptr %11, align 8, !tbaa !210
  %16 = zext i16 %10 to i64
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 %16
  %18 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %17) #8
  br i1 %18, label %20, label %19, !prof !245

19:                                               ; preds = %14, %9
  br label %20

20:                                               ; preds = %14, %19
  %21 = phi i1 [ false, %19 ], [ true, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i1 %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !246 {
  %4 = icmp ult ptr %1, %2
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !247 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !248 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !203 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !249 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !221 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !181
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !194
  store ptr null, ptr %5, align 8, !tbaa !194
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !179
  store ptr %10, ptr %3, align 8, !tbaa !181
  store ptr %1, ptr %9, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !169 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !169 {
  %2 = load ptr, ptr %0, align 8, !tbaa !215
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  store ptr %4, ptr %0, align 8, !tbaa !215
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !173 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  store ptr %2, ptr %4, align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br i1 %6, label %7, label %13, !prof !250

7:                                                ; preds = %3, %7
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  br i1 %10, label %7, label %11, !prof !251, !llvm.loop !252

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !173 {
  store ptr %1, ptr %0, align 8, !tbaa !166
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !173 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %5, label %6, label %9, !prof !250

6:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #7
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  %8 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %8, label %6, label %9, !prof !251, !llvm.loop !253

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !187 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %1) #7
  %4 = load ptr, ptr %0, align 8, !tbaa !254
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !256 {
  %3 = load ptr, ptr %1, align 8, !tbaa !188
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::XalanDOMString> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  store ptr %5, ptr %1, align 8, !tbaa !188
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !187 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !187 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !187 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !257

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #7
  %6 = load ptr, ptr %2, align 8, !tbaa !152
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #7
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #1 comdat align 2 !prof !187 {
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !202
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !258

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %24, %1
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  ret void

12:                                               ; preds = %9, %24
  %13 = phi i64 [ 0, %9 ], [ %26, %24 ]
  %14 = phi i16 [ 0, %9 ], [ %25, %24 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !210
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 %13
  %17 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv(ptr noundef %16) #7
  %18 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %17) #7
          to label %19 unwind label %33

19:                                               ; preds = %12
  br i1 %18, label %20, label %24, !prof !259

20:                                               ; preds = %19
  %21 = load ptr, ptr %10, align 8, !tbaa !210
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 %13
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %22) #8
  %23 = add nuw i16 %14, 1
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i16 [ %23, %20 ], [ %14, %19 ]
  %26 = add nuw nsw i64 %13, 1
  %27 = load i16, ptr %2, align 2, !tbaa !202
  %28 = zext i16 %27 to i64
  %29 = icmp ult i64 %26, %28
  %30 = load i16, ptr %3, align 8
  %31 = icmp ult i16 %25, %30
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %12, label %11, !prof !260, !llvm.loop !261

33:                                               ; preds = %12
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !262 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !263 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !264
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !267

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #7
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !268
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #7
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !269 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !270 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !271

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #7
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !272, !llvm.loop !273

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !274 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !275 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !270 {
  %3 = load ptr, ptr %0, align 8, !tbaa !276
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #1 comdat align 2 !prof !277 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !279
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !151 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 !prof !164 {
  %2 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %2) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !164 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEPKcj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !169 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2) #7
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %4) #7
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createERKNS_14XalanDOMStringEjj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !169 {
  %5 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2, i32 noundef %3) #7
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %5) #7
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !169 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2) #7
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %4) #7
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEjt(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 !prof !169 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #7
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #7
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %4) #7
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!150}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!36 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerEtb, i64 3}
!37 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerEtb, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt, i64 3}
!38 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 3}
!39 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 3}
!40 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, i64 3}
!41 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv, i64 41374568}
!42 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv, i64 82749133}
!43 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv, i64 41374565}
!44 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, i64 2523}
!45 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE6createERN11xercesc_2_713MemoryManagerEt, i64 2523}
!46 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_, i64 2523}
!47 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13allocateBlockEv, i64 41374568}
!48 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv, i64 84042730}
!49 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE16commitAllocationEPS1_, i64 41374568}
!50 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE14blockAvailableEv, i64 41374568}
!51 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv, i64 1293594}
!52 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_, i64 1293594}
!53 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 6}
!54 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 6}
!55 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv, i64 6}
!56 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 6}
!57 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, i64 6}
!58 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, i64 6}
!59 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 2}
!60 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 3}
!61 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 3}
!62 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi, i64 1}
!63 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 1}
!64 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11destroyNodeERNS5_4NodeE, i64 1}
!65 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10deallocateEPNS5_4NodeE, i64 1514}
!66 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 292410287}
!67 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 292410287}
!68 = !{ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 163168932}
!69 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 123935280}
!70 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 123935280}
!71 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 2521}
!72 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm, i64 4}
!73 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 82749031}
!74 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 82749031}
!75 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5emptyEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 82749031}
!76 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 1293593}
!77 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9push_backERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 1293593}
!78 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE6createERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, i64 2521}
!79 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE16getMemoryManagerEv, i64 41377089}
!80 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv, i64 41374566}
!81 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 82749031}
!82 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 82749031}
!83 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 82749031}
!84 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 82749031}
!85 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE11getListHeadEv, i64 165498062}
!86 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEmmEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 5465141242}
!87 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8allocateEm, i64 2522}
!88 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE, i64 41385245}
!89 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 165540980}
!90 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 2521}
!91 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 2521}
!92 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt, i64 2521}
!93 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 2521}
!94 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 2521}
!95 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt, i64 2521}
!96 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockC2Et, i64 80641}
!97 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEC2ERN11xercesc_2_713MemoryManagerE, i64 2521}
!98 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE8allocateEmPKv, i64 2521}
!99 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEE10deallocateEPS1_m, i64 2521}
!100 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEED2Ev, i64 2521}
!101 = !{ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_, i64 127}
!102 = !{ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE, ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock10isValidForEt, i64 126}
!103 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE9ownsBlockEPKS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t, i64 1956800028}
!104 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtE11isInBordersEPKS1_t, ptr @_ZNKSt4lessIPKN11xalanc_1_1014XalanDOMStringEEclES3_S3_, i64 2953879889}
!105 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 166791863}
!106 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5frontEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 166791863}
!107 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 40091652}
!108 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 40091652}
!109 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 1293593}
!110 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE9pop_frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 1293593}
!111 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 41382724}
!112 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE, i64 41382724}
!113 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 2168}
!114 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 2162}
!115 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_, i64 2162}
!116 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_14XalanDOMStringEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv, i64 2162}
!117 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5beginEv, i64 6}
!118 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE3endEv, i64 2168}
!119 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 2168}
!120 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEi, i64 2162}
!121 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 2162}
!122 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE8freeNodeERNS5_4NodeE, i64 2162}
!123 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_, i64 2521}
!124 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, i64 2521}
!125 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 120307695}
!126 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, i64 2521}
!127 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_, i64 2520}
!128 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEclERS3_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, i64 2521}
!129 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtED2Ev, i64 2521}
!130 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlock4castEPv, i64 128}
!131 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, ptr @_ZNK11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE15isOccupiedBlockEPKNS2_9NextBlockE, i64 128}
!132 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtED2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 105}
!133 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!144 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 3}
!145 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE13allocateBlockEv, i64 41374568}
!146 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv, ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv, i64 41374568}
!147 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 41374568}
!148 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator6createEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEE16commitAllocationEPS1_, i64 41374568}
!149 = !{ptr @_ZN11xalanc_1_1031XalanDOMStringReusableAllocator16getMemoryManagerEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, i64 41374568}
!150 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!151 = !{!"function_entry_count", i64 3}
!152 = !{!153, !153, i64 0}
!153 = !{!"vtable pointer", !154, i64 0}
!154 = !{!"Simple C++ TBAA"}
!155 = !{!156, !162, i64 40}
!156 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !157, i64 0, !162, i64 40}
!157 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !158, i64 8, !160, i64 16}
!158 = !{!"short", !159, i64 0}
!159 = !{!"omnipotent char", !154, i64 0}
!160 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !161, i64 0, !161, i64 8, !161, i64 16}
!161 = !{!"any pointer", !159, i64 0}
!162 = !{!"bool", !159, i64 0}
!163 = !{!157, !158, i64 8}
!164 = !{!"function_entry_count", i64 41374568}
!165 = !{!"branch_weights", i32 3, i32 41374567}
!166 = !{!161, !161, i64 0}
!167 = !{!"branch_weights", i32 41372048, i32 2520}
!168 = !{!"branch_weights", i32 40080976, i32 1293594}
!169 = !{!"function_entry_count", i64 0}
!170 = distinct !{!170, !171}
!171 = !{!"llvm.loop.mustprogress"}
!172 = distinct !{!172, !171}
!173 = !{!"function_entry_count", i64 6}
!174 = !{!160, !161, i64 0}
!175 = distinct !{!175, !171}
!176 = !{!160, !161, i64 8}
!177 = !{!"branch_weights", i32 1, i32 4}
!178 = distinct !{!178, !171}
!179 = !{!160, !161, i64 16}
!180 = !{!"branch_weights", i32 4, i32 2522}
!181 = !{!182, !161, i64 16}
!182 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEE4NodeE", !161, i64 0, !161, i64 8, !161, i64 16}
!183 = distinct !{!183, !171}
!184 = !{!"function_entry_count", i64 292410287}
!185 = !{!"function_entry_count", i64 163168932}
!186 = !{!"function_entry_count", i64 123935280}
!187 = !{!"function_entry_count", i64 2521}
!188 = !{!189, !161, i64 0}
!189 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEE", !161, i64 0}
!190 = !{!"function_entry_count", i64 206926225}
!191 = !{!"function_entry_count", i64 2524}
!192 = !{!"function_entry_count", i64 581843629}
!193 = !{!"branch_weights", i32 4, i32 581843627}
!194 = !{!182, !161, i64 8}
!195 = !{!"function_entry_count", i64 416348088}
!196 = !{!"function_entry_count", i64 2038069646}
!197 = !{!"function_entry_count", i64 82749031}
!198 = !{!"function_entry_count", i64 244428771}
!199 = !{!200, !158, i64 8}
!200 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_14XalanDOMStringEtEE", !201, i64 0, !158, i64 8, !158, i64 10, !161, i64 16}
!201 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_14XalanDOMStringEEE", !161, i64 0}
!202 = !{!200, !158, i64 10}
!203 = !{!"function_entry_count", i64 1293593}
!204 = !{!158, !158, i64 0}
!205 = !{!"function_entry_count", i64 41377089}
!206 = !{!"branch_weights", i32 1, i32 41374569}
!207 = !{!208, !158, i64 24}
!208 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtEE", !200, i64 0, !158, i64 24, !158, i64 26}
!209 = !{!208, !158, i64 26}
!210 = !{!200, !161, i64 16}
!211 = !{!"branch_weights", i32 41374569, i32 1}
!212 = !{!213, !158, i64 0}
!213 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_14XalanDOMStringEtE9NextBlockE", !158, i64 0, !214, i64 4}
!214 = !{!"int", !159, i64 0}
!215 = !{!216, !161, i64 0}
!216 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEENS_9XalanListIS5_E4NodeEEE", !161, i64 0}
!217 = !{!"function_entry_count", i64 165498062}
!218 = !{!"function_entry_count", i64 5465141242}
!219 = !{!"function_entry_count", i64 5956978044}
!220 = !{!"function_entry_count", i64 13167999625}
!221 = !{!"function_entry_count", i64 41385245}
!222 = !{!"branch_weights", i32 2522, i32 41382725}
!223 = !{!"function_entry_count", i64 50702}
!224 = !{!225, !161, i64 8}
!225 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !161, i64 0, !161, i64 8}
!226 = !{!"branch_weights", i32 1, i32 2521}
!227 = !{!"branch_weights", i32 78152, i32 2521}
!228 = distinct !{!228, !171}
!229 = !{!"branch_weights", i32 50703, i32 1}
!230 = !{!225, !161, i64 0}
!231 = !{!"function_entry_count", i64 41455135}
!232 = !{!213, !214, i64 4}
!233 = !{!"function_entry_count", i64 22998}
!234 = !{!201, !161, i64 0}
!235 = !{!"branch_weights", i32 1, i32 22999}
!236 = !{!"function_entry_count", i64 41377095}
!237 = !{!"function_entry_count", i64 41374695}
!238 = !{i64 0, i64 8, !166}
!239 = !{!"function_entry_count", i64 127}
!240 = !{!"branch_weights", i32 128, i32 1}
!241 = !{!"function_entry_count", i64 1956800028}
!242 = !{!"branch_weights", i32 23, i32 106}
!243 = !{!"branch_weights", i32 1, i32 1956800029}
!244 = !{!"branch_weights", i32 959720168, i32 997079862}
!245 = !{!"branch_weights", i32 41374591, i32 955705272}
!246 = !{!"function_entry_count", i64 2953879889}
!247 = !{!"function_entry_count", i64 166791863}
!248 = !{!"function_entry_count", i64 40091652}
!249 = !{!"function_entry_count", i64 41382724}
!250 = !{!"branch_weights", i32 223, i32 1}
!251 = !{!"branch_weights", i32 80481, i32 223}
!252 = distinct !{!252, !171}
!253 = distinct !{!253, !171}
!254 = !{!255, !161, i64 0}
!255 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !161, i64 0}
!256 = !{!"function_entry_count", i64 120307695}
!257 = !{!"branch_weights", i32 1, i32 2522}
!258 = !{!"branch_weights", i32 338688, i32 6345124}
!259 = !{!"branch_weights", i32 106, i32 23}
!260 = !{!"branch_weights", i32 0, i32 338688}
!261 = distinct !{!261, !171}
!262 = !{!"function_entry_count", i64 43398227}
!263 = !{!"function_entry_count", i64 128698679}
!264 = !{!265, !266, i64 16}
!265 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !161, i64 0, !266, i64 8, !266, i64 16, !161, i64 24}
!266 = !{!"long", !159, i64 0}
!267 = !{!"branch_weights", i32 43398290, i32 85300391}
!268 = !{!265, !161, i64 24}
!269 = !{!"function_entry_count", i64 6521798503}
!270 = !{!"function_entry_count", i64 85300390}
!271 = !{!"branch_weights", i32 1, i32 12185770}
!272 = !{!"branch_weights", i32 12185770, i32 -193930395}
!273 = distinct !{!273, !171}
!274 = !{!"function_entry_count", i64 227375739}
!275 = !{!"function_entry_count", i64 568333389}
!276 = !{!265, !161, i64 0}
!277 = !{!"function_entry_count", i64 30137156670}
!278 = !{!"function_entry_count", i64 825654975}
!279 = !{!265, !266, i64 8}
