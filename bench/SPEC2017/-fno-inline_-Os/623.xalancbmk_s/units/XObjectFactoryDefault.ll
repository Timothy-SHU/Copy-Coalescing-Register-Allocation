; ModuleID = 'XObjectFactoryDefault.cpp'
source_filename = "XObjectFactoryDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.xalanc_1_10::XObjectFactory::DeleteXObjectFunctor" = type <{ ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XObjectFactoryDefault" = type { %"class.xalanc_1_10::XObjectFactory", %"class.xalanc_1_10::XStringAdapterAllocator", %"class.xalanc_1_10::XStringAllocator", %"class.xalanc_1_10::XStringCachedAllocator", %"class.xalanc_1_10::XStringReferenceAllocator", %"class.xalanc_1_10::XNumberAllocator", %"class.xalanc_1_10::XNodeSetAllocator", %"class.xalanc_1_10::XNodeSetNodeProxyAllocator", %"class.xalanc_1_10::XTokenNumberAdapterAllocator", %"class.xalanc_1_10::XTokenStringAdapterAllocator", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.32", %"class.xalanc_1_10::XalanVector.33", %"class.xalanc_1_10::XalanVector.34", %"class.xalanc_1_10::XNull", %"class.xalanc_1_10::XBoolean", %"class.xalanc_1_10::XBoolean" }
%"class.xalanc_1_10::XObjectFactory" = type { ptr, ptr }
%"class.xalanc_1_10::XStringAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.0" }
%"class.xalanc_1_10::ReusableArenaAllocator.0" = type <{ %"class.xalanc_1_10::ArenaAllocator.1", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.1" = type { ptr, i16, %"class.xalanc_1_10::XalanList.2" }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringCachedAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.4" }
%"class.xalanc_1_10::ReusableArenaAllocator.4" = type <{ %"class.xalanc_1_10::ArenaAllocator.5", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.5" = type { ptr, i16, %"class.xalanc_1_10::XalanList.6" }
%"class.xalanc_1_10::XalanList.6" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringReferenceAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.8" }
%"class.xalanc_1_10::ReusableArenaAllocator.8" = type <{ %"class.xalanc_1_10::ArenaAllocator.9", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.9" = type { ptr, i16, %"class.xalanc_1_10::XalanList.10" }
%"class.xalanc_1_10::XalanList.10" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNumberAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.12" }
%"class.xalanc_1_10::ReusableArenaAllocator.12" = type <{ %"class.xalanc_1_10::ArenaAllocator.13", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.13" = type { ptr, i16, %"class.xalanc_1_10::XalanList.14" }
%"class.xalanc_1_10::XalanList.14" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNodeSetAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.16" }
%"class.xalanc_1_10::ReusableArenaAllocator.16" = type <{ %"class.xalanc_1_10::ArenaAllocator.17", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.17" = type { ptr, i16, %"class.xalanc_1_10::XalanList.18" }
%"class.xalanc_1_10::XalanList.18" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNodeSetNodeProxyAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.20" }
%"class.xalanc_1_10::ReusableArenaAllocator.20" = type <{ %"class.xalanc_1_10::ArenaAllocator.21", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.21" = type { ptr, i16, %"class.xalanc_1_10::XalanList.22" }
%"class.xalanc_1_10::XalanList.22" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XTokenNumberAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.24" }
%"class.xalanc_1_10::ReusableArenaAllocator.24" = type <{ %"class.xalanc_1_10::ArenaAllocator.25", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.25" = type { ptr, i16, %"class.xalanc_1_10::XalanList.26" }
%"class.xalanc_1_10::XalanList.26" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XTokenStringAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.28" }
%"class.xalanc_1_10::ReusableArenaAllocator.28" = type <{ %"class.xalanc_1_10::ArenaAllocator.29", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.29" = type { ptr, i16, %"class.xalanc_1_10::XalanList.30" }
%"class.xalanc_1_10::XalanList.30" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.32" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.33" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.34" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XNull" = type { %"class.xalanc_1_10::XObject" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XBoolean" = type <{ %"class.xalanc_1_10::XObject", i8, [7 x i8] }>
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XObjectFactoryDefault, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XObjectFactoryDefault, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }
%"class.xalanc_1_10::XString" = type { %"class.xalanc_1_10::XStringBase", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XStringBase" = type { %"class.xalanc_1_10::XObject", double, %"class.xalanc_1_10::XObjectResultTreeFragProxy" }
%"class.xalanc_1_10::XObjectResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", %"class.xalanc_1_10::XObjectResultTreeFragProxyText" }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyText" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.35", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.35" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XObjectFactoryDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZNK11xalanc_1_1014XObjectFactory11getRealTypeERKNS_7XObjectE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZSt4findIPPN11xalanc_1_107XObjectES2_ET_S4_S4_RKT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_ = comdat any

$_ZNK11xalanc_1_1014XObjectFactory12deleteObjectEPKNS_7XObjectE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_107XStringEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_107XStringES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_107XStringEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_107XStringEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_107XStringEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_107XStringEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XStringEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_107XStringEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XStringEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XNumberEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_107XNumberEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_107XNumberES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_107XNumberEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_107XNumberEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_107XNumberEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_107XNumberEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XNumberEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_107XNumberEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XNumberEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8XNodeSetEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_108XNodeSetEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_108XNodeSetES3_ET0_T_S5_S4_ = comdat any

$_ZSt8distanceIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_108XNodeSetEET_S5_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_108XNodeSetEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_108XNodeSetEET_S5_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_108XNodeSetEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_108XNodeSetEEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_108XNodeSetEET_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_108XNodeSetEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_107XObjectEEENS0_16_Iter_equals_valIT_EERS7_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEC2ERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_ = comdat any

$_ZSt4copyIPPN11xalanc_1_107XObjectES3_ET0_T_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZSt13__copy_move_aILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_107XObjectEET_S4_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_107XObjectEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XObjectEEEPT_PKS6_S9_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZSt8distanceIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE = comdat any

$_ZN11xalanc_1_1021XObjectFactoryDefault16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XObjectEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv = comdat any

$_ZSt4copyIPKPN11xalanc_1_107XObjectEPS2_ET0_T_S7_S6_ = comdat any

$_ZSt13copy_backwardIPPN11xalanc_1_107XObjectES3_ET0_T_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPKPN11xalanc_1_107XObjectEET_S5_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseIPKPN11xalanc_1_107XObjectEET_S5_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XObjectEEEPT_PKS6_S9_S7_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_107XString3setERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignERKS0_ = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt8for_eachIPPN11xalanc_1_107XObjectENS0_14XObjectFactory20DeleteXObjectFunctorEET0_T_S7_S6_ = comdat any

$_ZN11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorC2ERS0_b = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv = comdat any

$_ZNK11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorclEPNS_7XObjectE = comdat any

$_ZN11xalanc_1_1014XObjectFactory12returnObjectEPNS_7XObjectE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm = comdat any

@_ZTVN11xalanc_1_1021XObjectFactoryDefaultE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XObjectFactoryDefaultE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD0Ev, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createBooleanEb, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault10createNullEv, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringEPKt, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringEPKtj, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault19createStringAdapterERKNS_10XObjectPtrE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createUnknownERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XObjectFactoryDefaultE = dso_local constant [39 x i8] c"N11xalanc_1_1021XObjectFactoryDefaultE\00", align 1
@_ZTIN11xalanc_1_1014XObjectFactoryE = external constant ptr
@_ZTIN11xalanc_1_1021XObjectFactoryDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XObjectFactoryDefaultE, ptr @_ZTIN11xalanc_1_1014XObjectFactoryE }, align 8

@_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt = dso_local unnamed_addr alias void (ptr, ptr, i16, i16, i16, i16), ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt
@_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(664) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #1 align 2 !prof !303 {
  %2 = alloca %"struct.xalanc_1_10::XObjectFactory::DeleteXObjectFunctor", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1016XStringAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1025XStringReferenceAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1016XNumberAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  %8 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1017XNodeSetAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #13
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %10) #13
  %11 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1028XTokenStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %11) #13
  %12 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10
  %13 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #13
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #13
  call void @_ZN11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorC2ERS0_b(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext true) #13
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds { ptr, i8 }, ptr %2, i64 0, i32 1
  %17 = load i8, ptr %16, align 8
  %18 = call { ptr, i8 } @_ZSt8for_eachIPPN11xalanc_1_107XObjectENS0_14XObjectFactory20DeleteXObjectFunctorEET0_T_S7_S6_(ptr noundef %13, ptr noundef %14, ptr %15, i8 %17) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #13
  %19 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %19) #13
  %20 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %20) #13
  %21 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault13createBooleanEb(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !304 {
  br i1 %2, label %4, label %6, !prof !305

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 16
  br label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 15
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ %5, %4 ]
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %9) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 align 2 !prof !306 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 12
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  br i1 %5, label %9, label %6, !prof !307

6:                                                ; preds = %3
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !308
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  tail call void @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  br label %12

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 40) #13
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1017XNodeSetAllocator13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %1) #13
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ %8, %6 ]
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %13) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetEPNS_9XalanNodeE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !312 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 7
  %5 = tail call noundef ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator6createEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %1) #13
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault10createNullEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1) unnamed_addr #1 align 2 !prof !312 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 14
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, double noundef %2) unnamed_addr #1 align 2 !prof !313 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 11
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  br i1 %5, label %9, label %6, !prof !314

6:                                                ; preds = %3
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !308
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  tail call void @_ZN11xalanc_1_107XNumber3setEd(ptr noundef nonnull align 8 dereferenceable(72) %8, double noundef %2) #13
  br label %12

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 40) #13
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 5
  %11 = tail call noundef ptr @_ZN11xalanc_1_1016XNumberAllocator12createNumberEd(ptr noundef nonnull align 8 dereferenceable(48) %10, double noundef %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %1) #13
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ %8, %6 ]
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %13) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 1 %2) unnamed_addr #1 align 2 !prof !315 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 8
  %5 = tail call noundef ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 1 %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %1) #13
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_14XalanDOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !312 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 13
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %8 = load ptr, ptr %7, align 8, !tbaa !308
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  tail call void @_ZN11xalanc_1_107XString3setERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(36) %2) #13
  br label %12

9:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 40) #13
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 2
  %11 = tail call noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(36) %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %1) #13
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %11, %9 ], [ %8, %6 ]
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %13) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringEPKt(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !312 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %1) #13
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringEPKtj(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 align 2 !prof !312 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 2
  %6 = tail call noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %2, i32 noundef %3) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %1) #13
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 1 %2) unnamed_addr #1 align 2 !prof !316 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 9
  %5 = tail call noundef ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 1 %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %1) #13
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !317 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 4
  %5 = tail call noundef ptr @_ZN11xalanc_1_1025XStringReferenceAllocator12createStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(36) %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %1) #13
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault19createStringAdapterERKNS_10XObjectPtrE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !312 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1023XStringAdapterAllocator12createStringERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %1) #13
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 align 2 !prof !318 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 3
  %5 = tail call noundef ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  tail call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %1) #13
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault13createUnknownERKNS_14XalanDOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !312 {
  %4 = alloca ptr, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1021XObjectFactoryDefault16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(664) %1) #13
  %6 = tail call noundef ptr @_ZN11xalanc_1_108XUnknown6createERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr %6, ptr %4, align 8, !tbaa !308
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %1) #13
  call void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %6) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !319 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !308
  %8 = tail call noundef i32 @_ZNK11xalanc_1_1014XObjectFactory11getRealTypeERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  switch i32 %8, label %57 [
    i32 2, label %9
    i32 0, label %9
    i32 9, label %9
    i32 11, label %12
    i32 12, label %15
    i32 4, label %18
    i32 10, label %28
    i32 8, label %31
    i32 3, label %34
    i32 5, label %44
    i32 13, label %54
  ], !prof !320

9:                                                ; preds = %3, %3, %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 1
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1023XStringAdapterAllocator7destroyEPNS_14XStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull %1) #13
  br label %69

12:                                               ; preds = %3
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 8
  %14 = tail call noundef zeroext i1 @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator7destroyEPNS_19XTokenNumberAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull %1) #13
  br label %69

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 9
  %17 = tail call noundef zeroext i1 @_ZN11xalanc_1_1028XTokenStringAdapterAllocator7destroyEPNS_19XTokenStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull %1) #13
  br label %69

18:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr %1, ptr %5, align 8, !tbaa !308
  %19 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13
  %20 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %19) #13
  %21 = icmp ult i64 %20, 40
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  br label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 2
  %25 = tail call noundef zeroext i1 @_ZN11xalanc_1_1016XStringAllocator7destroyEPNS_7XStringE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull %1) #13
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i1 [ true, %22 ], [ %25, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %69

28:                                               ; preds = %3
  %29 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 3
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull %1) #13
  br label %69

31:                                               ; preds = %3
  %32 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 4
  %33 = tail call noundef zeroext i1 @_ZN11xalanc_1_1025XStringReferenceAllocator7destroyEPNS_16XStringReferenceE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull %1) #13
  br label %69

34:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr %1, ptr %6, align 8, !tbaa !308
  %35 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11
  %36 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #13
  %37 = icmp ult i64 %36, 40
  br i1 %37, label %38, label %39, !prof !321

38:                                               ; preds = %34
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %42

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 5
  %41 = tail call noundef zeroext i1 @_ZN11xalanc_1_1016XNumberAllocator7destroyEPNS_7XNumberE(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull %1) #13
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi i1 [ true, %38 ], [ %41, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %69

44:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store ptr %1, ptr %7, align 8, !tbaa !308
  %45 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12
  %46 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %45) #13
  %47 = icmp ult i64 %46, 40
  br i1 %47, label %48, label %49, !prof !322

48:                                               ; preds = %44
  tail call void @_ZN11xalanc_1_108XNodeSet7releaseEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  br label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 6
  %51 = tail call noundef zeroext i1 @_ZN11xalanc_1_1017XNodeSetAllocator7destroyEPNS_8XNodeSetE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull %1) #13
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i1 [ true, %48 ], [ %51, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %69

54:                                               ; preds = %3
  %55 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 7
  %56 = tail call noundef zeroext i1 @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator7destroyEPNS_17XNodeSetNodeProxyE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull %1) #13
  br label %69

57:                                               ; preds = %3
  %58 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10
  %59 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %58) #13
  %60 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %58) #13
  %61 = call noundef ptr @_ZSt4findIPPN11xalanc_1_107XObjectES2_ET_S4_S4_RKT0_(ptr noundef %59, ptr noundef %60, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %62 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %58) #13
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %57
  br i1 %2, label %67, label %65

65:                                               ; preds = %64
  %66 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef %61) #13
  br label %67

67:                                               ; preds = %65, %64
  %68 = load ptr, ptr %4, align 8, !tbaa !308
  call void @_ZNK11xalanc_1_1014XObjectFactory12deleteObjectEPKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %68) #13
  br label %69

69:                                               ; preds = %57, %67, %54, %52, %42, %31, %28, %26, %15, %12, %9
  %70 = phi i1 [ %56, %54 ], [ %53, %52 ], [ %43, %42 ], [ %33, %31 ], [ %30, %28 ], [ %27, %26 ], [ %17, %15 ], [ %14, %12 ], [ %11, %9 ], [ true, %67 ], [ false, %57 ]
  ret i1 %70
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  tail call void @_ZN11xalanc_1_1014XObjectFactoryC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xalanc_1_1021XObjectFactoryDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !324
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1023XStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #13
          to label %8 unwind label %39

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1016XStringAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #13
          to label %10 unwind label %41

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1022XStringCachedAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #13
          to label %12 unwind label %43

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1025XStringReferenceAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #13
          to label %14 unwind label %45

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1016XNumberAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %3) #13
          to label %16 unwind label %47

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1017XNodeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %4) #13
          to label %18 unwind label %49

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 7
  invoke void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %5) #13
          to label %20 unwind label %51

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %3) #13
          to label %22 unwind label %53

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2) #13
          to label %24 unwind label %55

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
          to label %26 unwind label %57

26:                                               ; preds = %24
  %27 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
          to label %28 unwind label %59

28:                                               ; preds = %26
  %29 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
          to label %30 unwind label %61

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #13
          to label %32 unwind label %63

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 14
  invoke void @_ZN11xalanc_1_105XNullC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %33) #13
          to label %34 unwind label %65

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 15
  invoke void @_ZN11xalanc_1_108XBooleanC1Eb(ptr noundef nonnull align 8 dereferenceable(25) %35, i1 noundef zeroext false) #13
          to label %36 unwind label %67

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 16
  invoke void @_ZN11xalanc_1_108XBooleanC1Eb(ptr noundef nonnull align 8 dereferenceable(25) %37, i1 noundef zeroext true) #13
          to label %38 unwind label %69

38:                                               ; preds = %36
  ret void

39:                                               ; preds = %6
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %99

41:                                               ; preds = %8
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %97

43:                                               ; preds = %10
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %95

45:                                               ; preds = %12
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %93

47:                                               ; preds = %14
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %91

49:                                               ; preds = %16
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %89

51:                                               ; preds = %18
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %87

53:                                               ; preds = %20
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %85

55:                                               ; preds = %22
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %83

57:                                               ; preds = %24
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %81

59:                                               ; preds = %26
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %79

61:                                               ; preds = %28
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %77

63:                                               ; preds = %30
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %75

65:                                               ; preds = %32
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %73

67:                                               ; preds = %34
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %71

69:                                               ; preds = %36
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_108XBooleanD1Ev(ptr noundef nonnull align 8 dereferenceable(25) %35) #11
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi { ptr, i32 } [ %70, %69 ], [ %68, %67 ]
  tail call void @_ZN11xalanc_1_105XNullD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %33) #11
  br label %73

73:                                               ; preds = %71, %65
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %66, %65 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #11
  br label %75

75:                                               ; preds = %73, %63
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %64, %63 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #11
  br label %77

77:                                               ; preds = %75, %61
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %62, %61 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #11
  br label %79

79:                                               ; preds = %77, %59
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %60, %59 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #11
  br label %81

81:                                               ; preds = %79, %57
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %58, %57 ]
  tail call void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %23) #11
  br label %83

83:                                               ; preds = %81, %55
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %56, %55 ]
  tail call void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %21) #11
  br label %85

85:                                               ; preds = %83, %53
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %54, %53 ]
  tail call void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %19) #11
  br label %87

87:                                               ; preds = %85, %51
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1017XNodeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %17) #11
  br label %89

89:                                               ; preds = %87, %49
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %50, %49 ]
  tail call void @_ZN11xalanc_1_1016XNumberAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #11
  br label %91

91:                                               ; preds = %89, %47
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1025XStringReferenceAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #11
  br label %93

93:                                               ; preds = %91, %45
  %94 = phi { ptr, i32 } [ %92, %91 ], [ %46, %45 ]
  tail call void @_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #11
  br label %95

95:                                               ; preds = %93, %43
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %44, %43 ]
  tail call void @_ZN11xalanc_1_1016XStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #11
  br label %97

97:                                               ; preds = %95, %41
  %98 = phi { ptr, i32 } [ %96, %95 ], [ %42, %41 ]
  tail call void @_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #11
  br label %99

99:                                               ; preds = %97, %39
  %100 = phi { ptr, i32 } [ %98, %97 ], [ %40, %39 ]
  tail call void @_ZN11xalanc_1_1014XObjectFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  resume { ptr, i32 } %100
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XObjectFactoryC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XStringAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XStringCachedAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XStringReferenceAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XNumberAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XNodeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !323 {
  store ptr %1, ptr %0, align 8, !tbaa !326
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !329
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !330
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !331

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !332
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !323 {
  store ptr %1, ptr %0, align 8, !tbaa !333
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !335
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !336
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !331

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !337
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !323 {
  store ptr %1, ptr %0, align 8, !tbaa !338
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !340
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !341
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !331

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !342
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !323 {
  store ptr %1, ptr %0, align 8, !tbaa !343
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !345
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !346
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !331

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !347
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_105XNullC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108XBooleanC1Eb(ptr noundef nonnull align 8 dereferenceable(25), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108XBooleanD1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_105XNullD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !346
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !331

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !347
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !348 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !341
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !349

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !342
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !348 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !336
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !349

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !337
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !330
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !331

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #13
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !332
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XNodeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016XNumberAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XStringReferenceAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016XStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014XObjectFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !326
  %5 = load ptr, ptr %4, align 8, !tbaa !324
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !350 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !323 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !333
  %5 = load ptr, ptr %4, align 8, !tbaa !324
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !351 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !323 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !338
  %5 = load ptr, ptr %4, align 8, !tbaa !324
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !352 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !343
  %5 = load ptr, ptr %4, align 8, !tbaa !324
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !353 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !354

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !347
  ret ptr %3
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = load ptr, ptr %0, align 8, !tbaa !343
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !347
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !345
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !323 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !356

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !357, !llvm.loop !358

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !323 {
  %3 = load ptr, ptr %0, align 8, !tbaa !338
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !306 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !359 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !340
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !323 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !356

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !357, !llvm.loop !360

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !323 {
  %3 = load ptr, ptr %0, align 8, !tbaa !333
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !313 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !361 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !335
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !362

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !303 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !303 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = load ptr, ptr %0, align 8, !tbaa !326
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !303 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !329
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XObjectFactoryDefault6createERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %6 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !324
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 664) #13
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %10) #13
  %11 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  invoke void @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664) %11, ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #13
          to label %12 unwind label %15

12:                                               ; preds = %5
  %13 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
          to label %14 unwind label %15

14:                                               ; preds = %12
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  ret ptr %11

15:                                               ; preds = %12, %5
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !363
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #13
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !312 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !308
  store ptr %2, ptr %5, align 8, !tbaa !308
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XObjectFactoryDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XObjectFactoryDefaultEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = load ptr, ptr %1, align 8, !tbaa !308
  store ptr %4, ptr %0, align 8, !tbaa !365
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !308
  store ptr %6, ptr %5, align 8, !tbaa !363
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !365
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !363
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !365
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !363
  %7 = load ptr, ptr %4, align 8, !tbaa !324
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #13
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_21XObjectFactoryDefaultELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = load ptr, ptr %0, align 8, !tbaa !365
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xalanc_1_1021XObjectFactoryDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !324
  invoke void @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(664) %0) #13
          to label %2 unwind label %19

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 16
  tail call void @_ZN11xalanc_1_108XBooleanD1Ev(ptr noundef nonnull align 8 dereferenceable(25) %3) #11
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_108XBooleanD1Ev(ptr noundef nonnull align 8 dereferenceable(25) %4) #11
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 14
  tail call void @_ZN11xalanc_1_105XNullD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #11
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #11
  %8 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #11
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #11
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #11
  %11 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #11
  %12 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #11
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1017XNodeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1016XNumberAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %14) #11
  %15 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1025XStringReferenceAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #11
  %16 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #11
  %17 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1016XStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %17) #11
  %18 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %18) #11
  tail call void @_ZN11xalanc_1_1014XObjectFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #15
  unreachable
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XObjectFactory11getRealTypeERKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 !prof !319 {
  %3 = load ptr, ptr %1, align 8, !tbaa !324
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(24) %1) #13
  ret i32 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1023XStringAdapterAllocator7destroyEPNS_14XStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator7destroyEPNS_19XTokenNumberAdapterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1028XTokenStringAdapterAllocator7destroyEPNS_19XTokenStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !345
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1016XStringAllocator7destroyEPNS_7XStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1025XStringReferenceAllocator7destroyEPNS_16XStringReferenceE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !335
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1016XNumberAllocator7destroyEPNS_7XNumberE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !306 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !340
  ret i64 %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108XNodeSet7releaseEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !306 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1017XNodeSetAllocator7destroyEPNS_8XNodeSetE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator7destroyEPNS_17XNodeSetNodeProxyE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4findIPPN11xalanc_1_107XObjectES2_ET_S4_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_107XObjectEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XObjectFactory12deleteObjectEPKNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactory", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !366
  %7 = load ptr, ptr %1, align 8, !tbaa !324
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !324
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1) #13
  br label %12

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.34", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !345
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !346
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !343
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !345
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !345
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !343
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = load ptr, ptr %1, align 8, !tbaa !308
  store ptr %4, ptr %0, align 8, !tbaa !308
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.34", align 8
  store ptr %2, ptr %0, align 8, !tbaa !343
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !345
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !347
  store i64 %3, ptr %7, align 8, !tbaa !346
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !343
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !347
  %7 = load ptr, ptr %1, align 8, !tbaa !343
  store ptr %7, ptr %0, align 8, !tbaa !343
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !368
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !347
  store ptr %11, ptr %5, align 8, !tbaa !347
  store ptr %3, ptr %1, align 8, !tbaa !343
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !368
  store <2 x i64> %9, ptr %4, align 8, !tbaa !368
  store <2 x i64> %12, ptr %8, align 8, !tbaa !368
  store ptr %6, ptr %10, align 8, !tbaa !347
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.34", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !343
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XStringEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !345
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !345
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !369

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %32 = load ptr, ptr %0, align 8, !tbaa !343
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #13
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #13
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds ptr, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !370

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #13
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !371

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XStringEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #13
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #13
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !372

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_107XStringES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #13
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XStringEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !347
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !346
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XStringEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XStringEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XStringEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_107XStringES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XStringEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XStringEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !312 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !308
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !312 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_107XStringEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.34", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !343
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XStringEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XStringEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XStringEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XStringEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XStringEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XStringEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XStringEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XStringEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XStringEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XStringEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XStringEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XStringEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XStringEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XStringEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XStringES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XStringEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !347
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !345
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !313 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.32", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !335
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !336
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !321

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !333
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XNumberEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !335
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !335
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !333
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XNumberEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %4 = load ptr, ptr %1, align 8, !tbaa !308
  store ptr %4, ptr %0, align 8, !tbaa !308
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.32", align 8
  store ptr %2, ptr %0, align 8, !tbaa !333
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !335
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !331

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !373

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !337
  store i64 %3, ptr %7, align 8, !tbaa !336
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !333
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !337
  %7 = load ptr, ptr %1, align 8, !tbaa !333
  store ptr %7, ptr %0, align 8, !tbaa !333
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !368
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !337
  store ptr %11, ptr %5, align 8, !tbaa !337
  store ptr %3, ptr %1, align 8, !tbaa !333
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !368
  store <2 x i64> %9, ptr %4, align 8, !tbaa !368
  store <2 x i64> %12, ptr %8, align 8, !tbaa !368
  store ptr %6, ptr %10, align 8, !tbaa !337
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.32", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !333
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XNumberEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !335
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !335
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !374

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %32 = load ptr, ptr %0, align 8, !tbaa !333
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #13
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #13
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds ptr, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !375

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #13
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !376

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XNumberEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #13
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #13
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !377

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_107XNumberES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #13
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XNumberEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !336
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XNumberEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XNumberEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XNumberEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_107XNumberES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XNumberEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XNumberEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !312 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !308
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !312 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_107XNumberEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.32", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !333
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XNumberEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XNumberEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XNumberEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XNumberEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XNumberEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XNumberEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XNumberEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XNumberEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XNumberEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XNumberEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XNumberEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XNumberEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XNumberEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XNumberEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XNumberEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XNumberEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XNumberES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XNumberEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XNumberEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !335
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !306 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.33", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !340
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !341
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !322

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !338
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8XNodeSetEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !340
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !340
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !338
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8XNodeSetEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !306 {
  %4 = load ptr, ptr %1, align 8, !tbaa !308
  store ptr %4, ptr %0, align 8, !tbaa !308
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.33", align 8
  store ptr %2, ptr %0, align 8, !tbaa !338
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !340
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !331

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !373

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !342
  store i64 %3, ptr %7, align 8, !tbaa !341
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !338
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !342
  %7 = load ptr, ptr %1, align 8, !tbaa !338
  store ptr %7, ptr %0, align 8, !tbaa !338
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !368
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !342
  store ptr %11, ptr %5, align 8, !tbaa !342
  store ptr %3, ptr %1, align 8, !tbaa !338
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !368
  store <2 x i64> %9, ptr %4, align 8, !tbaa !368
  store <2 x i64> %12, ptr %8, align 8, !tbaa !368
  store ptr %6, ptr %10, align 8, !tbaa !342
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.33", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !338
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8XNodeSetEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !340
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !340
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !378

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %32 = load ptr, ptr %0, align 8, !tbaa !338
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #13
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #13
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds ptr, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !379

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #13
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !380

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_108XNodeSetEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #13
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #13
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !381

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_108XNodeSetES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #13
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_108XNodeSetEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !341
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_108XNodeSetEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_108XNodeSetEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_108XNodeSetEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_108XNodeSetES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_108XNodeSetEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_108XNodeSetEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !312 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !308
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !312 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_108XNodeSetEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.33", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !338
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_108XNodeSetEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_108XNodeSetEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108XNodeSetEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_108XNodeSetEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_108XNodeSetEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_108XNodeSetEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_108XNodeSetEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108XNodeSetEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_108XNodeSetEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_108XNodeSetEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_108XNodeSetEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108XNodeSetEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108XNodeSetEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_108XNodeSetEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_108XNodeSetEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_108XNodeSetEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_108XNodeSetES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_108XNodeSetEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_108XNodeSetEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !340
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !308
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_107XObjectEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !312 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #13
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #13
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #13
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #13
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !382

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
  ]

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #13
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #13
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #13
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %3 = load ptr, ptr %1, align 8, !tbaa !308
  %4 = load ptr, ptr %0, align 8, !tbaa !383
  %5 = load ptr, ptr %4, align 8, !tbaa !308
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !312 {
  store ptr %1, ptr %0, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = tail call noundef ptr @_ZSt4copyIPPN11xalanc_1_107XObjectES3_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #13
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #13
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPN11xalanc_1_107XObjectES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !llvm.loop !385

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XObjectEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XObjectEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !329
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !329
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !332
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !312 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !308
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !312 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_107XObjectEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !312 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !386 {
  store ptr %1, ptr %0, align 8, !tbaa !387
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %1) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_108XUnknown6createERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1021XObjectFactoryDefault16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(664) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !389 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = load ptr, ptr %0, align 8, !tbaa !326
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !329
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !330
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !326
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XObjectEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !329
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !329
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !326
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XObjectEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = load ptr, ptr %1, align 8, !tbaa !308
  store ptr %4, ptr %0, align 8, !tbaa !308
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !326
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !329
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !332
  store i64 %3, ptr %7, align 8, !tbaa !330
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !326
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !332
  %7 = load ptr, ptr %1, align 8, !tbaa !326
  store ptr %7, ptr %0, align 8, !tbaa !326
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !368
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !332
  store ptr %11, ptr %5, align 8, !tbaa !332
  store ptr %3, ptr %1, align 8, !tbaa !326
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !368
  store <2 x i64> %9, ptr %4, align 8, !tbaa !368
  store <2 x i64> %12, ptr %8, align 8, !tbaa !368
  store ptr %6, ptr %10, align 8, !tbaa !332
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !326
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XObjectEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !329
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !329
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !395

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %32 = load ptr, ptr %0, align 8, !tbaa !326
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #13
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #13
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #13
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #13
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds ptr, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !396

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #13
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !397

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XObjectEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #13
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #13
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !398

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_107XObjectES3_ET0_T_S5_S4_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #13
  %78 = tail call noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XObjectEPS2_ET0_T_S7_S6_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !329
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !330
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPN11xalanc_1_107XObjectEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XObjectEET_S5_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XObjectEET_S5_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPN11xalanc_1_107XObjectES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !312 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !326
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XObjectEET_S5_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XObjectEET_S5_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XObjectEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPN11xalanc_1_107XObjectEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPN11xalanc_1_107XObjectEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !312 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPN11xalanc_1_107XObjectEPS2_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_107XObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_107XObjectEET_S4_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_107XObjectEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPN11xalanc_1_107XObjectES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_107XObjectEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
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
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !332
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !329
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !335
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !399 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !337
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !335
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !313 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !335
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !335
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !337
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_107XNumber3setEd(ptr noundef nonnull align 8 dereferenceable(72), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !323 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !336
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !331

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1016XNumberAllocator12createNumberEd(ptr noundef nonnull align 8 dereferenceable(48), double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !306 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !340
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !400 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !342
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !340
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !306 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !340
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !340
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !342
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !348 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !341
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !349

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1017XNodeSetAllocator13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator6createEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !345
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !347
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !345
  %6 = getelementptr ptr, ptr %3, i64 %5
  %7 = getelementptr ptr, ptr %6, i64 -1
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !345
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !345
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !347
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_107XString3setERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XString", ptr %0, i64 0, i32 1
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !346
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !401 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #1 comdat align 2 !prof !401 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %9, label %4, !prof !402

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !403
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !403
  br label %9

9:                                                ; preds = %4, %2
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !406 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !401 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %33, label %5, !prof !402

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !407
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !408
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13, !prof !409

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !410
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %33

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !408
  %17 = load i64, ptr %8, align 8, !tbaa !408
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20, !prof !411

19:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17) #13
  br label %28

20:                                               ; preds = %13
  %21 = icmp ult i64 %16, %17
  br i1 %21, label %22, label %28, !prof !412

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %24 = load i64, ptr %15, align 8, !tbaa !408
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %25, ptr noundef %27) #13
  br label %28

28:                                               ; preds = %20, %22, %19
  %29 = phi ptr [ %14, %19 ], [ %25, %22 ], [ %14, %20 ]
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %32 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %30, ptr noundef %29, ptr noundef %31) #13
  br label %33

33:                                               ; preds = %11, %28, %2
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !413 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !414 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  store ptr %2, ptr %0, align 8, !tbaa !410
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !408
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !415

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #13
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #13
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #13
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !416

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #13
  store ptr %24, ptr %8, align 8, !tbaa !417
  store i64 %3, ptr %7, align 8, !tbaa !407
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !418 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !410
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = load ptr, ptr %1, align 8, !tbaa !410
  store ptr %7, ptr %0, align 8, !tbaa !410
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !368
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !417
  store ptr %11, ptr %5, align 8, !tbaa !417
  store ptr %3, ptr %1, align 8, !tbaa !410
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !368
  store <2 x i64> %9, ptr %4, align 8, !tbaa !368
  store <2 x i64> %12, ptr %8, align 8, !tbaa !368
  store ptr %6, ptr %10, align 8, !tbaa !417
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !419 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !407
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5, !prof !420

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #13
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !417
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %8, %1
  ret void

12:                                               ; preds = %8, %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !421 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !422 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !408
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !423, !llvm.loop !424

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !421 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !417
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #13
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %76, label %8, !prof !426

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !427

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #13
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %75, label %16, !prof !428

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !410
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !408
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !408
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %75, label %18, !prof !429, !llvm.loop !430

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %43, !prof !431

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %32 = load ptr, ptr %0, align 8, !tbaa !410
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #13
  %33 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %34 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %34, ptr noundef %1) #13
          to label %35 unwind label %41

35:                                               ; preds = %31
  %36 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %36, ptr noundef %2, ptr noundef %3) #13
          to label %37 unwind label %41

37:                                               ; preds = %35
  %38 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  %39 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %39) #13
          to label %40 unwind label %41

40:                                               ; preds = %37
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  br label %75

41:                                               ; preds = %37, %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  resume { ptr, i32 } %42

43:                                               ; preds = %28
  %44 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %45 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %44) #13
  %46 = icmp ugt i64 %45, %6
  br i1 %46, label %62, label %47, !prof !432

47:                                               ; preds = %43
  %48 = getelementptr inbounds i16, ptr %2, i64 %45
  %49 = icmp eq ptr %48, %3
  br i1 %49, label %50, label %52, !prof !433

50:                                               ; preds = %52, %47
  %51 = icmp eq ptr %44, %1
  br i1 %51, label %60, label %56, !prof !433

52:                                               ; preds = %47, %52
  %53 = phi ptr [ %54, %52 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %53) #13
  %54 = getelementptr inbounds i16, ptr %53, i64 1
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %50, label %52, !prof !434, !llvm.loop !435

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %58, %56 ], [ %1, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #13
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %44
  br i1 %59, label %60, label %56, !prof !436, !llvm.loop !437

60:                                               ; preds = %56, %50
  %61 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %48, ptr noundef %1) #13
  br label %75

62:                                               ; preds = %43
  %63 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %64 = sub i64 0, %6
  %65 = getelementptr inbounds i16, ptr %63, i64 %64
  %66 = icmp eq ptr %65, %44
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %67
  %68 = phi ptr [ %69, %67 ], [ %65, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %68) #13
  %69 = getelementptr inbounds i16, ptr %68, i64 1
  %70 = icmp eq ptr %69, %44
  br i1 %70, label %71, label %67, !llvm.loop !438

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds i16, ptr %44, i64 %64
  %73 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %72, ptr noundef %44) #13
  %74 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #13
  br label %75

75:                                               ; preds = %18, %13, %60, %71, %40
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  br label %76

76:                                               ; preds = %4, %75
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !439 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !440 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !441 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !417
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !350 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !442 {
  store ptr %1, ptr %0, align 8, !tbaa !410
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !408
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !407
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !443

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #13
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !417
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !444 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !410
  %5 = load ptr, ptr %4, align 8, !tbaa !324
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #13
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !444 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !445

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #13
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !446, !llvm.loop !447

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !444 {
  %3 = load ptr, ptr %0, align 8, !tbaa !410
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !448 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !421 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !417
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !408
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !449 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !408
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !408
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #13
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !450 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !451 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !408
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !452 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !453

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !448 {
  %4 = load i16, ptr %1, align 2, !tbaa !454
  store i16 %4, ptr %0, align 2, !tbaa !454
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !456 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !407
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !457 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !408
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !407
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !458

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !410
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  %13 = load i64, ptr %4, align 8, !tbaa !408
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !408
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %21 = load ptr, ptr %0, align 8, !tbaa !410
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #13
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #13
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #13
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #13
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !450 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !308
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #13
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !450 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !450 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !459 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load ptr, ptr %0, align 8, !tbaa !410
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !460 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !417
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !408
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !461 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !462 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !463 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !312 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 1
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds i16, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %11, ptr align 2 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds i16, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !440 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !308
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !464 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !440 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !464 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat !prof !440 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !462 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !465

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringEPKtj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1025XStringReferenceAllocator12createStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1023XStringAdapterAllocator12createStringERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1023XStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XStringAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XStringReferenceAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XNumberAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XNodeSetAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XTokenStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZSt8for_eachIPPN11xalanc_1_107XObjectENS0_14XObjectFactory20DeleteXObjectFunctorEET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2, i8 %3) local_unnamed_addr #1 comdat !prof !303 {
  %5 = alloca %"struct.xalanc_1_10::XObjectFactory::DeleteXObjectFunctor", align 8
  store ptr %2, ptr %5, align 8
  %6 = getelementptr inbounds { ptr, i8 }, ptr %5, i64 0, i32 1
  store i8 %3, ptr %6, align 8
  %7 = icmp eq ptr %0, %1
  br i1 %7, label %16, label %8, !prof !466

8:                                                ; preds = %4, %8
  %9 = phi ptr [ %11, %8 ], [ %0, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !308
  call void @_ZNK11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorclEPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef %10) #13
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %8, !prof !357, !llvm.loop !467

13:                                               ; preds = %8
  %14 = load ptr, ptr %5, align 8
  %15 = load i8, ptr %6, align 8
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i8 [ %15, %13 ], [ %3, %4 ]
  %18 = phi ptr [ %14, %13 ], [ %2, %4 ]
  %19 = insertvalue { ptr, i8 } poison, ptr %18, 0
  %20 = insertvalue { ptr, i8 } %19, i8 %17, 1
  ret { ptr, i8 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorC2ERS0_b(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #0 comdat align 2 !prof !303 {
  %4 = zext i1 %2 to i8
  store ptr %1, ptr %0, align 8, !tbaa !308
  %5 = getelementptr inbounds %"struct.xalanc_1_10::XObjectFactory::DeleteXObjectFunctor", ptr %0, i64 0, i32 1
  store i8 %4, ptr %5, align 8, !tbaa !468
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !303 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !329
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !471

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !303 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !335
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !472

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !303 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !340
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !472

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !303 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !345
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !471

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #13
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorclEPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !312 {
  %3 = getelementptr inbounds %"struct.xalanc_1_10::XObjectFactory::DeleteXObjectFunctor", ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !468, !range !473, !noundef !474
  %5 = icmp eq i8 %4, 0
  %6 = load ptr, ptr %0, align 8, !tbaa !475
  br i1 %5, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %6, align 8, !tbaa !324
  %9 = getelementptr inbounds ptr, ptr %8, i64 17
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %1, i1 noundef zeroext true) #13
  br label %14

12:                                               ; preds = %2
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XObjectFactory12returnObjectEPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %1) #13
  br label %14

14:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1014XObjectFactory12returnObjectEPNS_7XObjectE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !319 {
  %3 = load ptr, ptr %0, align 8, !tbaa !324
  %4 = getelementptr inbounds ptr, ptr %3, i64 17
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext false) #13
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !329
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !476

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !323 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !335
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !373, !llvm.loop !477

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !323 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !340
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !349, !llvm.loop !478

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %5 = load i64, ptr %3, align 8, !tbaa !345
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !479

7:                                                ; preds = %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize }
attributes #12 = { builtin nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!302}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!36 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1023XStringAdapterAllocator5resetEv, i64 4}
!37 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1016XStringAllocator5resetEv, i64 4}
!38 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv, i64 4}
!39 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1025XStringReferenceAllocator5resetEv, i64 4}
!40 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1016XNumberAllocator5resetEv, i64 4}
!41 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1017XNodeSetAllocator5resetEv, i64 4}
!42 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator5resetEv, i64 4}
!43 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator5resetEv, i64 4}
!44 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator5resetEv, i64 4}
!45 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 4}
!46 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 4}
!47 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorC2ERS0_b, i64 4}
!48 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZSt8for_eachIPPN11xalanc_1_107XObjectENS0_14XObjectFactory20DeleteXObjectFunctorEET0_T_S7_S6_, i64 4}
!49 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 4}
!50 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 4}
!51 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 4}
!52 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, i64 4}
!53 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createBooleanEb, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 19395}
!54 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 207523}
!55 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv, i64 207520}
!56 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 207520}
!57 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, i64 207520}
!58 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, i64 3}
!59 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1017XNodeSetAllocator13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, i64 3}
!60 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE, i64 3}
!61 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 207523}
!62 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 44684557}
!63 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4backEv, i64 44684555}
!64 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 44684555}
!65 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_107XNumber3setEd, i64 44684555}
!66 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, i64 2}
!67 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1016XNumberAllocator12createNumberEd, i64 2}
!68 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE, i64 2}
!69 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 44684557}
!70 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE, i64 89504425}
!71 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE, ptr @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE, i64 89504425}
!72 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 89504425}
!73 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE, i64 103035}
!74 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE, ptr @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE, i64 103035}
!75 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 103035}
!76 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1025XStringReferenceAllocator12createStringERKNS_14XalanDOMStringE, i64 33406}
!77 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE, i64 33406}
!78 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 33406}
!79 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, i64 67113825}
!80 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_107XObject10setFactoryEPNS_14XObjectFactoryE, i64 67113825}
!81 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, i64 67113825}
!82 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZNK11xalanc_1_1014XObjectFactory11getRealTypeERKNS_7XObjectE, i64 201646771}
!83 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1023XStringAdapterAllocator7destroyEPNS_14XStringAdapterE, i64 3}
!84 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator7destroyEPNS_19XTokenNumberAdapterE, i64 89504421}
!85 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator7destroyEPNS_19XTokenStringAdapterE, i64 103036}
!86 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1016XStringAllocator7destroyEPNS_7XStringE, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE, i64 67113822}
!90 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1025XStringReferenceAllocator7destroyEPNS_16XStringReferenceE, i64 33407}
!91 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 44684555}
!92 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 44684554}
!93 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1016XNumberAllocator7destroyEPNS_7XNumberE, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, i64 207524}
!95 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_108XNodeSet7releaseEv, i64 207523}
!96 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, i64 207523}
!97 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1017XNodeSetAllocator7destroyEPNS_8XNodeSetE, i64 1}
!98 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator7destroyEPNS_17XNodeSetNodeProxyE, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!100 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 2}
!101 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZSt4findIPPN11xalanc_1_107XObjectES2_ET_S4_S4_RKT0_, i64 1}
!102 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZNK11xalanc_1_1014XObjectFactory12deleteObjectEPKNS_7XObjectE, i64 1}
!103 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1014XObjectFactoryC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!104 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1023XStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!105 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1016XStringAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!106 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1022XStringCachedAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!107 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1025XStringReferenceAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!108 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1016XNumberAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!109 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1017XNodeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!110 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!111 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!115 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!116 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!117 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_105XNullC1Ev, i64 1}
!118 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_108XBooleanC1Eb, i64 2}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!123 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!124 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!125 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!126 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 1}
!127 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 1}
!128 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 1}
!129 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!130 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!131 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 1}
!132 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, i64 1}
!133 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_, i64 1}
!134 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 1}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 1}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 1}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 1}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 4}
!146 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, i64 1}
!147 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_108XBooleanD1Ev, i64 2}
!148 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_105XNullD1Ev, i64 1}
!149 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!150 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!151 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!152 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!153 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev, i64 1}
!154 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev, i64 1}
!155 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorD1Ev, i64 1}
!156 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1017XNodeSetAllocatorD1Ev, i64 1}
!157 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1016XNumberAllocatorD1Ev, i64 1}
!158 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1025XStringReferenceAllocatorD1Ev, i64 1}
!159 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev, i64 1}
!160 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1016XStringAllocatorD1Ev, i64 1}
!161 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev, i64 1}
!162 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1014XObjectFactoryD2Ev, i64 1}
!163 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 44684557}
!164 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 89369114}
!165 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 44684557}
!166 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 207523}
!167 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 415046}
!168 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 207523}
!169 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 89369114}
!170 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 44684556}
!171 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_7XNumberEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 44684556}
!172 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!173 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!174 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!175 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!176 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!177 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!178 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!179 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!180 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!181 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!182 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 415046}
!183 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv, i64 207522}
!184 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPNS_8XNodeSetEE9constructEPS2_RKS2_RN11xercesc_2_713MemoryManagerE, i64 207522}
!185 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!186 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!187 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!188 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!191 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!192 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!193 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE4swapERS5_, i64 1}
!194 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!195 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2EPNS_7XObjectE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 292432932}
!196 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 44684557}
!197 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 89369114}
!198 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 44684557}
!199 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!200 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!201 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 207523}
!202 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 415046}
!203 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_, i64 207523}
!204 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 4}
!205 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!206 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, i64 41614}
!207 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 83228}
!208 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 41613}
!209 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 83228}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 13}
!211 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 13}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 13}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 82485}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 355}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 82485}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 40885}
!217 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40885}
!218 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 41600}
!219 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 41600}
!220 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!221 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!222 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!223 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!224 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!225 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!226 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!227 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!228 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!229 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!230 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!231 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!232 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!233 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!234 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300390}
!235 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300308}
!236 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 163}
!237 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!238 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!239 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!240 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!241 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311656032}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731574}
!245 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748786}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246298}
!251 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748726}
!252 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748785}
!253 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614813}
!254 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!255 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!256 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!257 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!258 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!259 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!260 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!261 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!262 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!263 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!264 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195954}
!265 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597977}
!266 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!267 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!268 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!269 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!270 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!271 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!272 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301312}
!273 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150655}
!274 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150655}
!275 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!276 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!277 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!278 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!279 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!280 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!281 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!282 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!283 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!284 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!285 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!286 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!287 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!288 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!289 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!290 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!291 = !{ptr @_ZSt8for_eachIPPN11xalanc_1_107XObjectENS0_14XObjectFactory20DeleteXObjectFunctorEET0_T_S7_S6_, ptr @_ZNK11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorclEPNS_7XObjectE, i64 1}
!292 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 8}
!293 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1}
!294 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 8}
!295 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1}
!296 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 8}
!297 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1}
!298 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 8}
!299 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, i64 1}
!300 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 2}
!301 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv, i64 2}
!302 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!303 = !{!"function_entry_count", i64 4}
!304 = !{!"function_entry_count", i64 19395}
!305 = !{!"branch_weights", i32 1, i32 19396}
!306 = !{!"function_entry_count", i64 207523}
!307 = !{!"branch_weights", i32 3, i32 207522}
!308 = !{!309, !309, i64 0}
!309 = !{!"any pointer", !310, i64 0}
!310 = !{!"omnipotent char", !311, i64 0}
!311 = !{!"Simple C++ TBAA"}
!312 = !{!"function_entry_count", i64 0}
!313 = !{!"function_entry_count", i64 44684557}
!314 = !{!"branch_weights", i32 2, i32 44684557}
!315 = !{!"function_entry_count", i64 89504425}
!316 = !{!"function_entry_count", i64 103035}
!317 = !{!"function_entry_count", i64 33406}
!318 = !{!"function_entry_count", i64 67113825}
!319 = !{!"function_entry_count", i64 201646771}
!320 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 89504426, i32 103036, i32 1, i32 67113826, i32 33407, i32 44684558, i32 207524, i32 1}
!321 = !{!"branch_weights", i32 44684558, i32 1}
!322 = !{!"branch_weights", i32 207524, i32 1}
!323 = !{!"function_entry_count", i64 1}
!324 = !{!325, !325, i64 0}
!325 = !{!"vtable pointer", !311, i64 0}
!326 = !{!327, !309, i64 0}
!327 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEE", !309, i64 0, !328, i64 8, !328, i64 16, !309, i64 24}
!328 = !{!"long", !310, i64 0}
!329 = !{!327, !328, i64 8}
!330 = !{!327, !328, i64 16}
!331 = !{!"branch_weights", i32 2, i32 1}
!332 = !{!327, !309, i64 24}
!333 = !{!334, !309, i64 0}
!334 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEE", !309, i64 0, !328, i64 8, !328, i64 16, !309, i64 24}
!335 = !{!334, !328, i64 8}
!336 = !{!334, !328, i64 16}
!337 = !{!334, !309, i64 24}
!338 = !{!339, !309, i64 0}
!339 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !309, i64 0, !328, i64 8, !328, i64 16, !309, i64 24}
!340 = !{!339, !328, i64 8}
!341 = !{!339, !328, i64 16}
!342 = !{!339, !309, i64 24}
!343 = !{!344, !309, i64 0}
!344 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !309, i64 0, !328, i64 8, !328, i64 16, !309, i64 24}
!345 = !{!344, !328, i64 8}
!346 = !{!344, !328, i64 16}
!347 = !{!344, !309, i64 24}
!348 = !{!"function_entry_count", i64 2}
!349 = !{!"branch_weights", i32 2, i32 2}
!350 = !{!"function_entry_count", i64 18}
!351 = !{!"function_entry_count", i64 357476476}
!352 = !{!"function_entry_count", i64 1660206}
!353 = !{!"function_entry_count", i64 10}
!354 = distinct !{!354, !355}
!355 = !{!"llvm.loop.mustprogress"}
!356 = !{!"branch_weights", i32 1, i32 1}
!357 = !{!"branch_weights", i32 1, i32 0}
!358 = distinct !{!358, !355}
!359 = !{!"function_entry_count", i64 207524}
!360 = distinct !{!360, !355}
!361 = !{!"function_entry_count", i64 44684558}
!362 = distinct !{!362, !355}
!363 = !{!364, !309, i64 8}
!364 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1021XObjectFactoryDefaultEE", !309, i64 0, !309, i64 8}
!365 = !{!364, !309, i64 0}
!366 = !{!367, !309, i64 8}
!367 = !{!"_ZTSN11xalanc_1_1014XObjectFactoryE", !309, i64 8}
!368 = !{!328, !328, i64 0}
!369 = distinct !{!369, !355}
!370 = distinct !{!370, !355}
!371 = distinct !{!371, !355}
!372 = distinct !{!372, !355}
!373 = !{!"branch_weights", i32 1, i32 2}
!374 = distinct !{!374, !355}
!375 = distinct !{!375, !355}
!376 = distinct !{!376, !355}
!377 = distinct !{!377, !355}
!378 = distinct !{!378, !355}
!379 = distinct !{!379, !355}
!380 = distinct !{!380, !355}
!381 = distinct !{!381, !355}
!382 = distinct !{!382, !355}
!383 = !{!384, !309, i64 0}
!384 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_107XObjectEEE", !309, i64 0}
!385 = distinct !{!385, !355}
!386 = !{!"function_entry_count", i64 292432932}
!387 = !{!388, !309, i64 0}
!388 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !309, i64 0}
!389 = !{!"function_entry_count", i64 156754694}
!390 = !{!391, !309, i64 16}
!391 = !{!"_ZTSN11xalanc_1_107XObjectE", !392, i64 0, !394, i64 12, !309, i64 16}
!392 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !393, i64 8}
!393 = !{!"int", !310, i64 0}
!394 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !310, i64 0}
!395 = distinct !{!395, !355}
!396 = distinct !{!396, !355}
!397 = distinct !{!397, !355}
!398 = distinct !{!398, !355}
!399 = !{!"function_entry_count", i64 44684556}
!400 = !{!"function_entry_count", i64 207521}
!401 = !{!"function_entry_count", i64 41614}
!402 = !{!"branch_weights", i32 1, i32 41615}
!403 = !{!404, !393, i64 32}
!404 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !405, i64 0, !393, i64 32}
!405 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !309, i64 0, !328, i64 8, !328, i64 16, !309, i64 24}
!406 = !{!"function_entry_count", i64 3070433826}
!407 = !{!405, !328, i64 16}
!408 = !{!405, !328, i64 8}
!409 = !{!"branch_weights", i32 13, i32 41603}
!410 = !{!405, !309, i64 0}
!411 = !{!"branch_weights", i32 355, i32 41249}
!412 = !{!"branch_weights", i32 40890, i32 360}
!413 = !{!"function_entry_count", i64 6521798503}
!414 = !{!"function_entry_count", i64 64551608}
!415 = !{!"branch_weights", i32 64551591, i32 19}
!416 = !{!"branch_weights", i32 5, i32 64551587}
!417 = !{!405, !309, i64 24}
!418 = !{!"function_entry_count", i64 85300747}
!419 = !{!"function_entry_count", i64 128698679}
!420 = !{!"branch_weights", i32 43398290, i32 85300391}
!421 = !{!"function_entry_count", i64 82509}
!422 = !{!"function_entry_count", i64 348020}
!423 = !{!"branch_weights", i32 64381419, i32 348021}
!424 = distinct !{!424, !355}
!425 = !{!"function_entry_count", i64 155828046}
!426 = !{!"branch_weights", i32 1, i32 155828047}
!427 = !{!"branch_weights", i32 133170778, i32 22657270}
!428 = !{!"branch_weights", i32 1, i32 19024396}
!429 = !{!"branch_weights", i32 19024396, i32 -26420600}
!430 = distinct !{!430, !355}
!431 = !{!"branch_weights", i32 20748787, i32 1908484}
!432 = !{!"branch_weights", i32 1, i32 1908484}
!433 = !{!"branch_weights", i32 1, i32 1908483}
!434 = !{!"branch_weights", i32 1908483, i32 49797857}
!435 = distinct !{!435, !355}
!436 = !{!"branch_weights", i32 1908483, i32 1}
!437 = distinct !{!437, !355}
!438 = distinct !{!438, !355}
!439 = !{!"function_entry_count", i64 568333389}
!440 = !{!"function_entry_count", i64 1950573}
!441 = !{!"function_entry_count", i64 227375739}
!442 = !{!"function_entry_count", i64 64147281}
!443 = !{!"branch_weights", i32 64147282, i32 1}
!444 = !{!"function_entry_count", i64 85300390}
!445 = !{!"branch_weights", i32 1, i32 12185770}
!446 = !{!"branch_weights", i32 12185770, i32 -193930395}
!447 = distinct !{!447, !355}
!448 = !{!"function_entry_count", i64 30137156670}
!449 = !{!"function_entry_count", i64 1344597977}
!450 = !{!"function_entry_count", i64 185895030}
!451 = !{!"function_entry_count", i64 156073599}
!452 = !{!"function_entry_count", i64 133170778}
!453 = !{!"branch_weights", i32 22, i32 133170758}
!454 = !{!455, !455, i64 0}
!455 = !{!"short", !310, i64 0}
!456 = !{!"function_entry_count", i64 155828047}
!457 = !{!"function_entry_count", i64 124150656}
!458 = !{!"branch_weights", i32 124150657, i32 1}
!459 = !{!"function_entry_count", i64 64551586}
!460 = !{!"function_entry_count", i64 825654975}
!461 = !{!"function_entry_count", i64 56317002}
!462 = !{!"function_entry_count", i64 30109074}
!463 = !{!"function_entry_count", i64 86426076}
!464 = !{!"function_entry_count", i64 3901146}
!465 = !{!"branch_weights", i32 28199083, i32 1909993}
!466 = !{!"branch_weights", i32 4, i32 1}
!467 = distinct !{!467, !355}
!468 = !{!469, !470, i64 8}
!469 = !{!"_ZTSN11xalanc_1_1014XObjectFactory20DeleteXObjectFunctorE", !309, i64 0, !470, i64 8}
!470 = !{!"bool", !310, i64 0}
!471 = !{!"branch_weights", i32 5, i32 1}
!472 = !{!"branch_weights", i32 4, i32 2}
!473 = !{i8 0, i8 2}
!474 = !{}
!475 = !{!469, !309, i64 0}
!476 = distinct !{!476, !355}
!477 = distinct !{!477, !355}
!478 = distinct !{!478, !355}
!479 = distinct !{!479, !355}
