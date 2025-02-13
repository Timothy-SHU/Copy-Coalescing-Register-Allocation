; ModuleID = 'XalanElemTextAllocator.cpp'
source_filename = "XalanElemTextAllocator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanListIteratorBase.4" = type { ptr }
%"class.std::reverse_iterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase.4" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i16, i16, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::ReusableArenaBlock" = type <{ %"class.xalanc_1_10::ArenaBlockBase", i16, i16, [4 x i8] }>
%"class.xalanc_1_10::ElemText" = type { %"class.xalanc_1_10::ElemTemplateElement.base", [6 x i8] }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }
%"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText>::NextBlock" = type { i16, i32 }
%"struct.std::less" = type { i8 }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerEtb = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEED0Ev = comdat any

$_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE10ownsObjectEPKS1_ = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED0Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11destroyNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEi = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10deallocateEPNS5_4NodeE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4backEv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE14blockAvailableEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE6createERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE13allocateBlockEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlockC2Et = comdat any

$_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEE8allocateEmPKv = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEED2Ev = comdat any

$_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEE10deallocateEPS1_m = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock4castEPv = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE16commitAllocationEPS1_ = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4rendEv = comdat any

$_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE6rbeginEv = comdat any

$_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE10ownsObjectEPKS1_ = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv = comdat any

$_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_ = comdat any

$_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_ = comdat any

$_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEmmEv = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE15isOccupiedBlockEPKNS2_9NextBlockE = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock4castEPKv = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE9ownsBlockEPKS1_ = comdat any

$_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock10isValidForEt = comdat any

$_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE11isInBordersEPKS1_t = comdat any

$_ZNKSt4lessIPKN11xalanc_1_108ElemTextEEclES3_S3_ = comdat any

$_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_ = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_ = comdat any

$_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEv = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclERS3_ = comdat any

$_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtED2Ev = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8freeNodeERNS5_4NodeE = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10push_frontERKS4_ = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9pop_frontEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE = comdat any

$_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE = comdat any

$_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE = comdat any

$_ZTSN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE = comdat any

$_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE = comdat any

$_ZTVN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE = comdat any

@_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEED0Ev, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE = linkonce_odr dso_local constant [55 x i8] c"N11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant [77 x i8] c"N11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE\00", comdat, align 1
@_ZTIN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTIN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE }, comdat, align 8
@_ZTVN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED0Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv] }, comdat, align 8

@_ZN11xalanc_1_1022XalanElemTextAllocatorC1ERN11xercesc_2_713MemoryManagerEt = dso_local unnamed_addr alias void (ptr, ptr, i16), ptr @_ZN11xalanc_1_1022XalanElemTextAllocatorC2ERN11xercesc_2_713MemoryManagerEt
@_ZN11xalanc_1_1022XalanElemTextAllocatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1022XalanElemTextAllocatorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanElemTextAllocatorC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 align 2 !prof !122 {
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerEtb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerEtb(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 !prof !122 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #8
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %6 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaAllocator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1022XalanElemTextAllocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !122 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  invoke void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1022XalanElemTextAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 !prof !134 {
  %7 = tail call noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) #8
  tail call void @_ZN11xalanc_1_108ElemTextC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322) %7, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3, i32 noundef %4, i32 noundef %5) #8
  tail call void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull %7) #8
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #0 comdat align 2 !prof !134 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  br i1 %4, label %9, label %5, !prof !135

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  br i1 %8, label %14, label %9, !prof !137

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !138
  %13 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %10, i16 noundef zeroext %12) #8
  store ptr %13, ptr %2, align 8, !tbaa !136
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  %17 = call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %16) #8
  ret ptr %17
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108ElemTextC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 1, ptr noundef nonnull align 1, ptr noundef nonnull align 1, i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !134 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef %1) #8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #8
  br i1 %9, label %13, label %10, !prof !139

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  store ptr %12, ptr %3, align 8, !tbaa !136
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %13

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 !prof !122 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  store i16 %2, ptr %4, align 8, !tbaa !138
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEED0Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(41) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  br i1 %8, label %43, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %10 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  store ptr %10, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %11 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  store ptr %11, ptr %4, align 8
  %12 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br i1 %12, label %13, label %24

13:                                               ; preds = %9, %21
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #8
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %19 = load ptr, ptr %18, align 8, !tbaa !136
  %20 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %1) #8
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %23 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  br i1 %23, label %13, label %24, !llvm.loop !141

24:                                               ; preds = %13, %21, %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  %25 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br i1 %25, label %26, label %39

26:                                               ; preds = %24, %36
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef %1) #8
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %32 = load ptr, ptr %31, align 8, !tbaa !136
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %34 = load ptr, ptr %33, align 8, !tbaa !136
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #8
  %38 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  br i1 %38, label %26, label %39, !llvm.loop !143

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
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !122 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %6) #8
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr %7) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !122 {
  store ptr %1, ptr %0, align 8, !tbaa !144
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !140 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  br i1 %8, label %14, label %9

9:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #8
  %11 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !138
  %13 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %10, i16 noundef zeroext %12) #8
  store ptr %13, ptr %2, align 8, !tbaa !136
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %14

14:                                               ; preds = %9, %5
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  %17 = call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %16) #8
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = alloca %"class.std::reverse_iterator", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br i1 %6, label %7, label %14

7:                                                ; preds = %2, %11
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(28) %9, ptr noundef %1) #8
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  %13 = call noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  br i1 %13, label %7, label %14, !llvm.loop !145

14:                                               ; preds = %11, %7, %2
  %15 = phi i1 [ false, %2 ], [ %10, %7 ], [ %10, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i1 %15
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8, !prof !147

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
          to label %9 unwind label %34

9:                                                ; preds = %8, %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
          to label %10 unwind label %32

10:                                               ; preds = %9
  %11 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
          to label %12 unwind label %32

12:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %11, label %13, label %17, !prof !147

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  invoke void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #8
          to label %14 unwind label %32

14:                                               ; preds = %13
  %15 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %15) #8
          to label %16 unwind label %32

16:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %9, !llvm.loop !148

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !149
  br label %20

20:                                               ; preds = %23, %17
  %21 = phi ptr [ %19, %17 ], [ %25, %23 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !150

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !151
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %21) #8
          to label %20 unwind label %30, !llvm.loop !153

26:                                               ; preds = %20
  %27 = load ptr, ptr %5, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %27) #8
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
  call void @__clang_call_terminate(ptr %38) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !154 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !155 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !156 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11destroyNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %4 = load ptr, ptr %1, align 8, !tbaa !157
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  store ptr %6, ptr %1, align 8, !tbaa !157
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !159 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10deallocateEPNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !160 {
  %3 = load ptr, ptr %0, align 8, !tbaa !144
  %4 = load ptr, ptr %3, align 8, !tbaa !123
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !162

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #8
  store ptr %6, ptr %2, align 8, !tbaa !146
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %6, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !151
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %6, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !163
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !164 {
  store ptr %1, ptr %0, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !160 {
  %3 = mul i64 %1, 24
  %4 = load ptr, ptr %0, align 8, !tbaa !144
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !155 {
  %3 = load ptr, ptr %0, align 8, !tbaa !157
  %4 = load ptr, ptr %1, align 8, !tbaa !157
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !165 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %4 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE14blockAvailableEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !167
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !170
  %6 = icmp ult i16 %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE6createERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %3 = alloca i16, align 2
  %4 = alloca ptr, align 8
  store i16 %1, ptr %3, align 2, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %5 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(2) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE13allocateBlockEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 comdat align 2 !prof !134 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !167
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !170
  %6 = icmp eq i16 %3, %5
  br i1 %6, label %22, label %7, !prof !172

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !173
  %10 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !175
  %12 = icmp eq i16 %9, %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !176
  %15 = zext i16 %9 to i64
  %16 = getelementptr inbounds %"class.xalanc_1_10::ElemText", ptr %14, i64 %15
  br i1 %12, label %17, label %22, !prof !139

17:                                               ; preds = %7
  %18 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock4castEPv(ptr noundef %16) #8
  %19 = load i16, ptr %18, align 4, !tbaa !177
  store i16 %19, ptr %10, align 2, !tbaa !175
  %20 = load i16, ptr %2, align 8, !tbaa !167
  %21 = add i16 %20, 1
  store i16 %21, ptr %2, align 8, !tbaa !167
  br label %22

22:                                               ; preds = %7, %17, %1
  %23 = phi ptr [ null, %1 ], [ %16, %17 ], [ %16, %7 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !165 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  %6 = load ptr, ptr %2, align 8
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !165 {
  %3 = load ptr, ptr %0, align 8, !tbaa !180
  %4 = load ptr, ptr %1, align 8, !tbaa !180
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !165 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !182 {
  %2 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !182 {
  store ptr %1, ptr %0, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = load ptr, ptr %1, align 8, !tbaa !157
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !163
  store ptr %5, ptr %1, align 8, !tbaa !157
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !183 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !184 {
  %3 = load ptr, ptr %1, align 8, !tbaa !157
  store ptr %3, ptr %0, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !149
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !185

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !151
  br label %12

10:                                               ; preds = %3
  %11 = tail call noundef ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) #8
  store ptr %11, ptr %4, align 8, !tbaa !149
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %5, %7 ], [ %11, %10 ]
  %14 = phi ptr [ %9, %7 ], [ null, %10 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !144
  %16 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %15) #8
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %13, i64 0, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !163
  store ptr %20, ptr %17, align 8, !tbaa !136
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %13, i64 0, i32 2
  %22 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  store ptr %22, ptr %21, align 8, !tbaa !136
  %23 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !163
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %25, i64 0, i32 2
  store ptr %13, ptr %26, align 8, !tbaa !151
  %27 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %27, i64 0, i32 1
  store ptr %13, ptr %28, align 8, !tbaa !163
  store ptr %14, ptr %4, align 8, !tbaa !149
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !122 {
  %4 = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %4, ptr %0, align 8, !tbaa !136
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 2 dereferenceable(2) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 32) #8
  %6 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  %7 = load i16, ptr %3, align 2, !tbaa !171
  invoke void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(28) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i16 noundef zeroext %7) #8
          to label %8 unwind label %10

8:                                                ; preds = %4
  store ptr %6, ptr %1, align 8, !tbaa !136
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #8
  %9 = load ptr, ptr %1, align 8, !tbaa !136
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret ptr %9

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #0 comdat align 2 !prof !186 {
  store ptr %1, ptr %0, align 8, !tbaa !136
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !123
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #8
  store ptr %8, ptr %4, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !173
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  store i16 0, ptr %5, align 2, !tbaa !175
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !170
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9, !prof !189

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %12, %3
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %16, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !176
  %15 = getelementptr inbounds %"class.xalanc_1_10::ElemText", ptr %14, i64 %13
  %16 = add nuw nsw i64 %13, 1
  %17 = trunc i64 %16 to i16
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %15, i16 noundef zeroext %17) #8
  %18 = load i16, ptr %6, align 2, !tbaa !170
  %19 = zext i16 %18 to i64
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %12, label %11, !prof !190, !llvm.loop !191
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !186 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !187
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !192

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !193
  %7 = load ptr, ptr %6, align 8, !tbaa !123
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  store i16 0, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  store i16 %2, ptr %5, align 2, !tbaa !170
  %6 = zext i16 %2 to i64
  %7 = invoke noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %6, ptr noundef null) #8
          to label %8 unwind label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  store ptr %7, ptr %9, align 8, !tbaa !176
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlockC2Et(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !194 {
  store i16 %1, ptr %0, align 4, !tbaa !177
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText>::NextBlock", ptr %0, i64 0, i32 1
  store i32 -2228259, ptr %3, align 4, !tbaa !195
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %5 = load i16, ptr %4, align 2, !tbaa !170
  %6 = zext i16 %5 to i64
  invoke void @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, i64 noundef %6) #8
          to label %7 unwind label %8

7:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !122 {
  store ptr %1, ptr %0, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEE8allocateEmPKv(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %4 = load ptr, ptr %0, align 8, !tbaa !196
  %5 = mul i64 %1, 328
  %6 = load ptr, ptr %4, align 8, !tbaa !123
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %5) #8
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !122 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEE10deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5, !prof !147

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1) #8
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !160 {
  %2 = load ptr, ptr %0, align 8, !tbaa !144
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock4castEPv(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !134 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE16commitAllocationEPS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !134 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !175
  %5 = getelementptr inbounds %"class.xalanc_1_10::ReusableArenaBlock", ptr %0, i64 0, i32 1
  store i16 %4, ptr %5, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = tail call ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #8
  tail call void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !140 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %4 = load i64, ptr %0, align 8, !tbaa !136
  store i64 %4, ptr %2, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  store ptr %5, ptr %3, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock4castEPKv(ptr noundef %1) #8
  %4 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %3) #8
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %2 = tail call ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEC2ESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #1 comdat align 2 !prof !140 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !197
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEEbRKSt16reverse_iteratorIT_ESG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !140 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.4", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %6 = tail call ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt16reverse_iteratorIN11xalanc_1_1021XalanListIteratorBaseINS0_28XalanListConstIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %2 = load ptr, ptr %0, align 8, !tbaa.struct !197
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  store ptr %4, ptr %0, align 8, !tbaa !180
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) #8
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !170
  %7 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %1, i16 noundef zeroext %6) #8
  %8 = xor i1 %7, true
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i1 [ true, %2 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock4castEPKv(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !140 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE9ownsBlockEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !134 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !170
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %4) #8
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock10isValidForEt(ptr noundef nonnull align 4 dereferenceable(8) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText>::NextBlock", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !195
  %5 = icmp eq i32 %4, -2228259
  %6 = load i16, ptr %0, align 4
  %7 = icmp ule i16 %6, %1
  %8 = select i1 %5, i1 %7, i1 false
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE11isInBordersEPKS1_t(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 !prof !134 {
  %4 = alloca %"struct.std::less", align 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %6 = load i16, ptr %5, align 2, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  %7 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !176
  %9 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_108ElemTextEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %8) #9
  br i1 %9, label %16, label %10, !prof !172

10:                                               ; preds = %3
  %11 = call i16 @llvm.umin.i16(i16 %6, i16 %2)
  %12 = load ptr, ptr %7, align 8, !tbaa !176
  %13 = zext i16 %11 to i64
  %14 = getelementptr inbounds %"class.xalanc_1_10::ElemText", ptr %12, i64 %13
  %15 = call noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_108ElemTextEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef %14) #9
  br i1 %15, label %17, label %16, !prof !139

16:                                               ; preds = %10, %3
  br label %17

17:                                               ; preds = %10, %16
  %18 = phi i1 [ false, %16 ], [ true, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i1 %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt4lessIPKN11xalanc_1_108ElemTextEEclES3_S3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !165 {
  %4 = icmp ult ptr %1, %2
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  store ptr %4, ptr %0, align 8, !tbaa !180
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !122 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  store ptr %2, ptr %4, align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br i1 %6, label %7, label %13, !prof !198

7:                                                ; preds = %3, %7
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  %10 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br i1 %10, label %7, label %11, !prof !189, !llvm.loop !199

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !122 {
  store ptr %1, ptr %0, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %5 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %5, label %6, label %9, !prof !198

6:                                                ; preds = %1, %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEi(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0) #8
  %7 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %8 = call noundef zeroext i1 @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br i1 %8, label %6, label %9, !prof !189, !llvm.loop !200

9:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %1) #8
  %4 = load ptr, ptr %0, align 8, !tbaa !201
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEv(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %3 = load ptr, ptr %1, align 8, !tbaa !157
  %4 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !151
  store ptr %5, ptr %1, align 8, !tbaa !157
  tail call void @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_(ptr noundef %0) local_unnamed_addr #1 comdat !prof !122 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !122 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5, !prof !147

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) #8
  %6 = load ptr, ptr %2, align 8, !tbaa !123
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #8
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclERS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #1 comdat align 2 !prof !122 {
  tail call void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtED2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %2, align 2, !tbaa !170
  %5 = icmp ne i16 %4, 0
  %6 = load i16, ptr %3, align 8
  %7 = icmp ne i16 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !203

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %12

11:                                               ; preds = %26, %1
  tail call void @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  ret void

12:                                               ; preds = %9, %26
  %13 = phi i64 [ 0, %9 ], [ %28, %26 ]
  %14 = phi i16 [ 0, %9 ], [ %27, %26 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !176
  %16 = getelementptr inbounds %"class.xalanc_1_10::ElemText", ptr %15, i64 %13
  %17 = tail call noundef ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock4castEPv(ptr noundef %16) #8
  %18 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE15isOccupiedBlockEPKNS2_9NextBlockE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %17) #8
          to label %19 unwind label %35

19:                                               ; preds = %12
  br i1 %18, label %20, label %26

20:                                               ; preds = %19
  %21 = load ptr, ptr %10, align 8, !tbaa !176
  %22 = getelementptr inbounds %"class.xalanc_1_10::ElemText", ptr %21, i64 %13
  %23 = load ptr, ptr %22, align 8, !tbaa !123
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(322) %22) #9
  %25 = add nuw i16 %14, 1
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i16 [ %25, %20 ], [ %14, %19 ]
  %28 = add nuw nsw i64 %13, 1
  %29 = load i16, ptr %2, align 2, !tbaa !170
  %30 = zext i16 %29 to i64
  %31 = icmp ult i64 %28, %30
  %32 = load i16, ptr %3, align 8
  %33 = icmp ult i16 %27, %32
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %12, label %11, !prof !204, !llvm.loop !205

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !122 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !163
  %7 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !151
  %8 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ReusableArenaBlock<xalanc_1_10::ElemText> *>::Node", ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8, !tbaa !163
  store ptr null, ptr %5, align 8, !tbaa !163
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  store ptr %10, ptr %3, align 8, !tbaa !151
  store ptr %1, ptr %9, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !206 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10push_frontERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %3 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  %4 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !140 {
  %2 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanListIteratorBase") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #8
  call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5eraseENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !140 {
  %3 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  tail call void @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8freeNodeERNS5_4NodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!121}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!35 = !{ptr @_ZN11xalanc_1_1022XalanElemTextAllocatorC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerEtb, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerEtb, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1022XalanElemTextAllocatorD2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEED2Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1022XalanElemTextAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, i64 17}
!41 = !{ptr @_ZN11xalanc_1_1022XalanElemTextAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_108ElemTextC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 17}
!42 = !{ptr @_ZN11xalanc_1_1022XalanElemTextAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_, i64 17}
!43 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv, i64 17}
!44 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv, i64 32}
!45 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE14blockAvailableEv, i64 15}
!46 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, i64 3}
!47 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE6createERN11xercesc_2_713MemoryManagerEt, i64 3}
!48 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10push_frontERKS4_, i64 3}
!49 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE13allocateBlockEv, i64 17}
!50 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv, i64 35}
!51 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE16commitAllocationEPS1_, i64 17}
!52 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE14blockAvailableEv, i64 17}
!53 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9pop_frontEv, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEE16commitAllocationEPS1_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9push_backERKS4_, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE16getMemoryManagerEv, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv, i64 1}
!62 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, i64 1}
!63 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv, i64 1}
!64 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEED2Ev, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 1}
!65 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEED2Ev, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10deallocateEPNS5_4NodeE, i64 2}
!66 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv, i64 122}
!67 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 122}
!68 = !{ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 39}
!69 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv, i64 38}
!70 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 38}
!71 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEi, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 1}
!72 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8allocateEm, i64 2}
!73 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, i64 34}
!74 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv, i64 34}
!75 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5emptyEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEeqERKSA_, i64 34}
!76 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE6createERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, i64 1}
!77 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEE16getMemoryManagerEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE16getMemoryManagerEv, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE13allocateBlockEv, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlock4castEPv, i64 15}
!79 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv, i64 34}
!80 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 34}
!81 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv, ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv, i64 34}
!82 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERS9_, i64 34}
!83 = !{ptr @_ZNK11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE11getListHeadEv, i64 68}
!84 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8allocateEm, i64 1}
!85 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE, i64 1}
!86 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 4}
!87 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!91 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_18ReusableArenaBlockINS_8ElemTextEtEEN11xercesc_2_713MemoryManagerEtEEPT_RS5_RS7_RT0_RKT1_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlockC2Et, i64 6}
!94 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtEC2ERN11xercesc_2_713MemoryManagerEt, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEE8allocateEmPKv, i64 1}
!96 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEE10deallocateEPS1_m, i64 1}
!97 = !{ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtED2Ev, ptr @_ZN11xalanc_1_1014XalanAllocatorINS_8ElemTextEED2Ev, i64 1}
!98 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE9ownsBlockEPKS1_, ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE11isInBordersEPKS1_t, i64 17}
!99 = !{ptr @_ZNK11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtE11isInBordersEPKS1_t, ptr @_ZNKSt4lessIPKN11xalanc_1_108ElemTextEEclES3_S3_, i64 33}
!100 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 2}
!101 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 1}
!102 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_, i64 1}
!103 = !{ptr @_ZSt8for_eachIN11xalanc_1_1021XalanListIteratorBaseINS0_23XalanListIteratorTraitsIPNS0_18ReusableArenaBlockINS0_8ElemTextEtEEEENS0_9XalanListIS6_E4NodeEEENS0_13DeleteFunctorIS5_EEET0_T_SF_SE_, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEv, i64 1}
!104 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, i64 1}
!105 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE3endEv, i64 2}
!106 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEneERKSA_, i64 2}
!107 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEi, i64 1}
!108 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEE4nodeEv, i64 1}
!109 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5clearEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE8freeNodeERNS5_4NodeE, i64 1}
!110 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_19XalanDestroyFunctorIT_EEPKS5_, i64 1}
!111 = !{ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEppEv, ptr @_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEC2ERKSA_, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPKS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclEPS3_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclERS3_, i64 1}
!115 = !{ptr @_ZN11xalanc_1_1019XalanDestroyFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEclERS3_, ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtED2Ev, i64 1}
!116 = !{ptr @_ZN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtED2Ev, ptr @_ZN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtED2Ev, i64 1}
!117 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, i64 67}
!118 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5frontEv, ptr @_ZNK11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEdeEv, i64 67}
!119 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE5beginEv, i64 1}
!120 = !{ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE10push_frontERKS4_, ptr @_ZN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE13constructNodeERKS4_NS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsIS4_EENS5_4NodeEEE, i64 1}
!121 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!122 = !{!"function_entry_count", i64 1}
!123 = !{!124, !124, i64 0}
!124 = !{!"vtable pointer", !125, i64 0}
!125 = !{!"Simple C++ TBAA"}
!126 = !{!127, !133, i64 40}
!127 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_8ElemTextEEE", !128, i64 0, !133, i64 40}
!128 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_8ElemTextENS_18ReusableArenaBlockIS1_tEEEE", !129, i64 8, !131, i64 16}
!129 = !{!"short", !130, i64 0}
!130 = !{!"omnipotent char", !125, i64 0}
!131 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEE", !132, i64 0, !132, i64 8, !132, i64 16}
!132 = !{!"any pointer", !130, i64 0}
!133 = !{!"bool", !130, i64 0}
!134 = !{!"function_entry_count", i64 17}
!135 = !{!"branch_weights", i32 2, i32 17}
!136 = !{!132, !132, i64 0}
!137 = !{!"branch_weights", i32 17, i32 1}
!138 = !{!128, !129, i64 8}
!139 = !{!"branch_weights", i32 18, i32 1}
!140 = !{!"function_entry_count", i64 0}
!141 = distinct !{!141, !142}
!142 = !{!"llvm.loop.mustprogress"}
!143 = distinct !{!143, !142}
!144 = !{!131, !132, i64 0}
!145 = distinct !{!145, !142}
!146 = !{!131, !132, i64 8}
!147 = !{!"branch_weights", i32 1, i32 2}
!148 = distinct !{!148, !142}
!149 = !{!131, !132, i64 16}
!150 = !{!"branch_weights", i32 2, i32 2}
!151 = !{!152, !132, i64 16}
!152 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_8ElemTextEtEEE4NodeE", !132, i64 0, !132, i64 8, !132, i64 16}
!153 = distinct !{!153, !142}
!154 = !{!"function_entry_count", i64 122}
!155 = !{!"function_entry_count", i64 39}
!156 = !{!"function_entry_count", i64 38}
!157 = !{!158, !132, i64 0}
!158 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEE", !132, i64 0}
!159 = !{!"function_entry_count", i64 5}
!160 = !{!"function_entry_count", i64 2}
!161 = !{!"function_entry_count", i64 228}
!162 = !{!"branch_weights", i32 2, i32 228}
!163 = !{!152, !132, i64 8}
!164 = !{!"function_entry_count", i64 161}
!165 = !{!"function_entry_count", i64 34}
!166 = !{!"function_entry_count", i64 50}
!167 = !{!168, !129, i64 8}
!168 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_8ElemTextEtEE", !169, i64 0, !129, i64 8, !129, i64 10, !132, i64 16}
!169 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_8ElemTextEEE", !132, i64 0}
!170 = !{!168, !129, i64 10}
!171 = !{!129, !129, i64 0}
!172 = !{!"branch_weights", i32 1, i32 18}
!173 = !{!174, !129, i64 24}
!174 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtEE", !168, i64 0, !129, i64 24, !129, i64 26}
!175 = !{!174, !129, i64 26}
!176 = !{!168, !132, i64 16}
!177 = !{!178, !129, i64 0}
!178 = !{!"_ZTSN11xalanc_1_1018ReusableArenaBlockINS_8ElemTextEtE9NextBlockE", !129, i64 0, !179, i64 4}
!179 = !{!"int", !130, i64 0}
!180 = !{!181, !132, i64 0}
!181 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_28XalanListConstIteratorTraitsIPNS_18ReusableArenaBlockINS_8ElemTextEtEEEENS_9XalanListIS5_E4NodeEEE", !132, i64 0}
!182 = !{!"function_entry_count", i64 68}
!183 = !{!"function_entry_count", i64 119}
!184 = !{!"function_entry_count", i64 35}
!185 = !{!"branch_weights", i32 2, i32 1}
!186 = !{!"function_entry_count", i64 50702}
!187 = !{!188, !132, i64 8}
!188 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !132, i64 0, !132, i64 8}
!189 = !{!"branch_weights", i32 1, i32 127}
!190 = !{!"branch_weights", i32 577, i32 127}
!191 = distinct !{!191, !142}
!192 = !{!"branch_weights", i32 50703, i32 1}
!193 = !{!188, !132, i64 0}
!194 = !{!"function_entry_count", i64 27}
!195 = !{!178, !179, i64 4}
!196 = !{!169, !132, i64 0}
!197 = !{i64 0, i64 8, !136}
!198 = !{!"branch_weights", i32 127, i32 1}
!199 = distinct !{!199, !142}
!200 = distinct !{!200, !142}
!201 = !{!202, !132, i64 0}
!202 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18ReusableArenaBlockINS_8ElemTextEtEEEE", !132, i64 0}
!203 = !{!"branch_weights", i32 2, i32 5}
!204 = !{!"branch_weights", i32 0, i32 2}
!205 = distinct !{!205, !142}
!206 = !{!"function_entry_count", i64 67}
