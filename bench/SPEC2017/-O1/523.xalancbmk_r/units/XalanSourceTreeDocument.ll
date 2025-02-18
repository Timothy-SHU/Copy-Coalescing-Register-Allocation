; ModuleID = 'XalanSourceTreeDocument.cpp'
source_filename = "XalanSourceTreeDocument.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeDocument" = type { %"class.xalanc_1_10::XalanDocument", ptr, ptr, %"class.xalanc_1_10::XalanSourceTreeAttributeAllocator", %"class.xalanc_1_10::XalanSourceTreeAttributeNSAllocator", %"class.xalanc_1_10::XalanSourceTreeCommentAllocator", %"class.xalanc_1_10::XalanSourceTreeElementAAllocator", %"class.xalanc_1_10::XalanSourceTreeElementANSAllocator", %"class.xalanc_1_10::XalanSourceTreeElementNAAllocator", %"class.xalanc_1_10::XalanSourceTreeElementNANSAllocator", %"class.xalanc_1_10::XalanSourceTreeProcessingInstructionAllocator", %"class.xalanc_1_10::XalanSourceTreeTextAllocator", %"class.xalanc_1_10::XalanSourceTreeTextIWSAllocator", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanArrayAllocator", i64, i8, %"class.xalanc_1_10::XalanMap", %"class.xalanc_1_10::XalanMap.23", %"class.xalanc_1_10::XalanDOMStringAllocator", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanDocument" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeAttributeAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeAttributeNSAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.0" }
%"class.xalanc_1_10::ArenaAllocator.0" = type { ptr, i64, %"class.xalanc_1_10::XalanList.1" }
%"class.xalanc_1_10::XalanList.1" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeCommentAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.2" }
%"class.xalanc_1_10::ArenaAllocator.2" = type { ptr, i64, %"class.xalanc_1_10::XalanList.3" }
%"class.xalanc_1_10::XalanList.3" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeElementAAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.4" }
%"class.xalanc_1_10::ArenaAllocator.4" = type { ptr, i64, %"class.xalanc_1_10::XalanList.5" }
%"class.xalanc_1_10::XalanList.5" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeElementANSAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.6" }
%"class.xalanc_1_10::ArenaAllocator.6" = type { ptr, i64, %"class.xalanc_1_10::XalanList.7" }
%"class.xalanc_1_10::XalanList.7" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeElementNAAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.8" }
%"class.xalanc_1_10::ArenaAllocator.8" = type { ptr, i64, %"class.xalanc_1_10::XalanList.9" }
%"class.xalanc_1_10::XalanList.9" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeElementNANSAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.10" }
%"class.xalanc_1_10::ArenaAllocator.10" = type { ptr, i64, %"class.xalanc_1_10::XalanList.11" }
%"class.xalanc_1_10::XalanList.11" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeProcessingInstructionAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.12" }
%"class.xalanc_1_10::ArenaAllocator.12" = type { ptr, i64, %"class.xalanc_1_10::XalanList.13" }
%"class.xalanc_1_10::XalanList.13" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeTextAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.14" }
%"class.xalanc_1_10::ArenaAllocator.14" = type { ptr, i64, %"class.xalanc_1_10::XalanList.15" }
%"class.xalanc_1_10::XalanList.15" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeTextIWSAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.16" }
%"class.xalanc_1_10::ArenaAllocator.16" = type { ptr, i64, %"class.xalanc_1_10::XalanList.17" }
%"class.xalanc_1_10::XalanList.17" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanArrayAllocator" = type { %"class.xalanc_1_10::XalanList.20", i64, ptr }
%"class.xalanc_1_10::XalanList.20" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::hash_null_terminated_arrays", %"struct.xalanc_1_10::equal_null_terminated_arrays", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.21", %"class.xalanc_1_10::XalanList.21", %"class.xalanc_1_10::XalanVector.22", i64, i64 }
%"struct.xalanc_1_10::hash_null_terminated_arrays" = type { i8 }
%"struct.xalanc_1_10::equal_null_terminated_arrays" = type { i8 }
%"class.xalanc_1_10::XalanList.21" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.22" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.23" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.26", %"class.xalanc_1_10::XalanList.26", %"class.xalanc_1_10::XalanVector.27", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.26" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.27" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.18" }
%"class.xalanc_1_10::ArenaAllocator.18" = type { ptr, i64, %"class.xalanc_1_10::XalanList.19" }
%"class.xalanc_1_10::XalanList.19" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node" = type { %"struct.std::pair.35", ptr, ptr }
%"struct.std::pair.35" = type { i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator.38" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.std::pair.28" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.37" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator.40" = type { %"struct.xalanc_1_10::XalanListIteratorBase.31" }
%"struct.xalanc_1_10::XalanListIteratorBase.31" = type { ptr }
%"struct.std::pair.32" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanVector.39" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.41" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEED2Ev = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE8allocateEm = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEEixERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS2_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S1_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE4findERKS2_ = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE9findEntryEm = comdat any

$_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE9push_backERKS9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE4findERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2EmRKSG_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE6insertERKS2_RKS4_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE13doCreateEntryERKS2_PKS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_ = comdat any

$_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE9push_backERKS9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2EmRKSJ_RN11xercesc_2_713MemoryManagerE = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1023XalanSourceTreeDocument18s_poolAllTextNodesE = dso_local local_unnamed_addr global i8 0, align 1
@_ZTVN11xalanc_1_1023XalanSourceTreeDocumentE = dso_local unnamed_addr constant { [47 x ptr] } { [47 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanSourceTreeDocumentE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD0Ev, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument11getNodeNameEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument12getNodeValueEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument11getNodeTypeEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13getParentNodeEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13getChildNodesEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13getFirstChildEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument12getLastChildEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument14getNextSiblingEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13getAttributesEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument9cloneNodeEb, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13hasChildNodesEv, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument9normalizeEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument9getPrefixEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument12getLocalNameEv, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument9isIndexedEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument8getIndexEv, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument13createElementERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument22createDocumentFragmentEv, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument13createCommentERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument18createCDATASectionERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument27createProcessingInstructionERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument15createAttributeERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument21createEntityReferenceERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument10getDoctypeEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument17getImplementationEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument18getDocumentElementEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument20getElementsByTagNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument10importNodeEPNS_9XalanNodeEb, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument15createElementNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument22getElementsByTagNameNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument14getElementByIdERKNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_1023XalanSourceTreeDocument12s_nameStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_10L18s_staticNameStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L10s_documentE = internal constant [10 x i16] [i16 35, i16 100, i16 111, i16 99, i16 117, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1023XalanSourceTreeDocumentE = dso_local constant [41 x i8] c"N11xalanc_1_1023XalanSourceTreeDocumentE\00", align 1
@_ZTIN11xalanc_1_1013XalanDocumentE = external constant ptr
@_ZTIN11xalanc_1_1023XalanSourceTreeDocumentE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanSourceTreeDocumentE, ptr @_ZTIN11xalanc_1_1013XalanDocumentE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeDocument.cpp, ptr null }]

@_ZN11xalanc_1_1023XalanSourceTreeDocumentC1ERN11xercesc_2_713MemoryManagerEbmmmmmm = dso_local unnamed_addr alias void (ptr, ptr, i1, i64, i64, i64, i64, i64, i64), ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm
@_ZN11xalanc_1_1023XalanSourceTreeDocumentC1ERN11xercesc_2_713MemoryManagerEmmmmmmmmb = dso_local unnamed_addr alias void (ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i1), ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEmmmmmmmmb
@_ZN11xalanc_1_1023XalanSourceTreeDocumentD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !122 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #21
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %10 = zext i1 %2 to i8
  tail call void @_ZN11xalanc_1_1013XalanDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeDocumentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  invoke void @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 100)
          to label %13 unwind label %70, !prof !127

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 50)
          to label %15 unwind label %72, !prof !127

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %17 unwind label %74, !prof !127

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 100)
          to label %19 unwind label %76, !prof !127

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 7
  invoke void @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 100)
          to label %21 unwind label %78, !prof !127

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 100)
          to label %23 unwind label %80, !prof !127

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 100)
          to label %25 unwind label %82, !prof !127

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %27 unwind label %84, !prof !127

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 11
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 100)
          to label %29 unwind label %86, !prof !127

29:                                               ; preds = %27
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 12
  invoke void @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 100)
          to label %31 unwind label %88, !prof !127

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %3, i64 noundef %4, i64 noundef %5)
          to label %33 unwind label %90, !prof !127

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %34, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %6, i64 noundef %7, i64 noundef %8)
          to label %35 unwind label %92, !prof !127

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15
  store ptr %1, ptr %36, align 8, !tbaa !128
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 0, i32 1
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  store i64 500, ptr %38, align 8, !tbaa !132
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 2
  store ptr null, ptr %39, align 8, !tbaa !135
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  store i64 2, ptr %40, align 8, !tbaa !136
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 17
  store i8 %10, ptr %41, align 8, !tbaa !192
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 2
  store ptr %1, ptr %43, align 8, !tbaa !193
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 3
  store float 7.500000e-01, ptr %44, align 8, !tbaa !194
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 4
  store i64 29, ptr %45, align 8, !tbaa !195
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 5
  store i64 0, ptr %46, align 8, !tbaa !196
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 6
  store ptr %1, ptr %47, align 8, !tbaa !197
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 6, i32 1
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  store ptr %1, ptr %49, align 8, !tbaa !197
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 7, i32 1
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  store ptr %1, ptr %51, align 8, !tbaa !198
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 8, i32 1
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %52, i8 0, i64 32, i1 false)
  store i64 50, ptr %53, align 8, !tbaa !199
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 2
  store ptr %1, ptr %55, align 8, !tbaa !200
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 3
  store float 7.500000e-01, ptr %56, align 8, !tbaa !201
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 4
  store i64 29, ptr %57, align 8, !tbaa !202
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 5
  store i64 0, ptr %58, align 8, !tbaa !203
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 6
  store ptr %1, ptr %59, align 8, !tbaa !204
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 6, i32 1
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  store ptr %1, ptr %61, align 8, !tbaa !204
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 7, i32 1
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  store ptr %1, ptr %63, align 8, !tbaa !205
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 8, i32 1
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %64, i8 0, i64 32, i1 false)
  store i64 50, ptr %65, align 8, !tbaa !206
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 20
  invoke void @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %66, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %6)
          to label %67 unwind label %94, !prof !127

67:                                               ; preds = %35
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %68, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %69 unwind label %96, !prof !127

69:                                               ; preds = %67
  ret void

70:                                               ; preds = %9
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %122

72:                                               ; preds = %13
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %120

74:                                               ; preds = %15
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %118

76:                                               ; preds = %17
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %116

78:                                               ; preds = %19
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %114

80:                                               ; preds = %21
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %112

82:                                               ; preds = %23
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %110

84:                                               ; preds = %25
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %108

86:                                               ; preds = %27
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %106

88:                                               ; preds = %29
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %104

90:                                               ; preds = %31
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %102

92:                                               ; preds = %33
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %100

94:                                               ; preds = %35
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %98

96:                                               ; preds = %67
  %97 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %66) #21
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %54) #21
  tail call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %42) #21
  tail call void @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %36) #21
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %34) #21
  br label %100

100:                                              ; preds = %98, %92
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %93, %92 ]
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %32) #21
  br label %102

102:                                              ; preds = %100, %90
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %91, %90 ]
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %30) #21
  br label %104

104:                                              ; preds = %102, %88
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %89, %88 ]
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %28) #21
  br label %106

106:                                              ; preds = %104, %86
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %87, %86 ]
  tail call void @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %26) #21
  br label %108

108:                                              ; preds = %106, %84
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %85, %84 ]
  tail call void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %24) #21
  br label %110

110:                                              ; preds = %108, %82
  %111 = phi { ptr, i32 } [ %109, %108 ], [ %83, %82 ]
  tail call void @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %22) #21
  br label %112

112:                                              ; preds = %110, %80
  %113 = phi { ptr, i32 } [ %111, %110 ], [ %81, %80 ]
  tail call void @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %20) #21
  br label %114

114:                                              ; preds = %112, %78
  %115 = phi { ptr, i32 } [ %113, %112 ], [ %79, %78 ]
  tail call void @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #21
  br label %116

116:                                              ; preds = %114, %76
  %117 = phi { ptr, i32 } [ %115, %114 ], [ %77, %76 ]
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #21
  br label %118

118:                                              ; preds = %116, %74
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %75, %74 ]
  tail call void @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #21
  br label %120

120:                                              ; preds = %118, %72
  %121 = phi { ptr, i32 } [ %119, %118 ], [ %73, %72 ]
  tail call void @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #21
  br label %122

122:                                              ; preds = %120, %70
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %71, %70 ]
  tail call void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  resume { ptr, i32 } %123
}

declare void @_ZN11xalanc_1_1013XalanDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53, !prof !127

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !207
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6, !prof !127

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !208, !noalias !209
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !204, !noalias !209
  %13 = load ptr, ptr %12, align 8, !tbaa !124, !noalias !209
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !209
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !208, !noalias !209
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !212, !noalias !209
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !215, !noalias !209
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !208, !noalias !209
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !212, !noalias !216
  %27 = load ptr, ptr %8, align 8, !tbaa !208, !noalias !217
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !204, !noalias !217
  %31 = load ptr, ptr %30, align 8, !tbaa !124, !noalias !217
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !217
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !208, !noalias !217
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !212, !noalias !217
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !215, !noalias !217
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !208, !noalias !217
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !220
  %43 = load ptr, ptr %22, align 8, !tbaa !200
  %44 = load ptr, ptr %43, align 8, !tbaa !124
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !221

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #21
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #21
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #21
  ret void

51:                                               ; preds = %29, %41
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

53:                                               ; preds = %1, %11
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ]
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #22
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  invoke void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53, !prof !127

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !224
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6, !prof !127

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !225, !noalias !226
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !197, !noalias !226
  %13 = load ptr, ptr %12, align 8, !tbaa !124, !noalias !226
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !226
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !225, !noalias !226
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !229, !noalias !226
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !232, !noalias !226
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !225, !noalias !226
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !229, !noalias !216
  %27 = load ptr, ptr %8, align 8, !tbaa !225, !noalias !233
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !197, !noalias !233
  %31 = load ptr, ptr %30, align 8, !tbaa !124, !noalias !233
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !233
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !225, !noalias !233
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !229, !noalias !233
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !232, !noalias !233
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !225, !noalias !233
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !236
  %43 = load ptr, ptr %22, align 8, !tbaa !193
  %44 = load ptr, ptr %43, align 8, !tbaa !124
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !237

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #21
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #21
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #21
  ret void

51:                                               ; preds = %29, %41
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

53:                                               ; preds = %1, %11
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ]
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #22
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.20", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !238, !noalias !239
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14, !prof !242

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !128, !noalias !239
  %7 = load ptr, ptr %6, align 8, !tbaa !124, !noalias !239
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !239
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
          to label %11 unwind label %59, !prof !243

11:                                               ; preds = %5
  store ptr %10, ptr %2, align 8, !tbaa !238, !noalias !239
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %12, align 8, !tbaa !244, !noalias !239
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %13, align 8, !tbaa !247, !noalias !239
  br label %14

14:                                               ; preds = %1, %11
  %15 = load ptr, ptr %2, align 8, !tbaa !238, !noalias !216
  %16 = load ptr, ptr %0, align 8, !tbaa !128
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %26, !prof !248

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !124, !noalias !249
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8, !noalias !249
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 32)
          to label %23 unwind label %59

23:                                               ; preds = %18
  store ptr %22, ptr %2, align 8, !tbaa !238, !noalias !249
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %22, i64 0, i32 2
  store ptr %22, ptr %24, align 8, !tbaa !244, !noalias !249
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %22, i64 0, i32 1
  store ptr %22, ptr %25, align 8, !tbaa !247, !noalias !249
  br label %26

26:                                               ; preds = %14, %23
  %27 = load ptr, ptr %2, align 8, !tbaa !238, !noalias !249
  br label %28

28:                                               ; preds = %50, %26
  %29 = phi ptr [ %27, %26 ], [ %31, %50 ]
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !244, !noalias !216
  %32 = load ptr, ptr %2, align 8, !tbaa !238, !noalias !252
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %43, !prof !255

34:                                               ; preds = %28
  %35 = load ptr, ptr %0, align 8, !tbaa !128, !noalias !252
  %36 = load ptr, ptr %35, align 8, !tbaa !124, !noalias !252
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !noalias !252
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef 32)
          to label %40 unwind label %57

40:                                               ; preds = %34
  store ptr %39, ptr %2, align 8, !tbaa !238, !noalias !252
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %39, i64 0, i32 2
  store ptr %39, ptr %41, align 8, !tbaa !244, !noalias !252
  %42 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %39, i64 0, i32 1
  store ptr %39, ptr %42, align 8, !tbaa !247, !noalias !252
  br label %43

43:                                               ; preds = %28, %40
  %44 = load ptr, ptr %2, align 8, !tbaa !238, !noalias !252
  %45 = icmp eq ptr %31, %44
  br i1 %45, label %56, label %46, !prof !256

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"struct.std::pair.35", ptr %31, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !257
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !258

50:                                               ; preds = %46, %51
  br label %28, !llvm.loop !259

51:                                               ; preds = %46
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #21
  %52 = load ptr, ptr %47, align 8, !tbaa !257
  %53 = load ptr, ptr %16, align 8, !tbaa !124
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %52)
          to label %50 unwind label %57, !prof !260

56:                                               ; preds = %43
  tail call void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  ret void

57:                                               ; preds = %51, %34
  %58 = landingpad { ptr, i32 }
          catch ptr null
  br label %61

59:                                               ; preds = %5, %18
  %60 = landingpad { ptr, i32 }
          catch ptr null
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %58, %57 ], [ %60, %59 ]
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #22
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument6createERN11xercesc_2_713MemoryManagerEbmmmmmm(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %9 = load ptr, ptr %0, align 8, !tbaa !124
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1056), !prof !261
  invoke void @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm(ptr noundef nonnull align 8 dereferenceable(1056) %12, ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7)
          to label %13 unwind label %14, !prof !127

13:                                               ; preds = %8
  ret ptr %12

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = icmp eq ptr %12, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !124
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12)
          to label %24 unwind label %21

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #22
  unreachable

24:                                               ; preds = %14, %17
  resume { ptr, i32 } %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEmmmmmmmmb(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %12 = zext i1 %10 to i8
  tail call void @_ZN11xalanc_1_1013XalanDocumentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeDocumentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  invoke void @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2)
          to label %15 unwind label %72

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %3)
          to label %17 unwind label %74

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %4)
          to label %19 unwind label %76

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %5)
          to label %21 unwind label %78

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 7
  invoke void @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %6)
          to label %23 unwind label %80

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %5)
          to label %25 unwind label %82

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %6)
          to label %27 unwind label %84

27:                                               ; preds = %25
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %7)
          to label %29 unwind label %86

29:                                               ; preds = %27
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 11
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8)
          to label %31 unwind label %88

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 12
  invoke void @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %9)
          to label %33 unwind label %90

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %34, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32, i64 noundef 101, i64 noundef 15)
          to label %35 unwind label %92

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %36, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32, i64 noundef 997, i64 noundef 15)
          to label %37 unwind label %94

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15
  store ptr %1, ptr %38, align 8, !tbaa !128
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 0, i32 1
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  store i64 500, ptr %40, align 8, !tbaa !132
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 2
  store ptr null, ptr %41, align 8, !tbaa !135
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  store i64 2, ptr %42, align 8, !tbaa !136
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 17
  store i8 %12, ptr %43, align 8, !tbaa !192
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 2
  store ptr %1, ptr %45, align 8, !tbaa !193
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 3
  store float 7.500000e-01, ptr %46, align 8, !tbaa !194
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 4
  store i64 29, ptr %47, align 8, !tbaa !195
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 5
  store i64 0, ptr %48, align 8, !tbaa !196
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 6
  store ptr %1, ptr %49, align 8, !tbaa !197
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 6, i32 1
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 0, i64 16, i1 false)
  store ptr %1, ptr %51, align 8, !tbaa !197
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 7, i32 1
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  store ptr %1, ptr %53, align 8, !tbaa !198
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 8, i32 1
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %54, i8 0, i64 32, i1 false)
  store i64 50, ptr %55, align 8, !tbaa !199
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 2
  store ptr %1, ptr %57, align 8, !tbaa !200
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 3
  store float 7.500000e-01, ptr %58, align 8, !tbaa !201
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 4
  store i64 29, ptr %59, align 8, !tbaa !202
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 5
  store i64 0, ptr %60, align 8, !tbaa !203
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 6
  store ptr %1, ptr %61, align 8, !tbaa !204
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 6, i32 1
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  store ptr %1, ptr %63, align 8, !tbaa !204
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 7, i32 1
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  store ptr %1, ptr %65, align 8, !tbaa !205
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 8, i32 1
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %66, i8 0, i64 32, i1 false)
  store i64 50, ptr %67, align 8, !tbaa !206
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 20
  invoke void @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %68, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32)
          to label %69 unwind label %96

69:                                               ; preds = %37
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %70, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %71 unwind label %98

71:                                               ; preds = %69
  ret void

72:                                               ; preds = %11
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %124

74:                                               ; preds = %15
  %75 = landingpad { ptr, i32 }
          cleanup
  br label %122

76:                                               ; preds = %17
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %120

78:                                               ; preds = %19
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %118

80:                                               ; preds = %21
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %116

82:                                               ; preds = %23
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %114

84:                                               ; preds = %25
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %112

86:                                               ; preds = %27
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %110

88:                                               ; preds = %29
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %108

90:                                               ; preds = %31
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %106

92:                                               ; preds = %33
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %104

94:                                               ; preds = %35
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %102

96:                                               ; preds = %37
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %69
  %99 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %68) #21
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ]
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %56) #21
  tail call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %44) #21
  tail call void @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %38) #21
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %36) #21
  br label %102

102:                                              ; preds = %100, %94
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %95, %94 ]
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %34) #21
  br label %104

104:                                              ; preds = %102, %92
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %93, %92 ]
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %32) #21
  br label %106

106:                                              ; preds = %104, %90
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %91, %90 ]
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %30) #21
  br label %108

108:                                              ; preds = %106, %88
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %89, %88 ]
  tail call void @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %28) #21
  br label %110

110:                                              ; preds = %108, %86
  %111 = phi { ptr, i32 } [ %109, %108 ], [ %87, %86 ]
  tail call void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %26) #21
  br label %112

112:                                              ; preds = %110, %84
  %113 = phi { ptr, i32 } [ %111, %110 ], [ %85, %84 ]
  tail call void @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %24) #21
  br label %114

114:                                              ; preds = %112, %82
  %115 = phi { ptr, i32 } [ %113, %112 ], [ %83, %82 ]
  tail call void @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %22) #21
  br label %116

116:                                              ; preds = %114, %80
  %117 = phi { ptr, i32 } [ %115, %114 ], [ %81, %80 ]
  tail call void @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %20) #21
  br label %118

118:                                              ; preds = %116, %78
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %79, %78 ]
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #21
  br label %120

120:                                              ; preds = %118, %76
  %121 = phi { ptr, i32 } [ %119, %118 ], [ %77, %76 ]
  tail call void @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #21
  br label %122

122:                                              ; preds = %120, %74
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %75, %74 ]
  tail call void @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #21
  br label %124

124:                                              ; preds = %122, %72
  %125 = phi { ptr, i32 } [ %123, %122 ], [ %73, %72 ]
  tail call void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  resume { ptr, i32 } %125
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(1056) %0) unnamed_addr #1 align 2 !prof !123 {
  store ptr getelementptr inbounds ({ [47 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeDocumentE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !124
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 20
  tail call void @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #21
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %4) #21
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18
  tail call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %5) #21
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #21
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #21
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #21
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #21
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #21
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #21
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #21
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #21
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #21
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %15) #21
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #21
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %17) #21
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #21
  tail call void @_ZN11xalanc_1_1013XalanDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocumentD0Ev(ptr noundef nonnull align 8 dereferenceable(1056) %0) unnamed_addr #1 align 2 !prof !122 {
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev(ptr noundef nonnull align 8 dereferenceable(1056) %0) #21
  tail call void @_ZdlPv(ptr noundef %0) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr @_ZN11xalanc_1_10L18s_staticNameStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument12getNodeValueEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1023XalanSourceTreeDocument11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !123 {
  ret i32 9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #21
  resume { ptr, i32 } %5
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1056) %0) unnamed_addr #9 align 2 !prof !262 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !263
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1056) %0) unnamed_addr #9 align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !264
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr null
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1023XalanSourceTreeDocument13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1056) %0) unnamed_addr #9 align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !264
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #21
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1023XalanSourceTreeDocument11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #7 align 2 !prof !122 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr @_ZN11xalanc_1_10L13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument12getLocalNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr @_ZN11xalanc_1_10L18s_staticNameStringE
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1023XalanSourceTreeDocument9isIndexedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1023XalanSourceTreeDocument8getIndexEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret i64 1
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument13createElementERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument22createDocumentFragmentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 9)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #21
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument13createCommentERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument18createCDATASectionERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument27createProcessingInstructionERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument15createAttributeERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument21createEntityReferenceERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument10getDoctypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument17getImplementationEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !122 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument18getDocumentElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1056) %0) unnamed_addr #9 align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !264
  ret ptr %3
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument20getElementsByTagNameERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #21
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument10importNodeEPNS_9XalanNodeEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i1 zeroext %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument15createElementNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createAttributeNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 9)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument14getElementByIdERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) unnamed_addr #3 align 2 !prof !122 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.38", align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !265
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  store ptr %11, ptr %4, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21, !noalias !267
  call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE4findERKS2_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.38") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !267
  %12 = load ptr, ptr %3, align 8, !tbaa !270, !noalias !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21, !noalias !267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 6, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !225, !noalias !272
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !197, !noalias !272
  %19 = load ptr, ptr %18, align 8, !tbaa !124, !noalias !272
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8, !noalias !272
  %22 = call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef 32), !noalias !272
  store ptr %22, ptr %13, align 8, !tbaa !225, !noalias !272
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %22, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !229, !noalias !272
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %22, i64 0, i32 1
  store ptr %22, ptr %24, align 8, !tbaa !232, !noalias !272
  br label %25

25:                                               ; preds = %2, %16
  %26 = load ptr, ptr %13, align 8, !tbaa !225, !noalias !272
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %12, align 8, !tbaa !236
  %30 = getelementptr inbounds %"struct.std::pair.28", ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !279
  br label %32

32:                                               ; preds = %25, %28
  %33 = phi ptr [ %31, %28 ], [ null, %25 ]
  ret ptr %33
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_713AttributeListEmPNS_22XalanSourceTreeElementEbPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr nocapture noundef writeonly %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #3 align 2 !prof !122 {
  %8 = alloca ptr, align 8
  %9 = load ptr, ptr %2, align 8, !tbaa !124
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %15, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %15, i64 0, i32 3
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 0, i32 1
  %19 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 3
  %22 = icmp eq ptr %6, null
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  br label %29

27:                                               ; preds = %113, %7
  %28 = phi i64 [ %3, %7 ], [ %114, %113 ]
  ret i64 %28

29:                                               ; preds = %14, %113
  %30 = phi i64 [ %3, %14 ], [ %114, %113 ]
  %31 = phi i32 [ 0, %14 ], [ %115, %113 ]
  %32 = load ptr, ptr %2, align 8, !tbaa !124
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %31)
  br label %36

36:                                               ; preds = %36, %29
  %37 = phi ptr [ %35, %29 ], [ %40, %36 ]
  %38 = load i16, ptr %37, align 2, !tbaa !281
  %39 = icmp eq i16 %38, 0
  %40 = getelementptr inbounds i16, ptr %37, i64 1
  br i1 %39, label %41, label %36, !llvm.loop !283

41:                                               ; preds = %36
  %42 = ptrtoint ptr %37 to i64
  %43 = ptrtoint ptr %35 to i64
  %44 = sub i64 %42, %43
  %45 = lshr exact i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = load i64, ptr %16, align 8, !tbaa !265
  %48 = icmp eq i64 %47, 0
  %49 = load ptr, ptr %17, align 8
  %50 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %49
  %51 = load i32, ptr %18, align 8, !tbaa !284
  %52 = call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %35, i32 noundef %46, ptr noundef %50, i32 noundef %51)
  br i1 %52, label %61, label %53

53:                                               ; preds = %41
  %54 = load i64, ptr %20, align 8, !tbaa !265
  %55 = icmp eq i64 %54, 0
  %56 = load ptr, ptr %21, align 8
  %57 = select i1 %55, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %56
  %58 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %35)
  %59 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %57)
  %60 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %35, i32 noundef %58, ptr noundef %57, i32 noundef %59)
  br label %61

61:                                               ; preds = %53, %41
  %62 = phi i1 [ true, %41 ], [ %60, %53 ]
  %63 = xor i1 %62, %5
  br i1 %63, label %113, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %2, align 8, !tbaa !124
  %66 = getelementptr inbounds ptr, ptr %65, i64 5
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %31)
  br i1 %22, label %69, label %76

69:                                               ; preds = %64
  %70 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %24, ptr noundef %35, i32 noundef -1)
  %71 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef %68, i32 noundef -1)
  %72 = load i64, ptr %26, align 8, !tbaa !136
  %73 = add i64 %72, 1
  store i64 %73, ptr %26, align 8, !tbaa !136
  %74 = call noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocator6createERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 8 dereferenceable(36) %70, ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef %4, i64 noundef %72)
  %75 = getelementptr inbounds ptr, ptr %1, i64 %30
  store ptr %74, ptr %75, align 8, !tbaa !266
  br label %111

76:                                               ; preds = %64
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !266
  %78 = call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument21getNamespaceForPrefixEPKtRKNS_14PrefixResolverERNS_14XalanDOMStringEbPS2_(ptr nonnull align 8 poison, ptr noundef %35, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(36) %77, i1 noundef zeroext false, ptr noundef nonnull %8)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %78, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !284
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80, %76
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 3
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %89 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %86, ptr noundef %35, i32 noundef -1)
  %90 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %87, ptr noundef %68, i32 noundef -1)
  %91 = load i64, ptr %88, align 8, !tbaa !136
  %92 = add i64 %91, 1
  store i64 %92, ptr %88, align 8, !tbaa !136
  %93 = call noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocator6createERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %85, ptr noundef nonnull align 8 dereferenceable(36) %89, ptr noundef nonnull align 8 dereferenceable(36) %90, ptr noundef %4, i64 noundef %91)
  br label %108

94:                                               ; preds = %80
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %99 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %96, ptr noundef %35, i32 noundef -1)
  %100 = load ptr, ptr %8, align 8, !tbaa !266
  %101 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %96, ptr noundef %100, i32 noundef -1)
  %102 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %96, ptr noundef nonnull align 8 dereferenceable(36) %78)
  %103 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %96, ptr noundef nonnull align 8 dereferenceable(36) %77)
  %104 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %97, ptr noundef %68, i32 noundef -1)
  %105 = load i64, ptr %98, align 8, !tbaa !136
  %106 = add i64 %105, 1
  store i64 %106, ptr %98, align 8, !tbaa !136
  %107 = call noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %95, ptr noundef nonnull align 8 dereferenceable(36) %99, ptr noundef nonnull align 8 dereferenceable(36) %101, ptr noundef nonnull align 8 dereferenceable(36) %102, ptr noundef nonnull align 8 dereferenceable(36) %103, ptr noundef nonnull align 8 dereferenceable(36) %104, ptr noundef %4, i64 noundef %105)
  br label %108

108:                                              ; preds = %94, %84
  %109 = phi ptr [ %107, %94 ], [ %93, %84 ]
  %110 = getelementptr inbounds ptr, ptr %1, i64 %30
  store ptr %109, ptr %110, align 8, !tbaa !266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %111

111:                                              ; preds = %108, %69
  %112 = add i64 %30, 1
  br label %113

113:                                              ; preds = %61, %111
  %114 = phi i64 [ %112, %111 ], [ %30, %61 ]
  %115 = add nuw i32 %31, 1
  %116 = icmp eq i32 %115, %12
  br i1 %116, label %27, label %29, !llvm.loop !285
}

declare noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocator6createERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument21getNamespaceForPrefixEPKtRKNS_14PrefixResolverERNS_14XalanDOMStringEbPS2_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, i1 noundef zeroext %4, ptr noundef writeonly %5) local_unnamed_addr #3 align 2 !prof !122 {
  br label %7

7:                                                ; preds = %7, %6
  %8 = phi ptr [ %1, %6 ], [ %11, %7 ]
  %9 = load i16, ptr %8, align 2, !tbaa !281
  %10 = icmp eq i16 %9, 0
  %11 = getelementptr inbounds i16, ptr %8, i64 1
  br i1 %10, label %12, label %7, !llvm.loop !283

12:                                               ; preds = %7
  %13 = ptrtoint ptr %8 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %21, %12
  %19 = phi ptr [ %1, %12 ], [ %22, %21 ]
  %20 = load i16, ptr %19, align 2, !tbaa !281
  switch i16 %20, label %21 [
    i16 58, label %23
    i16 0, label %23
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds i16, ptr %19, i64 1
  br label %18, !llvm.loop !286

23:                                               ; preds = %18, %18
  %24 = ptrtoint ptr %19 to i64
  %25 = sub i64 %24, %14
  %26 = lshr exact i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = icmp eq i32 %27, -1
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 0, i32 noundef -1)
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  br label %33

33:                                               ; preds = %29, %31
  %34 = phi i32 [ %32, %31 ], [ %27, %29 ]
  %35 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %1, i32 noundef %34)
  %36 = icmp eq ptr %5, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = and i64 %26, 4294967295
  %39 = getelementptr inbounds i16, ptr %1, i64 %38
  %40 = getelementptr inbounds i16, ptr %39, i64 1
  store ptr %40, ptr %5, align 8, !tbaa !266
  br label %53

41:                                               ; preds = %23
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !265
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i64, ptr %42, align 8, !tbaa !265
  %47 = sub i64 %46, %43
  store i64 %47, ptr %42, align 8, !tbaa !265
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  store i32 0, ptr %49, align 8, !tbaa !284
  %50 = icmp eq ptr %5, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store ptr %1, ptr %5, align 8, !tbaa !266
  br label %52

52:                                               ; preds = %51, %48
  br i1 %4, label %53, label %59

53:                                               ; preds = %52, %33, %37
  %54 = phi ptr [ %3, %37 ], [ %3, %33 ], [ @_ZN11xalanc_1_10L13s_emptyStringE, %52 ]
  %55 = load ptr, ptr %2, align 8, !tbaa !124
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %54)
  br label %59

59:                                               ; preds = %53, %52
  %60 = phi ptr [ null, %52 ], [ %58, %53 ]
  ret ptr %60
}

declare noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListEPNS_9XalanNodeES8_S8_b(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #3 align 2 !prof !122 {
  %8 = load ptr, ptr %2, align 8, !tbaa !124
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %12 = zext i32 %11 to i64
  br i1 %6, label %13, label %19

13:                                               ; preds = %7
  %14 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %15 = xor i1 %14, true
  %16 = and i1 %15, %6
  %17 = zext i1 %15 to i64
  %18 = add nuw nsw i64 %17, %12
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i1 [ %6, %7 ], [ %16, %13 ]
  %21 = phi i64 [ %12, %7 ], [ %18, %13 ]
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 8
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %26 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef %1, i32 noundef -1)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %28 = load i64, ptr %27, align 8, !tbaa !136
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !136
  %30 = tail call noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(36) %26, ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %28)
  br label %41

31:                                               ; preds = %19
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15
  %33 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %32, i64 noundef %21)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %36 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %35, ptr noundef %1, i32 noundef -1)
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %38 = load i64, ptr %37, align 8, !tbaa !136
  %39 = add i64 %38, 1
  store i64 %39, ptr %37, align 8, !tbaa !136
  %40 = tail call noundef ptr @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 8 dereferenceable(36) %36, ptr noundef nonnull %0, ptr noundef %33, i64 noundef %21, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %38)
  br label %41

41:                                               ; preds = %31, %23
  %42 = phi ptr [ null, %23 ], [ %33, %31 ]
  %43 = phi ptr [ %30, %23 ], [ %40, %31 ]
  br i1 %20, label %44, label %62

44:                                               ; preds = %41
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %47 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE, align 8, !tbaa !266
  %48 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %46, ptr noundef nonnull align 8 dereferenceable(36) %47)
  %49 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !266
  %50 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %46, ptr noundef nonnull align 8 dereferenceable(36) %49)
  %51 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE, align 8, !tbaa !266
  %52 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %46, ptr noundef nonnull align 8 dereferenceable(36) %51)
  %53 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !266
  %54 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %46, ptr noundef nonnull align 8 dereferenceable(36) %53)
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %56 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !266
  %57 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %55, ptr noundef nonnull align 8 dereferenceable(36) %56)
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %59 = load i64, ptr %58, align 8, !tbaa !136
  %60 = add i64 %59, 1
  store i64 %60, ptr %58, align 8, !tbaa !136
  %61 = tail call noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %45, ptr noundef nonnull align 8 dereferenceable(36) %48, ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef nonnull align 8 dereferenceable(36) %54, ptr noundef nonnull align 8 dereferenceable(36) %57, ptr noundef %43, i64 noundef %59)
  store ptr %61, ptr %42, align 8, !tbaa !266
  br label %62

62:                                               ; preds = %44, %41
  %63 = phi i64 [ 1, %44 ], [ 0, %41 ]
  %64 = tail call noundef i64 @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_713AttributeListEmPNS_22XalanSourceTreeElementEbPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %42, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %63, ptr noundef %43, i1 noundef zeroext true, ptr noundef null)
  %65 = tail call noundef i64 @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_713AttributeListEmPNS_22XalanSourceTreeElementEbPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %42, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %64, ptr noundef %43, i1 noundef zeroext false, ptr noundef null)
  ret ptr %43
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 !prof !122 {
  %2 = load ptr, ptr %0, align 8, !tbaa !124
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %1
  %8 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE, align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  br label %15

11:                                               ; preds = %15
  %12 = add nuw i32 %17, 1
  %13 = icmp ult i32 %12, %5
  %14 = icmp eq i32 %12, %5
  br i1 %14, label %29, label %15, !llvm.loop !287

15:                                               ; preds = %7, %11
  %16 = phi i1 [ %6, %7 ], [ %13, %11 ]
  %17 = phi i32 [ 0, %7 ], [ %12, %11 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !124
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %17)
  %22 = load i64, ptr %9, align 8, !tbaa !265
  %23 = icmp eq i64 %22, 0
  %24 = load ptr, ptr %10, align 8
  %25 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %24
  %26 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %25)
  %27 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %21)
  %28 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %25, i32 noundef %26, ptr noundef %21, i32 noundef %27)
  br i1 %28, label %29, label %11

29:                                               ; preds = %15, %11, %1
  %30 = phi i1 [ %6, %1 ], [ %16, %15 ], [ %13, %11 ]
  ret i1 %30
}

declare noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !132
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %8, label %6, !prof !288

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %1)
  br label %25

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE9findEntryEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !289

11:                                               ; preds = %8
  %12 = load i64, ptr %3, align 8, !tbaa !132
  %13 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %12, i64 noundef %1)
  br label %25

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"struct.std::pair.35", ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !257
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !290
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %16, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !292
  %21 = load i64, ptr %9, align 8, !tbaa !293
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds ptr, ptr %18, i64 %22
  %24 = sub i64 %21, %1
  store i64 %24, ptr %9, align 8, !tbaa !293
  br label %25

25:                                               ; preds = %11, %14, %6
  %26 = phi ptr [ %7, %6 ], [ %13, %11 ], [ %23, %14 ]
  ret ptr %26
}

declare noundef ptr @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_713AttributeListERKNS_14PrefixResolverEPNS_9XalanNodeESB_SB_b(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #3 align 2 !prof !122 {
  %9 = load ptr, ptr %2, align 8, !tbaa !124
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %13 = zext i32 %12 to i64
  br i1 %7, label %14, label %20

14:                                               ; preds = %8
  %15 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i64
  %18 = add nuw nsw i64 %17, %13
  %19 = and i1 %16, %7
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi i64 [ %13, %8 ], [ %18, %14 ]
  %22 = phi i1 [ %7, %8 ], [ %19, %14 ]
  %23 = icmp eq i64 %21, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15
  %26 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %25, i64 noundef %21)
  br label %27

27:                                               ; preds = %20, %24
  %28 = phi ptr [ %26, %24 ], [ null, %20 ]
  %29 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeES7_S7_RKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef %28, i64 noundef %21, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %22, label %30, label %48

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %33 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE, align 8, !tbaa !266
  %34 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull align 8 dereferenceable(36) %33)
  %35 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !266
  %36 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull align 8 dereferenceable(36) %35)
  %37 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE, align 8, !tbaa !266
  %38 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull align 8 dereferenceable(36) %37)
  %39 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !266
  %40 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %32, ptr noundef nonnull align 8 dereferenceable(36) %39)
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %42 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !266
  %43 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %41, ptr noundef nonnull align 8 dereferenceable(36) %42)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %45 = load i64, ptr %44, align 8, !tbaa !136
  %46 = add i64 %45, 1
  store i64 %46, ptr %44, align 8, !tbaa !136
  %47 = tail call noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 8 dereferenceable(36) %34, ptr noundef nonnull align 8 dereferenceable(36) %36, ptr noundef nonnull align 8 dereferenceable(36) %38, ptr noundef nonnull align 8 dereferenceable(36) %40, ptr noundef nonnull align 8 dereferenceable(36) %43, ptr noundef %29, i64 noundef %45)
  store ptr %47, ptr %28, align 8, !tbaa !266
  br label %48

48:                                               ; preds = %30, %27
  %49 = phi i64 [ 1, %30 ], [ 0, %27 ]
  %50 = tail call noundef i64 @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_713AttributeListEmPNS_22XalanSourceTreeElementEbPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %49, ptr noundef %29, i1 noundef zeroext true, ptr noundef nonnull %3)
  %51 = tail call noundef i64 @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_713AttributeListEmPNS_22XalanSourceTreeElementEbPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %50, ptr noundef %29, i1 noundef zeroext false, ptr noundef nonnull %3)
  ret ptr %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeES7_S7_RKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #3 align 2 !prof !122 {
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  %10 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument21getNamespaceForPrefixEPKtRKNS_14PrefixResolverERNS_14XalanDOMStringEbPS2_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(36) %9, i1 noundef zeroext true, ptr noundef null)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !284
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %12, %8
  %17 = icmp eq i64 %3, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %18, ptr noundef %1, i32 noundef -1)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %21 = load i64, ptr %20, align 8, !tbaa !136
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !136
  br i1 %17, label %23, label %26

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 8
  %25 = tail call noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %21)
  br label %52

26:                                               ; preds = %16
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 6
  %28 = tail call noundef ptr @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %21)
  br label %52

29:                                               ; preds = %12
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !284
  %32 = icmp eq i32 %31, 0
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i16, ptr %1, i64 %33
  %35 = getelementptr inbounds i16, ptr %34, i64 1
  %36 = select i1 %32, ptr %1, ptr %35
  %37 = icmp eq i64 %3, 0
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %39 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %38, ptr noundef %1, i32 noundef -1)
  %40 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %38, ptr noundef %36, i32 noundef -1)
  %41 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %38, ptr noundef nonnull align 8 dereferenceable(36) %10)
  %42 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %38, ptr noundef nonnull align 8 dereferenceable(36) %9)
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %44 = load i64, ptr %43, align 8, !tbaa !136
  %45 = add i64 %44, 1
  store i64 %45, ptr %43, align 8, !tbaa !136
  br i1 %37, label %46, label %49

46:                                               ; preds = %29
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 9
  %48 = tail call noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40) %47, ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef nonnull align 8 dereferenceable(36) %40, ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %44)
  br label %52

49:                                               ; preds = %29
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 7
  %51 = tail call noundef ptr @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(40) %50, ptr noundef nonnull align 8 dereferenceable(36) %39, ptr noundef nonnull align 8 dereferenceable(36) %40, ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %44)
  br label %52

52:                                               ; preds = %46, %49, %26, %23
  %53 = phi ptr [ %25, %23 ], [ %28, %26 ], [ %48, %46 ], [ %51, %49 ]
  ret ptr %53
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !294 {
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %12 = load ptr, ptr %4, align 8, !tbaa !124
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !295
  %16 = zext i32 %15 to i64
  br i1 %8, label %17, label %23, !prof !296

17:                                               ; preds = %9
  %18 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i64
  %21 = add nuw nsw i64 %20, %16
  %22 = and i1 %19, %8
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i64 [ %16, %9 ], [ %21, %17 ]
  %25 = phi i1 [ %8, %9 ], [ %22, %17 ]
  br label %26

26:                                               ; preds = %29, %23
  %27 = phi ptr [ %3, %23 ], [ %30, %29 ]
  %28 = load i16, ptr %27, align 2, !tbaa !281
  switch i16 %28, label %29 [
    i16 58, label %31
    i16 0, label %31
  ], !prof !297

29:                                               ; preds = %26
  %30 = getelementptr inbounds i16, ptr %27, i64 1
  br label %26, !llvm.loop !286

31:                                               ; preds = %26, %26
  %32 = ptrtoint ptr %27 to i64
  %33 = ptrtoint ptr %3 to i64
  %34 = sub i64 %32, %33
  %35 = lshr exact i64 %34, 1
  br label %36

36:                                               ; preds = %36, %31
  %37 = phi ptr [ %3, %31 ], [ %40, %36 ]
  %38 = load i16, ptr %37, align 2, !tbaa !281
  %39 = icmp eq i16 %38, 0
  %40 = getelementptr inbounds i16, ptr %37, i64 1
  br i1 %39, label %41, label %36, !prof !298, !llvm.loop !283

41:                                               ; preds = %36
  %42 = trunc i64 %35 to i32
  %43 = ptrtoint ptr %37 to i64
  %44 = sub i64 %43, %33
  %45 = lshr exact i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i64 %24, 0
  br i1 %47, label %48, label %106, !prof !299

48:                                               ; preds = %41
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 9
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %51 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %50, ptr noundef %3, i32 noundef -1)
  %52 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %50, ptr noundef %2, i32 noundef -1)
  %53 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %50, ptr noundef %1, i32 noundef -1)
  %54 = icmp eq i32 %42, %46
  br i1 %54, label %55, label %95, !prof !300

55:                                               ; preds = %48
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  %57 = load ptr, ptr %56, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %57)
  %58 = load ptr, ptr %50, align 8, !tbaa !124
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef nonnull align 8 dereferenceable(36) ptr %60(ptr noundef nonnull align 8 dereferenceable(112) %50, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %62 unwind label %77, !prof !302

62:                                               ; preds = %55
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !303
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %76, label %66, !prof !300

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !304
  %69 = load ptr, ptr %11, align 8, !tbaa !301
  %70 = load ptr, ptr %69, align 8, !tbaa !124
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %68)
          to label %76 unwind label %73

73:                                               ; preds = %66
  %74 = landingpad { ptr, i32 }
          catch ptr null
  %75 = extractvalue { ptr, i32 } %74, 0
  call void @__clang_call_terminate(ptr %75) #22
  unreachable

76:                                               ; preds = %66, %62
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #21
  br label %100

77:                                               ; preds = %55
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !303
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !304
  %85 = load ptr, ptr %11, align 8, !tbaa !301
  %86 = load ptr, ptr %85, align 8, !tbaa !124
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %94 unwind label %89

89:                                               ; preds = %82
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #22
  unreachable

92:                                               ; preds = %230, %94
  %93 = phi { ptr, i32 } [ %78, %94 ], [ %216, %230 ]
  resume { ptr, i32 } %93

94:                                               ; preds = %82, %77
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #21
  br label %92

95:                                               ; preds = %48
  %96 = load ptr, ptr %50, align 8, !tbaa !124
  %97 = getelementptr inbounds ptr, ptr %96, i64 5
  %98 = load ptr, ptr %97, align 8
  %99 = tail call noundef nonnull align 8 dereferenceable(36) ptr %98(ptr noundef nonnull align 8 dereferenceable(112) %50, ptr noundef %3, i32 noundef %42)
  br label %100

100:                                              ; preds = %76, %95
  %101 = phi ptr [ %61, %76 ], [ %99, %95 ]
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %103 = load i64, ptr %102, align 8, !tbaa !136
  %104 = add i64 %103, 1
  store i64 %104, ptr %102, align 8, !tbaa !136
  %105 = call noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40) %49, ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef nonnull align 8 dereferenceable(36) %53, ptr noundef nonnull align 8 dereferenceable(36) %101, ptr noundef nonnull %0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %103)
  br label %242

106:                                              ; preds = %41
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !132
  %110 = icmp ugt i64 %109, %24
  br i1 %110, label %113, label %111, !prof !288

111:                                              ; preds = %106
  %112 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %107, i64 noundef %24, i64 noundef %24)
  br label %185

113:                                              ; preds = %106
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !135
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117, !prof !305

117:                                              ; preds = %113
  %118 = load i64, ptr %115, align 8, !tbaa !293
  %119 = icmp ult i64 %118, %24
  br i1 %119, label %120, label %168, !prof !306

120:                                              ; preds = %117, %113
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15, i32 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !238, !noalias !307
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %132, !prof !310

124:                                              ; preds = %120
  %125 = load ptr, ptr %107, align 8, !tbaa !128, !noalias !307
  %126 = load ptr, ptr %125, align 8, !tbaa !124, !noalias !307
  %127 = getelementptr inbounds ptr, ptr %126, i64 2
  %128 = load ptr, ptr %127, align 8, !noalias !307
  %129 = tail call noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(8) %125, i64 noundef 32), !prof !243, !noalias !307
  store ptr %129, ptr %121, align 8, !tbaa !238, !noalias !307
  %130 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %129, i64 0, i32 2
  store ptr %129, ptr %130, align 8, !tbaa !244, !noalias !307
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %129, i64 0, i32 1
  store ptr %129, ptr %131, align 8, !tbaa !247, !noalias !307
  br label %132

132:                                              ; preds = %124, %120
  %133 = load ptr, ptr %121, align 8, !tbaa !238, !noalias !216
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %143, !prof !311

135:                                              ; preds = %132
  %136 = load ptr, ptr %107, align 8, !tbaa !128, !noalias !312
  %137 = load ptr, ptr %136, align 8, !tbaa !124, !noalias !312
  %138 = getelementptr inbounds ptr, ptr %137, i64 2
  %139 = load ptr, ptr %138, align 8, !noalias !312
  %140 = tail call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %136, i64 noundef 32), !noalias !312
  store ptr %140, ptr %121, align 8, !tbaa !238, !noalias !312
  %141 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %140, i64 0, i32 2
  store ptr %140, ptr %141, align 8, !tbaa !244, !noalias !312
  %142 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %140, i64 0, i32 1
  store ptr %140, ptr %142, align 8, !tbaa !247, !noalias !312
  br label %143

143:                                              ; preds = %135, %132
  %144 = load ptr, ptr %121, align 8, !tbaa !238, !noalias !312
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !244, !noalias !216
  %147 = icmp eq ptr %146, %133
  br i1 %147, label %166, label %148, !prof !315

148:                                              ; preds = %143, %161
  %149 = phi ptr [ %164, %161 ], [ %146, %143 ]
  %150 = phi ptr [ %162, %161 ], [ null, %143 ]
  %151 = load i64, ptr %149, align 8, !tbaa !293
  %152 = icmp eq i64 %151, %24
  br i1 %152, label %166, label %153, !prof !316

153:                                              ; preds = %148
  %154 = icmp ult i64 %151, %24
  br i1 %154, label %161, label %155, !prof !317

155:                                              ; preds = %153
  %156 = icmp eq ptr %150, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %155
  %158 = load i64, ptr %150, align 8, !tbaa !293
  %159 = icmp ult i64 %151, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %157, %155
  br label %161

161:                                              ; preds = %160, %157, %153
  %162 = phi ptr [ %149, %160 ], [ %150, %157 ], [ %150, %153 ]
  %163 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %149, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !244, !noalias !216
  %165 = icmp eq ptr %164, %133
  br i1 %165, label %166, label %148, !prof !318, !llvm.loop !319

166:                                              ; preds = %161, %148, %143
  %167 = phi ptr [ null, %143 ], [ %162, %161 ], [ %149, %148 ]
  store ptr %167, ptr %114, align 8, !tbaa !135
  br label %168

168:                                              ; preds = %117, %166
  %169 = phi ptr [ %167, %166 ], [ %115, %117 ]
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %174, !prof !289

171:                                              ; preds = %168
  %172 = load i64, ptr %108, align 8, !tbaa !132
  %173 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %107, i64 noundef %172, i64 noundef %24)
  br label %185

174:                                              ; preds = %168
  %175 = getelementptr inbounds %"struct.std::pair.35", ptr %169, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !257
  %177 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %176, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !290
  %179 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %176, i64 0, i32 1
  %180 = load i64, ptr %179, align 8, !tbaa !292
  %181 = load i64, ptr %169, align 8, !tbaa !293
  %182 = sub i64 %180, %181
  %183 = getelementptr inbounds ptr, ptr %178, i64 %182
  %184 = sub i64 %181, %24
  store i64 %184, ptr %169, align 8, !tbaa !293
  br label %185

185:                                              ; preds = %111, %171, %174
  %186 = phi ptr [ %112, %111 ], [ %173, %171 ], [ %183, %174 ]
  %187 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 7
  %188 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %189 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %188, ptr noundef %3, i32 noundef -1)
  %190 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %188, ptr noundef %2, i32 noundef -1)
  %191 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %188, ptr noundef %1, i32 noundef -1)
  %192 = icmp eq i32 %42, %46
  br i1 %192, label %193, label %231, !prof !288

193:                                              ; preds = %185
  %194 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  %195 = load ptr, ptr %194, align 8, !tbaa !301
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %195)
  %196 = load ptr, ptr %188, align 8, !tbaa !124
  %197 = getelementptr inbounds ptr, ptr %196, i64 4
  %198 = load ptr, ptr %197, align 8
  %199 = invoke noundef nonnull align 8 dereferenceable(36) ptr %198(ptr noundef nonnull align 8 dereferenceable(112) %188, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %200 unwind label %215, !prof !320

200:                                              ; preds = %193
  %201 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %202 = load i64, ptr %201, align 8, !tbaa !303
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %214, label %204, !prof !288

204:                                              ; preds = %200
  %205 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !304
  %207 = load ptr, ptr %10, align 8, !tbaa !301
  %208 = load ptr, ptr %207, align 8, !tbaa !124
  %209 = getelementptr inbounds ptr, ptr %208, i64 3
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(8) %207, ptr noundef %206)
          to label %214 unwind label %211

211:                                              ; preds = %204
  %212 = landingpad { ptr, i32 }
          catch ptr null
  %213 = extractvalue { ptr, i32 } %212, 0
  call void @__clang_call_terminate(ptr %213) #22
  unreachable

214:                                              ; preds = %204, %200
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #21
  br label %236

215:                                              ; preds = %193
  %216 = landingpad { ptr, i32 }
          cleanup
  %217 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %218 = load i64, ptr %217, align 8, !tbaa !303
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %230, label %220

220:                                              ; preds = %215
  %221 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !304
  %223 = load ptr, ptr %10, align 8, !tbaa !301
  %224 = load ptr, ptr %223, align 8, !tbaa !124
  %225 = getelementptr inbounds ptr, ptr %224, i64 3
  %226 = load ptr, ptr %225, align 8
  invoke void %226(ptr noundef nonnull align 8 dereferenceable(8) %223, ptr noundef %222)
          to label %230 unwind label %227

227:                                              ; preds = %220
  %228 = landingpad { ptr, i32 }
          catch ptr null
  %229 = extractvalue { ptr, i32 } %228, 0
  call void @__clang_call_terminate(ptr %229) #22
  unreachable

230:                                              ; preds = %220, %215
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #21
  br label %92

231:                                              ; preds = %185
  %232 = load ptr, ptr %188, align 8, !tbaa !124
  %233 = getelementptr inbounds ptr, ptr %232, i64 5
  %234 = load ptr, ptr %233, align 8
  %235 = tail call noundef nonnull align 8 dereferenceable(36) ptr %234(ptr noundef nonnull align 8 dereferenceable(112) %188, ptr noundef %3, i32 noundef %42)
  br label %236

236:                                              ; preds = %214, %231
  %237 = phi ptr [ %199, %214 ], [ %235, %231 ]
  %238 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %239 = load i64, ptr %238, align 8, !tbaa !136
  %240 = add i64 %239, 1
  store i64 %240, ptr %238, align 8, !tbaa !136
  %241 = call noundef ptr @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(40) %187, ptr noundef nonnull align 8 dereferenceable(36) %189, ptr noundef nonnull align 8 dereferenceable(36) %190, ptr noundef nonnull align 8 dereferenceable(36) %191, ptr noundef nonnull align 8 dereferenceable(36) %237, ptr noundef nonnull %0, ptr noundef %186, i64 noundef %24, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %239)
  call void @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesERKN11xercesc_2_710AttributesEPPNS_19XalanSourceTreeAttrEPNS_22XalanSourceTreeElementEb(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %186, ptr noundef %241, i1 noundef zeroext %25)
  br label %242

242:                                              ; preds = %236, %100
  %243 = phi ptr [ %105, %100 ], [ %241, %236 ]
  ret ptr %243
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 !prof !321 !PGOFuncName !322 {
  %2 = load ptr, ptr %0, align 8, !tbaa !124
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !323
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %29, !prof !324

7:                                                ; preds = %1
  %8 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE, align 8
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  br label %15

11:                                               ; preds = %15
  %12 = add nuw i32 %17, 1
  %13 = icmp ult i32 %12, %5
  %14 = icmp eq i32 %12, %5
  br i1 %14, label %29, label %15, !prof !325, !llvm.loop !326

15:                                               ; preds = %7, %11
  %16 = phi i1 [ %6, %7 ], [ %13, %11 ]
  %17 = phi i32 [ 0, %7 ], [ %12, %11 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !124
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %17), !prof !327
  %22 = load i64, ptr %9, align 8, !tbaa !265
  %23 = icmp eq i64 %22, 0
  %24 = load ptr, ptr %10, align 8
  %25 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %24, !prof !328
  %26 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %25)
  %27 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %21)
  %28 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %25, i32 noundef %26, ptr noundef %21, i32 noundef %27)
  br i1 %28, label %29, label %11, !prof !328

29:                                               ; preds = %15, %11, %1
  %30 = phi i1 [ %6, %1 ], [ %16, %15 ], [ %13, %11 ]
  ret i1 %30
}

declare noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesERKN11xercesc_2_710AttributesEPPNS_19XalanSourceTreeAttrEPNS_22XalanSourceTreeElementEb(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #10 align 2 !prof !329 {
  br i1 %4, label %6, label %24, !prof !305

6:                                                ; preds = %5
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %9 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE, align 8, !tbaa !266
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(36) %9)
  %11 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !266
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(36) %11)
  %13 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE, align 8, !tbaa !266
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(36) %13)
  %15 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !266
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull align 8 dereferenceable(36) %15)
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %18 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !266
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %17, ptr noundef nonnull align 8 dereferenceable(36) %18)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %21 = load i64, ptr %20, align 8, !tbaa !136
  %22 = add i64 %21, 1
  store i64 %22, ptr %20, align 8, !tbaa !136
  %23 = tail call noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %3, i64 noundef %21)
  store ptr %23, ptr %2, align 8, !tbaa !266
  br label %24

24:                                               ; preds = %6, %5
  %25 = phi i64 [ 1, %6 ], [ 0, %5 ]
  %26 = tail call noundef i64 @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %25, ptr noundef %3, i1 noundef zeroext true)
  %27 = tail call noundef i64 @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %26, ptr noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtRKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #3 align 2 !prof !122 {
  %8 = load ptr, ptr %2, align 8, !tbaa !124
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %12 = zext i32 %11 to i64
  br i1 %6, label %13, label %19

13:                                               ; preds = %7
  %14 = tail call fastcc noundef zeroext i1 @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %15 = xor i1 %14, true
  %16 = and i1 %15, %6
  %17 = zext i1 %15 to i64
  %18 = add nuw nsw i64 %17, %12
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i1 [ %6, %7 ], [ %16, %13 ]
  %21 = phi i64 [ %12, %7 ], [ %18, %13 ]
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 8
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %26 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef %1, i32 noundef -1)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %28 = load i64, ptr %27, align 8, !tbaa !136
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !136
  %30 = tail call noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(36) %26, ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %28)
  br label %41

31:                                               ; preds = %19
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 15
  %33 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %32, i64 noundef %21)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %36 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %35, ptr noundef %1, i32 noundef -1)
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %38 = load i64, ptr %37, align 8, !tbaa !136
  %39 = add i64 %38, 1
  store i64 %39, ptr %37, align 8, !tbaa !136
  %40 = tail call noundef ptr @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(40) %34, ptr noundef nonnull align 8 dereferenceable(36) %36, ptr noundef nonnull %0, ptr noundef %33, i64 noundef %21, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %38)
  tail call void @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesERKN11xercesc_2_710AttributesEPPNS_19XalanSourceTreeAttrEPNS_22XalanSourceTreeElementEb(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %33, ptr noundef %40, i1 noundef zeroext %20)
  br label %41

41:                                               ; preds = %31, %23
  %42 = phi ptr [ %30, %23 ], [ %40, %31 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createCommentNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 !prof !122 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %1, i32 noundef %2)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %11 = load i64, ptr %10, align 8, !tbaa !136
  %12 = add i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !136
  %13 = tail call noundef ptr @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %11)
  ret ptr %13
}

declare noundef ptr @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocator6createERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument31createProcessingInstructionNodeEPKtS2_PNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 !prof !122 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 10
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %1, i32 noundef -1)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %10, ptr noundef %2, i32 noundef -1)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %13 = load i64, ptr %12, align 8, !tbaa !136
  %14 = add i64 %13, 1
  store i64 %14, ptr %12, align 8, !tbaa !136
  %15 = tail call noundef ptr @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocator6createERKNS_14XalanDOMStringES3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %13)
  ret ptr %15
}

declare noundef ptr @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocator6createERKNS_14XalanDOMStringES3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 align 2 !prof !330 {
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr noundef %1, i32 noundef 0, i32 noundef %2)
  br i1 %7, label %8, label %16, !prof !331

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef %1, i32 noundef %2)
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 12
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %13 = load i64, ptr %12, align 8, !tbaa !136
  %14 = add i64 %13, 1
  store i64 %14, ptr %12, align 8, !tbaa !136
  %15 = tail call noundef ptr @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocator6createERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %13)
  br label %33

16:                                               ; preds = %6
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 11
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 17
  %19 = load i8, ptr %18, align 8, !tbaa !192, !range !332, !noundef !216
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21, !prof !333

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %22, ptr noundef %1, i32 noundef %2)
  br label %27

24:                                               ; preds = %16
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 20
  %26 = tail call noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef %1, i32 noundef %2)
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi ptr [ %23, %21 ], [ %26, %24 ]
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %30 = load i64, ptr %29, align 8, !tbaa !136
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !136
  %32 = tail call noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeTextAllocator6createERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %30)
  br label %33

33:                                               ; preds = %27, %8
  %34 = phi ptr [ %15, %8 ], [ %32, %27 ]
  ret ptr %34
}

declare noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocator6createERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeTextAllocator6createERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #10 align 2 !prof !334 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %1, i32 noundef %2)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %11 = load i64, ptr %10, align 8, !tbaa !136
  %12 = add i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !136
  %13 = tail call noundef ptr @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocator6createERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %11)
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument25unparsedEntityDeclarationEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3, ptr nocapture noundef readnone %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #21
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !301
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #21
  %10 = load ptr, ptr %8, align 8, !tbaa !301
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef -1)
          to label %11 unwind label %51

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19
  %13 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %14 unwind label %53

14:                                               ; preds = %11
  %15 = icmp eq ptr %6, %13
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %18 unwind label %53

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !284
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !284
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !303
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !304
  %29 = load ptr, ptr %7, align 8, !tbaa !301
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %28)
          to label %36 unwind label %33

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #22
  unreachable

36:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #21
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !303
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !304
  %43 = load ptr, ptr %6, align 8, !tbaa !301
  %44 = load ptr, ptr %43, align 8, !tbaa !124
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %50 unwind label %47

47:                                               ; preds = %40
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #22
  unreachable

50:                                               ; preds = %36, %40
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  ret void

51:                                               ; preds = %5
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %68

53:                                               ; preds = %16, %11
  %54 = landingpad { ptr, i32 }
          cleanup
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !303
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !304
  %61 = load ptr, ptr %7, align 8, !tbaa !301
  %62 = load ptr, ptr %61, align 8, !tbaa !124
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  invoke void %64(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef %60)
          to label %68 unwind label %65

65:                                               ; preds = %58
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  call void @__clang_call_terminate(ptr %67) #22
  unreachable

68:                                               ; preds = %58, %53, %51
  %69 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ], [ %54, %58 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #21
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !303
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !304
  %76 = load ptr, ptr %6, align 8, !tbaa !301
  %77 = load ptr, ptr %76, align 8, !tbaa !124
  %78 = getelementptr inbounds ptr, ptr %77, i64 3
  %79 = load ptr, ptr %78, align 8
  invoke void %79(ptr noundef nonnull align 8 dereferenceable(8) %76, ptr noundef %75)
          to label %83 unwind label %80

80:                                               ; preds = %73
  %81 = landingpad { ptr, i32 }
          catch ptr null
  %82 = extractvalue { ptr, i32 } %81, 0
  call void @__clang_call_terminate(ptr %82) #22
  unreachable

83:                                               ; preds = %68, %73
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #21
  resume { ptr, i32 } %69
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.40", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.40", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.40") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !208, !noalias !335
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !204, !noalias !335
  %11 = load ptr, ptr %10, align 8, !tbaa !124, !noalias !335
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !335
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !335
  store ptr %14, ptr %5, align 8, !tbaa !208, !noalias !335
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !212, !noalias !335
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !215, !noalias !335
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !208, !noalias !335
  %19 = load ptr, ptr %3, align 8, !tbaa !340
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PS5_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.40") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !340
  store ptr %22, ptr %3, align 8, !tbaa !340
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !340
  %25 = load ptr, ptr %24, align 8, !tbaa !220
  %26 = getelementptr inbounds %"struct.std::pair.32", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeDocument20getUnparsedEntityURIERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 !prof !122 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.40", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21, !noalias !342
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.40") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(36) %1), !noalias !342
  %5 = load ptr, ptr %3, align 8, !tbaa !340, !noalias !342
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21, !noalias !342
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 6, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !208, !noalias !345
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 19, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !204, !noalias !345
  %12 = load ptr, ptr %11, align 8, !tbaa !124, !noalias !345
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !345
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !345
  store ptr %15, ptr %6, align 8, !tbaa !208, !noalias !345
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !212, !noalias !345
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !215, !noalias !345
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !208, !noalias !345
  %20 = icmp eq ptr %5, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8, !tbaa !220
  %23 = getelementptr inbounds %"struct.std::pair.32", ptr %22, i64 0, i32 1
  br label %24

24:                                               ; preds = %18, %21
  %25 = phi ptr [ %23, %21 ], [ @_ZN11xalanc_1_10L13s_emptyStringE, %18 ]
  ret ptr %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument15createAttributeEPKtS2_PNS_22XalanSourceTreeElementERKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 align 2 !prof !122 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21
  %7 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument21getNamespaceForPrefixEPKtRKNS_14PrefixResolverERNS_14XalanDOMStringEbPS2_(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(36) %6, i1 noundef zeroext false, ptr noundef null)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !284
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %15, ptr noundef %1, i32 noundef -1)
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %17, ptr noundef %2, i32 noundef -1)
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %20 = load i64, ptr %19, align 8, !tbaa !136
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !136
  %22 = tail call noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocator6createERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, i64 noundef %20)
  br label %41

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %26 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef %1, i32 noundef -1)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 21, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !284
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i16, ptr %1, i64 %29
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef nonnull %31, i32 noundef -1)
  %33 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef nonnull align 8 dereferenceable(36) %7)
  %34 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef nonnull align 8 dereferenceable(36) %6)
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %36 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %35, ptr noundef %2, i32 noundef -1)
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %38 = load i64, ptr %37, align 8, !tbaa !136
  %39 = add i64 %38, 1
  store i64 %39, ptr %37, align 8, !tbaa !136
  %40 = tail call noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(36) %26, ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull align 8 dereferenceable(36) %33, ptr noundef nonnull align 8 dereferenceable(36) %34, ptr noundef nonnull align 8 dereferenceable(36) %36, ptr noundef %3, i64 noundef %38)
  br label %41

41:                                               ; preds = %23, %13
  %42 = phi ptr [ %22, %13 ], [ %40, %23 ]
  ret ptr %42
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr nocapture noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #10 align 2 !prof !352 {
  %7 = alloca %"struct.std::pair.28", align 8
  %8 = load ptr, ptr %2, align 8, !tbaa !124
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %2), !prof !353
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13, !prof !354

13:                                               ; preds = %6
  %14 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %14, i64 0, i32 1
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %14, i64 0, i32 3
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %14, i64 0, i32 1
  %18 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %18, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %18, i64 0, i32 3
  br label %23

21:                                               ; preds = %149, %6
  %22 = phi i64 [ %3, %6 ], [ %150, %149 ]
  ret i64 %22

23:                                               ; preds = %13, %149
  %24 = phi i64 [ %3, %13 ], [ %150, %149 ]
  %25 = phi i32 [ 0, %13 ], [ %151, %149 ]
  %26 = load ptr, ptr %2, align 8, !tbaa !124
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %25), !prof !355
  br label %30

30:                                               ; preds = %30, %23
  %31 = phi ptr [ %29, %23 ], [ %34, %30 ]
  %32 = load i16, ptr %31, align 2, !tbaa !281
  %33 = icmp eq i16 %32, 0
  %34 = getelementptr inbounds i16, ptr %31, i64 1
  br i1 %33, label %35, label %30, !prof !356, !llvm.loop !283

35:                                               ; preds = %30
  %36 = ptrtoint ptr %31 to i64
  %37 = ptrtoint ptr %29 to i64
  %38 = sub i64 %36, %37
  %39 = lshr exact i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = load i64, ptr %15, align 8, !tbaa !265
  %42 = icmp eq i64 %41, 0
  %43 = load ptr, ptr %16, align 8
  %44 = select i1 %42, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %43, !prof !357
  %45 = load i32, ptr %17, align 8, !tbaa !284
  %46 = call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %29, i32 noundef %40, ptr noundef %44, i32 noundef %45)
  br i1 %46, label %55, label %47, !prof !358

47:                                               ; preds = %35
  %48 = load i64, ptr %19, align 8, !tbaa !265
  %49 = icmp eq i64 %48, 0
  %50 = load ptr, ptr %20, align 8
  %51 = select i1 %49, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50, !prof !359
  %52 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %29)
  %53 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %51)
  %54 = call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %29, i32 noundef %52, ptr noundef %51, i32 noundef %53)
  br label %55

55:                                               ; preds = %47, %35
  %56 = phi i1 [ true, %35 ], [ %54, %47 ]
  %57 = xor i1 %56, %5
  br i1 %57, label %149, label %58, !prof !360

58:                                               ; preds = %55
  %59 = load ptr, ptr %2, align 8, !tbaa !124
  %60 = getelementptr inbounds ptr, ptr %59, i64 7
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %25), !prof !361
  %63 = load ptr, ptr %2, align 8, !tbaa !124
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  %66 = call noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %25), !prof !362
  br label %67

67:                                               ; preds = %67, %58
  %68 = phi ptr [ %66, %58 ], [ %71, %67 ]
  %69 = load i16, ptr %68, align 2, !tbaa !281
  %70 = icmp eq i16 %69, 0
  %71 = getelementptr inbounds i16, ptr %68, i64 1
  br i1 %70, label %72, label %67, !prof !363, !llvm.loop !283

72:                                               ; preds = %67
  %73 = ptrtoint ptr %68 to i64
  %74 = ptrtoint ptr %66 to i64
  %75 = sub i64 %73, %74
  %76 = and i64 %75, 8589934590
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %88, !prof !364

78:                                               ; preds = %72
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 3
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %83 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %80, ptr noundef %29, i32 noundef -1)
  %84 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %81, ptr noundef %62, i32 noundef -1)
  %85 = load i64, ptr %82, align 8, !tbaa !136
  %86 = add i64 %85, 1
  store i64 %86, ptr %82, align 8, !tbaa !136
  %87 = call noundef ptr @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocator6createERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %79, ptr noundef nonnull align 8 dereferenceable(36) %83, ptr noundef nonnull align 8 dereferenceable(36) %84, ptr noundef %4, i64 noundef %85)
  br label %115

88:                                               ; preds = %72
  %89 = load ptr, ptr %2, align 8, !tbaa !124
  %90 = getelementptr inbounds ptr, ptr %89, i64 4
  %91 = load ptr, ptr %90, align 8
  %92 = call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %25), !prof !365
  br label %93

93:                                               ; preds = %96, %88
  %94 = phi ptr [ %29, %88 ], [ %97, %96 ]
  %95 = load i16, ptr %94, align 2, !tbaa !281
  switch i16 %95, label %96 [
    i16 58, label %98
    i16 0, label %98
  ], !prof !366

96:                                               ; preds = %93
  %97 = getelementptr inbounds i16, ptr %94, i64 1
  br label %93, !llvm.loop !286

98:                                               ; preds = %93, %93
  %99 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 4
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 13
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 14
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 16
  %103 = ptrtoint ptr %94 to i64
  %104 = sub i64 %103, %37
  %105 = lshr exact i64 %104, 1
  %106 = trunc i64 %105 to i32
  %107 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %100, ptr noundef %29, i32 noundef -1)
  %108 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %100, ptr noundef %92, i32 noundef -1)
  %109 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %100, ptr noundef %66, i32 noundef -1)
  %110 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %100, ptr noundef %29, i32 noundef %106)
  %111 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %101, ptr noundef %62, i32 noundef -1)
  %112 = load i64, ptr %102, align 8, !tbaa !136
  %113 = add i64 %112, 1
  store i64 %113, ptr %102, align 8, !tbaa !136
  %114 = call noundef ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm(ptr noundef nonnull align 8 dereferenceable(40) %99, ptr noundef nonnull align 8 dereferenceable(36) %107, ptr noundef nonnull align 8 dereferenceable(36) %108, ptr noundef nonnull align 8 dereferenceable(36) %109, ptr noundef nonnull align 8 dereferenceable(36) %110, ptr noundef nonnull align 8 dereferenceable(36) %111, ptr noundef %4, i64 noundef %112)
  br label %115

115:                                              ; preds = %98, %78
  %116 = phi ptr [ %114, %98 ], [ %87, %78 ]
  %117 = getelementptr inbounds ptr, ptr %1, i64 %24
  store ptr %116, ptr %117, align 8, !tbaa !266
  %118 = load ptr, ptr %2, align 8, !tbaa !124
  %119 = getelementptr inbounds ptr, ptr %118, i64 6
  %120 = load ptr, ptr %119, align 8
  %121 = call noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %25), !prof !367
  %122 = load i16, ptr %121, align 2, !tbaa !281
  %123 = icmp eq i16 %122, 73
  br i1 %123, label %124, label %147, !prof !368

124:                                              ; preds = %115
  %125 = getelementptr inbounds i16, ptr %121, i64 1
  %126 = load i16, ptr %125, align 2, !tbaa !281
  %127 = icmp eq i16 %126, 68
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = getelementptr inbounds i16, ptr %121, i64 2
  %130 = load i16, ptr %129, align 2, !tbaa !281
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %128
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 18
  %134 = getelementptr inbounds %"struct.std::pair.28", ptr %7, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #21
  %135 = getelementptr inbounds ptr, ptr %1, i64 %24
  %136 = load ptr, ptr %135, align 8, !tbaa !266
  %137 = load ptr, ptr %136, align 8, !tbaa !124
  %138 = getelementptr inbounds ptr, ptr %137, i64 30
  %139 = load ptr, ptr %138, align 8
  %140 = call noundef nonnull align 8 dereferenceable(36) ptr %139(ptr noundef nonnull align 8 dereferenceable(40) %136)
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %140, i64 0, i32 1
  %142 = load i64, ptr %141, align 8, !tbaa !265
  %143 = icmp eq i64 %142, 0
  %144 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %140, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8
  %146 = select i1 %143, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %145
  store ptr %146, ptr %7, align 8, !tbaa !369
  store ptr %4, ptr %134, align 8, !tbaa !279
  call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE6insertERKS2_RKS4_(ptr noundef nonnull align 8 dereferenceable(136) %133, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %134)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #21
  br label %147

147:                                              ; preds = %132, %128, %124, %115
  %148 = add i64 %24, 1
  br label %149

149:                                              ; preds = %55, %147
  %150 = phi i64 [ %148, %147 ], [ %24, %55 ]
  %151 = add nuw i32 %25, 1
  %152 = icmp eq i32 %151, %11
  br i1 %152, label %21, label %23, !prof !370, !llvm.loop !371
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeCommentE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_23XalanSourceTreeDocumentERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

declare void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_23XalanSourceTreeDocumentERPNS_9XalanNodeES4_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeElementE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !321 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !264
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !372

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 16) #21
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 3)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #24
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !264
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_23XalanSourceTreeDocumentERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_36XalanSourceTreeProcessingInstructionE(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDocument", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_23XalanSourceTreeDocumentERPNS_9XalanNodeES4_(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !321 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull @_ZN11xalanc_1_10L10s_documentE, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef -1)
  %3 = load ptr, ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8, !tbaa !301
  %4 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 1), align 8, !tbaa !265
  %5 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 2), align 8, !tbaa !303
  %6 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 3), align 8, !tbaa !304
  %7 = load ptr, ptr %2, align 8, !tbaa !301
  store ptr %7, ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8, !tbaa !301
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !265
  store i64 %9, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 1), align 8, !tbaa !265
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !303
  store i64 %11, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 2), align 8, !tbaa !303
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !304
  store ptr %13, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 3), align 8, !tbaa !304
  store ptr %3, ptr %2, align 8, !tbaa !301
  store i64 %4, ptr %8, align 8, !tbaa !265
  store i64 %5, ptr %10, align 8, !tbaa !303
  store ptr %6, ptr %12, align 8, !tbaa !304
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %15 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 1), align 8, !tbaa !373
  %16 = load i32, ptr %14, align 8, !tbaa !373
  store i32 %16, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 1), align 8, !tbaa !373
  store i32 %15, ptr %14, align 8, !tbaa !373
  %17 = icmp eq i64 %5, 0
  br i1 %17, label %25, label %18, !prof !372

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 8, !tbaa !124
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %6)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #22
  unreachable

25:                                               ; preds = %1, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeDocument9terminateEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !321 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #21
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %3 = load ptr, ptr %1, align 8, !tbaa !301
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !265
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !303
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !304
  %10 = load ptr, ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8, !tbaa !301
  store ptr %10, ptr %1, align 8, !tbaa !301
  %11 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 1), align 8, !tbaa !265
  store i64 %11, ptr %4, align 8, !tbaa !265
  %12 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 2), align 8, !tbaa !303
  store i64 %12, ptr %6, align 8, !tbaa !303
  %13 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 3), align 8, !tbaa !304
  store ptr %13, ptr %8, align 8, !tbaa !304
  store ptr %3, ptr @_ZN11xalanc_1_10L18s_staticNameStringE, align 8, !tbaa !301
  store i64 %5, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 1), align 8, !tbaa !265
  store i64 %7, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 2), align 8, !tbaa !303
  store ptr %9, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 0, i32 3), align 8, !tbaa !304
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !373
  %16 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 1), align 8, !tbaa !373
  store i32 %16, ptr %14, align 8, !tbaa !373
  store i32 %15, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_staticNameStringE, i64 0, i32 1), align 8, !tbaa !373
  %17 = icmp eq i64 %12, 0
  br i1 %17, label %25, label %18, !prof !374

18:                                               ; preds = %0
  %19 = load ptr, ptr %10, align 8, !tbaa !124
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %13)
          to label %25 unwind label %22, !prof !375

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #22
  unreachable

25:                                               ; preds = %0, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !376 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !303
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !377

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !304
  %8 = load ptr, ptr %0, align 8, !tbaa !301
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !378

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat !prof !122 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

declare noundef ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !379 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !380

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !303
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !265
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !381

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !301
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !301
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !265
  %16 = load i64, ptr %6, align 8, !tbaa !303
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !304
  %19 = load ptr, ptr %3, align 8, !tbaa !301
  store ptr %19, ptr %0, align 8, !tbaa !301
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !265
  store i64 %21, ptr %14, align 8, !tbaa !265
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !303
  store i64 %23, ptr %6, align 8, !tbaa !303
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !304
  store ptr %25, ptr %17, align 8, !tbaa !304
  store ptr %13, ptr %3, align 8, !tbaa !301
  store i64 %15, ptr %20, align 8, !tbaa !265
  store i64 %16, ptr %22, align 8, !tbaa !303
  store ptr %18, ptr %24, align 8, !tbaa !304
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !382

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !124
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !383

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !304
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !265
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !384

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !385

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !304
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !265
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !265
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !304
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !386

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !304
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !387
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !388 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !301
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !265
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !389

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !301
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !265
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !303
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !124
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !390
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !304
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !304
  %24 = load i64, ptr %9, align 8, !tbaa !265
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !391

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !301
  %28 = load i64, ptr %6, align 8, !tbaa !265
  %29 = load i64, ptr %7, align 8, !tbaa !303
  %30 = load ptr, ptr %8, align 8, !tbaa !304
  %31 = load ptr, ptr %5, align 8, !tbaa !301
  store ptr %31, ptr %0, align 8, !tbaa !301
  %32 = load i64, ptr %14, align 8, !tbaa !265
  store i64 %32, ptr %6, align 8, !tbaa !265
  %33 = load i64, ptr %15, align 8, !tbaa !303
  store i64 %33, ptr %7, align 8, !tbaa !303
  %34 = load ptr, ptr %21, align 8, !tbaa !304
  store ptr %34, ptr %8, align 8, !tbaa !304
  store ptr %27, ptr %5, align 8, !tbaa !301
  store i64 %28, ptr %14, align 8, !tbaa !265
  store i64 %29, ptr %15, align 8, !tbaa !303
  store ptr %30, ptr %21, align 8, !tbaa !304
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !391

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !124
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !303
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !304
  %50 = load ptr, ptr %5, align 8, !tbaa !301
  %51 = load ptr, ptr %50, align 8, !tbaa !124
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !392

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !124
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !393
  store ptr %65, ptr %8, align 8, !tbaa !304
  store i64 %3, ptr %7, align 8, !tbaa !303
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !394 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !395

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !265
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !304
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !303
  br i1 %18, label %21, label %39, !prof !396

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !397

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !398

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !304
  %28 = load i64, ptr %12, align 8, !tbaa !265
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !281
  store i16 %34, ptr %32, align 2, !tbaa !281
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !399, !llvm.loop !400

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !401

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !301
  store ptr %42, ptr %5, align 8, !tbaa !301
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !265
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !303
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !124
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !402
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !304
  %51 = load i64, ptr %43, align 8, !tbaa !265
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !304
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !403

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !304
  %56 = load i64, ptr %43, align 8, !tbaa !265
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !403

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !304
  %60 = load i64, ptr %43, align 8, !tbaa !265
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !304
  %63 = load i64, ptr %12, align 8, !tbaa !265
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !403

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !301
  %67 = load i64, ptr %12, align 8, !tbaa !265
  %68 = load i64, ptr %19, align 8, !tbaa !303
  %69 = load ptr, ptr %15, align 8, !tbaa !304
  %70 = load ptr, ptr %5, align 8, !tbaa !301
  store ptr %70, ptr %0, align 8, !tbaa !301
  %71 = load i64, ptr %43, align 8, !tbaa !265
  store i64 %71, ptr %12, align 8, !tbaa !265
  %72 = load i64, ptr %44, align 8, !tbaa !303
  store i64 %72, ptr %19, align 8, !tbaa !303
  %73 = load ptr, ptr %50, align 8, !tbaa !304
  store ptr %73, ptr %15, align 8, !tbaa !304
  store ptr %66, ptr %5, align 8, !tbaa !301
  store i64 %67, ptr %43, align 8, !tbaa !265
  store i64 %68, ptr %44, align 8, !tbaa !303
  store ptr %69, ptr %50, align 8, !tbaa !304
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !404

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !124
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !405

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !303
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !304
  %89 = load ptr, ptr %5, align 8, !tbaa !301
  %90 = load ptr, ptr %89, align 8, !tbaa !124
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !406

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !407

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !407

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !408, !llvm.loop !409

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !410, !llvm.loop !411

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !412
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !413

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !265
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !414 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !265
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !303
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !415

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !304
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !281
  store i16 %13, ptr %12, align 2, !tbaa !281
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !265
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !301
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !301
  %24 = load i64, ptr %4, align 8, !tbaa !265
  %25 = load i64, ptr %6, align 8, !tbaa !303
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !304
  %28 = load ptr, ptr %3, align 8, !tbaa !301
  store ptr %28, ptr %0, align 8, !tbaa !301
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !265
  store i64 %30, ptr %4, align 8, !tbaa !265
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !303
  store i64 %32, ptr %6, align 8, !tbaa !303
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !304
  store ptr %34, ptr %26, align 8, !tbaa !304
  store ptr %23, ptr %3, align 8, !tbaa !301
  store i64 %24, ptr %29, align 8, !tbaa !265
  store i64 %25, ptr %31, align 8, !tbaa !303
  store ptr %27, ptr %33, align 8, !tbaa !304
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !124
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !303
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !304
  %52 = load ptr, ptr %3, align 8, !tbaa !301
  %53 = load ptr, ptr %52, align 8, !tbaa !124
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !416 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !301
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !265
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !389

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !301
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !265
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !303
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !124
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !417
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !304
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !304
  %20 = load i64, ptr %5, align 8, !tbaa !265
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !391

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !301
  %24 = load i64, ptr %10, align 8, !tbaa !265
  %25 = load i64, ptr %11, align 8, !tbaa !303
  %26 = load ptr, ptr %17, align 8, !tbaa !304
  store ptr %4, ptr %3, align 8, !tbaa !301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !303
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !304
  %33 = load ptr, ptr %3, align 8, !tbaa !301
  %34 = load ptr, ptr %33, align 8, !tbaa !124
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #22
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !392

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !124
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !418
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !301
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !303
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !304
  store ptr %53, ptr %0, align 8, !tbaa !301
  store i64 %52, ptr %5, align 8, !tbaa !265
  store i64 %51, ptr %55, align 8, !tbaa !303
  store ptr %50, ptr %57, align 8, !tbaa !304
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !419

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !124
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !420

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #22
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !421 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.21", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !225
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !422

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !229, !noalias !423
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !225, !noalias !426
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !197, !noalias !426
  %14 = load ptr, ptr %13, align 8, !tbaa !124, !noalias !426
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !426
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !225, !noalias !426
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !229, !noalias !426
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !232, !noalias !426
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !225, !noalias !426
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !229, !noalias !429
  %27 = load ptr, ptr %0, align 8, !tbaa !197
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !432

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.21", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !433
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !229
  %40 = load ptr, ptr %0, align 8, !tbaa !197
  %41 = load ptr, ptr %40, align 8, !tbaa !124
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !225
  %46 = load ptr, ptr %0, align 8, !tbaa !197
  %47 = load ptr, ptr %46, align 8, !tbaa !124
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55

50:                                               ; preds = %44, %1
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

53:                                               ; preds = %24, %12
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

57:                                               ; preds = %53, %55, %51
  %58 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #22
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !421 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.26", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !422

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !212, !noalias !434
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !208, !noalias !437
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !204, !noalias !437
  %14 = load ptr, ptr %13, align 8, !tbaa !124, !noalias !437
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !437
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !208, !noalias !437
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !212, !noalias !437
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !215, !noalias !437
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !208, !noalias !437
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !212, !noalias !440
  %27 = load ptr, ptr %0, align 8, !tbaa !204
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !443

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.26", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !444
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !212
  %40 = load ptr, ptr %0, align 8, !tbaa !204
  %41 = load ptr, ptr %40, align 8, !tbaa !124
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !208
  %46 = load ptr, ptr %0, align 8, !tbaa !204
  %47 = load ptr, ptr %46, align 8, !tbaa !124
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55

50:                                               ; preds = %44, %1
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

53:                                               ; preds = %24, %12
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

57:                                               ; preds = %53, %55, %51
  %58 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !445 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !446
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !258

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !290
  %8 = load ptr, ptr %0, align 8, !tbaa !447
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !260

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.20", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !248

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !244, !noalias !448
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !238, !noalias !451
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !255

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !128, !noalias !451
  %14 = load ptr, ptr %13, align 8, !tbaa !124, !noalias !451
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !451
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !238, !noalias !451
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !244, !noalias !451
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !247, !noalias !451
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !238, !noalias !451
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !256

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !244, !noalias !454
  %27 = load ptr, ptr %0, align 8, !tbaa !128
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !prof !260, !llvm.loop !457

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.20", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !458
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !127

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !244
  %40 = load ptr, ptr %0, align 8, !tbaa !128
  %41 = load ptr, ptr %40, align 8, !tbaa !124
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !238
  %46 = load ptr, ptr %0, align 8, !tbaa !128
  %47 = load ptr, ptr %46, align 8, !tbaa !124
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !459

50:                                               ; preds = %44, %1
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

53:                                               ; preds = %24, %12
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

57:                                               ; preds = %53, %55, %51
  %58 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 !prof !123 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.38", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !196
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !372

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %9 = load ptr, ptr %7, align 8, !tbaa !225, !noalias !463
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !197, !noalias !463
  %14 = load ptr, ptr %13, align 8, !tbaa !124, !noalias !463
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !463
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !463
  store ptr %17, ptr %7, align 8, !tbaa !225, !noalias !463
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !229, !noalias !463
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !232, !noalias !463
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !225, !noalias !463
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !229, !noalias !463
  store ptr %23, ptr %2, align 8, !tbaa !270, !alias.scope !460
  call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS2_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %24 = load i64, ptr %3, align 8, !tbaa !196
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !372, !llvm.loop !466

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !467
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !127

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !468
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !224
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #21
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !469

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !468
  %18 = load ptr, ptr %0, align 8, !tbaa !198
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS2_S4_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS7_5EntryEEENS_9XalanListISG_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !225, !noalias !470
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !197, !noalias !470
  %9 = load ptr, ptr %8, align 8, !tbaa !124, !noalias !470
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !470
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !470
  store ptr %12, ptr %3, align 8, !tbaa !225, !noalias !470
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !229, !noalias !470
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !232, !noalias !470
  br label %15

15:                                               ; preds = %2, %6
  %16 = load ptr, ptr %3, align 8, !tbaa !225, !noalias !470
  %17 = load ptr, ptr %1, align 8, !tbaa !270
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !229
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !232
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %21, ptr %24, align 8, !tbaa !229
  %25 = load ptr, ptr %20, align 8, !tbaa !229
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %25, i64 0, i32 1
  store ptr %23, ptr %26, align 8, !tbaa !232
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %16, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !232
  store ptr %28, ptr %22, align 8, !tbaa !232
  store ptr %16, ptr %20, align 8, !tbaa !229
  %29 = load ptr, ptr %27, align 8, !tbaa !232
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %17, ptr %30, align 8, !tbaa !229
  store ptr %17, ptr %27, align 8, !tbaa !232
  br label %31

31:                                               ; preds = %15, %19
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry", ptr %17, i64 0, i32 1
  store i8 1, ptr %32, align 8, !tbaa !473
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %34 = load i64, ptr %33, align 8, !tbaa !196
  %35 = add i64 %34, -1
  store i64 %35, ptr %33, align 8, !tbaa !196
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !474
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !476
  %8 = load ptr, ptr %0, align 8, !tbaa !477
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 !prof !123 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.40", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !203
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6, !prof !372

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 6, i32 1
  br label %8

8:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %9 = load ptr, ptr %7, align 8, !tbaa !208, !noalias !481
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !204, !noalias !481
  %14 = load ptr, ptr %13, align 8, !tbaa !124, !noalias !481
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !481
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !481
  store ptr %17, ptr %7, align 8, !tbaa !208, !noalias !481
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !212, !noalias !481
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !215, !noalias !481
  br label %20

20:                                               ; preds = %8, %11
  %21 = load ptr, ptr %7, align 8, !tbaa !208, !noalias !481
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !212, !noalias !481
  store ptr %23, ptr %2, align 8, !tbaa !340, !alias.scope !478
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S1_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %24 = load i64, ptr %3, align 8, !tbaa !203
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %8, !prof !372, !llvm.loop !484

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !123 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !485
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !127

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !486
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !207
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #21
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !487

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !486
  %18 = load ptr, ptr %0, align 8, !tbaa !205
  %19 = load ptr, ptr %18, align 8, !tbaa !124
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S1_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %3 = load ptr, ptr %1, align 8, !tbaa !340
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  %5 = getelementptr inbounds %"struct.std::pair.32", ptr %4, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #21
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !208, !noalias !488
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !204, !noalias !488
  %12 = load ptr, ptr %11, align 8, !tbaa !124, !noalias !488
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !488
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !488
  store ptr %15, ptr %6, align 8, !tbaa !208, !noalias !488
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !212, !noalias !488
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !215, !noalias !488
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !208, !noalias !488
  %20 = load ptr, ptr %1, align 8, !tbaa !340
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !212
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !215
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %26, i64 0, i32 2
  store ptr %24, ptr %27, align 8, !tbaa !212
  %28 = load ptr, ptr %23, align 8, !tbaa !212
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %28, i64 0, i32 1
  store ptr %26, ptr %29, align 8, !tbaa !215
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %19, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !215
  store ptr %31, ptr %25, align 8, !tbaa !215
  store ptr %19, ptr %23, align 8, !tbaa !212
  %32 = load ptr, ptr %30, align 8, !tbaa !215
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %32, i64 0, i32 2
  store ptr %20, ptr %33, align 8, !tbaa !212
  store ptr %20, ptr %30, align 8, !tbaa !215
  br label %34

34:                                               ; preds = %18, %22
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry", ptr %20, i64 0, i32 1
  store i8 1, ptr %35, align 8, !tbaa !491
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 5
  %37 = load i64, ptr %36, align 8, !tbaa !203
  %38 = add i64 %37, -1
  store i64 %38, ptr %36, align 8, !tbaa !203
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !492
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !494
  %8 = load ptr, ptr %0, align 8, !tbaa !495
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE4findERKS2_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !196
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %76, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !224
  %10 = load ptr, ptr %2, align 8, !tbaa !266
  %11 = load i16, ptr %10, align 2, !tbaa !281
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %7, %13
  %14 = phi i16 [ %21, %13 ], [ %11, %7 ]
  %15 = phi i64 [ %19, %13 ], [ 0, %7 ]
  %16 = phi ptr [ %20, %13 ], [ %10, %7 ]
  %17 = mul i64 %15, 5
  %18 = zext i16 %14 to i64
  %19 = add i64 %17, %18
  %20 = getelementptr inbounds i16, ptr %16, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !281
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !496

23:                                               ; preds = %13
  %24 = add i64 %19, 1
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi i64 [ 1, %7 ], [ %24, %23 ]
  %27 = urem i64 %26, %9
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !468
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %29, i64 %27, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !476
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %29, i64 %27, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !497
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 %33
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %76, label %36

36:                                               ; preds = %25, %73
  %37 = phi i1 [ %75, %73 ], [ %35, %25 ]
  %38 = phi ptr [ %74, %73 ], [ %31, %25 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !270
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry", ptr %39, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !473, !range !332, !noundef !216
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %36
  %44 = load ptr, ptr %39, align 8, !tbaa !236
  %45 = load ptr, ptr %44, align 8, !tbaa !369
  %46 = load i16, ptr %10, align 2, !tbaa !281
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %43
  %49 = load i16, ptr %45, align 2, !tbaa !281
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %65, label %54

51:                                               ; preds = %60
  %52 = load i16, ptr %62, align 2, !tbaa !281
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %54, !llvm.loop !498

54:                                               ; preds = %48, %51
  %55 = phi i16 [ %52, %51 ], [ %49, %48 ]
  %56 = phi ptr [ %61, %51 ], [ %10, %48 ]
  %57 = phi ptr [ %62, %51 ], [ %45, %48 ]
  %58 = phi i16 [ %63, %51 ], [ %46, %48 ]
  %59 = icmp eq i16 %58, %55
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = getelementptr inbounds i16, ptr %56, i64 1
  %62 = getelementptr inbounds i16, ptr %57, i64 1
  %63 = load i16, ptr %61, align 2, !tbaa !281
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %68, label %51, !llvm.loop !498

65:                                               ; preds = %51, %48
  %66 = phi i1 [ %47, %48 ], [ %64, %51 ]
  %67 = phi ptr [ %45, %48 ], [ %62, %51 ]
  br i1 %66, label %68, label %73

68:                                               ; preds = %60, %43, %65
  %69 = phi ptr [ %67, %65 ], [ %45, %43 ], [ %62, %60 ]
  %70 = load i16, ptr %69, align 2, !tbaa !281
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store ptr %39, ptr %0, align 8, !tbaa !270
  br i1 %37, label %76, label %91

73:                                               ; preds = %54, %65, %68, %36
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %38, i64 1
  %75 = icmp eq ptr %74, %34
  br i1 %75, label %76, label %36, !llvm.loop !499

76:                                               ; preds = %73, %25, %72, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !225, !noalias !503
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !197, !noalias !503
  %83 = load ptr, ptr %82, align 8, !tbaa !124, !noalias !503
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8, !noalias !503
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %82, i64 noundef 32), !noalias !503
  store ptr %86, ptr %77, align 8, !tbaa !225, !noalias !503
  %87 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %86, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !229, !noalias !503
  %88 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %86, i64 0, i32 1
  store ptr %86, ptr %88, align 8, !tbaa !232, !noalias !503
  br label %89

89:                                               ; preds = %76, %80
  %90 = load ptr, ptr %77, align 8, !tbaa !225, !noalias !503
  store ptr %90, ptr %0, align 8, !tbaa !270, !alias.scope !500
  br label %91

91:                                               ; preds = %72, %89
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !445 {
  %4 = alloca %"struct.std::pair.35", align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %6 = load ptr, ptr %0, align 8, !tbaa !128
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !506
  store ptr %6, ptr %10, align 8, !tbaa !447
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %10, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i64 0, ptr %4, align 8, !tbaa !293
  %12 = getelementptr inbounds %"struct.std::pair.35", ptr %4, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !257
  call void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE9push_backERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanList.20", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !238, !noalias !507
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24, !prof !258

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8, !tbaa !128, !noalias !507
  %18 = load ptr, ptr %17, align 8, !tbaa !124, !noalias !507
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8, !noalias !507
  %21 = call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef 32), !noalias !507
  store ptr %21, ptr %13, align 8, !tbaa !238, !noalias !507
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %21, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !244, !noalias !507
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %21, i64 0, i32 1
  store ptr %21, ptr %23, align 8, !tbaa !247, !noalias !507
  br label %24

24:                                               ; preds = %3, %16
  %25 = load ptr, ptr %13, align 8, !tbaa !238, !noalias !507
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !247, !noalias !510
  %28 = getelementptr inbounds %"struct.std::pair.35", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !257
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !266
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  %30 = sub i64 %1, %2
  store i64 %30, ptr %27, align 8, !tbaa !293
  %31 = icmp eq i64 %1, %2
  br i1 %31, label %34, label %32, !prof !258

32:                                               ; preds = %24
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator", ptr %0, i64 0, i32 2
  store ptr %27, ptr %33, align 8, !tbaa !135
  br label %34

34:                                               ; preds = %32, %24
  %35 = load ptr, ptr %28, align 8, !tbaa !257
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !290
  ret ptr %37
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE9findEntryEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !305

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8, !tbaa !293
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %57, !prof !306

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanList.20", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !238, !noalias !513
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21, !prof !310

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !128, !noalias !513
  %15 = load ptr, ptr %14, align 8, !tbaa !124, !noalias !513
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8, !noalias !513
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 32), !prof !390, !noalias !513
  store ptr %18, ptr %10, align 8, !tbaa !238, !noalias !513
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %18, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !244, !noalias !513
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %18, i64 0, i32 1
  store ptr %18, ptr %20, align 8, !tbaa !247, !noalias !513
  br label %21

21:                                               ; preds = %9, %13
  %22 = load ptr, ptr %10, align 8, !tbaa !238, !noalias !216
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32, !prof !311

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8, !tbaa !128, !noalias !516
  %26 = load ptr, ptr %25, align 8, !tbaa !124, !noalias !516
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !noalias !516
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !noalias !516
  store ptr %29, ptr %10, align 8, !tbaa !238, !noalias !516
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !244, !noalias !516
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !247, !noalias !516
  br label %32

32:                                               ; preds = %21, %24
  %33 = load ptr, ptr %10, align 8, !tbaa !238, !noalias !516
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !244, !noalias !216
  %36 = icmp eq ptr %35, %22
  br i1 %36, label %55, label %37, !prof !315

37:                                               ; preds = %32, %50
  %38 = phi ptr [ %53, %50 ], [ %35, %32 ]
  %39 = phi ptr [ %51, %50 ], [ null, %32 ]
  %40 = load i64, ptr %38, align 8, !tbaa !293
  %41 = icmp eq i64 %40, %1
  br i1 %41, label %55, label %42, !prof !316

42:                                               ; preds = %37
  %43 = icmp ult i64 %40, %1
  br i1 %43, label %50, label %44, !prof !317

44:                                               ; preds = %42
  %45 = icmp eq ptr %39, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = load i64, ptr %39, align 8, !tbaa !293
  %48 = icmp ult i64 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %42, %46, %49
  %51 = phi ptr [ %38, %49 ], [ %39, %46 ], [ %39, %42 ]
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %38, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !244, !noalias !216
  %54 = icmp eq ptr %53, %22
  br i1 %54, label %55, label %37, !prof !318, !llvm.loop !319

55:                                               ; preds = %50, %37, %32
  %56 = phi ptr [ null, %32 ], [ %51, %50 ], [ %38, %37 ]
  store ptr %56, ptr %3, align 8, !tbaa !135
  br label %57

57:                                               ; preds = %6, %55
  %58 = phi ptr [ %56, %55 ], [ %4, %6 ]
  ret ptr %58
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE9push_backERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 !prof !445 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.20", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !238, !noalias !519
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !258

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !128, !noalias !519
  %8 = load ptr, ptr %7, align 8, !tbaa !124, !noalias !519
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !519
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !519
  store ptr %11, ptr %3, align 8, !tbaa !238, !noalias !519
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !244, !noalias !519
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !247, !noalias !519
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !238, !noalias !519
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.20", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !458
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !522

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !244
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !128
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32), !prof !506
  store ptr %27, ptr %16, align 8, !tbaa !458
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !247
  store ptr %33, ptr %31, align 8, !tbaa !266
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !266
  %35 = load ptr, ptr %32, align 8, !tbaa !247
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<xalanc_1_10::XalanSourceTreeAttr *> *>>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !244
  store ptr %29, ptr %32, align 8, !tbaa !247
  store ptr %30, ptr %16, align 8, !tbaa !458
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #10 comdat align 2 !prof !445 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !292
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !258

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %35, !prof !522

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !446
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !522

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !290
  %17 = getelementptr inbounds ptr, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !292
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %35, label %20, !prof !315

20:                                               ; preds = %14
  %21 = getelementptr inbounds ptr, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %24 = phi i64 [ %27, %22 ], [ %18, %20 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !266
  store ptr %25, ptr %23, align 8, !tbaa !266
  %26 = getelementptr inbounds ptr, ptr %23, i64 1
  %27 = add i64 %24, 1
  %28 = icmp eq ptr %26, %17
  br i1 %28, label %33, label %22, !prof !523, !llvm.loop !524

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !292
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %32, %29 ], [ %27, %22 ]
  store i64 %34, ptr %4, align 8, !tbaa !292
  br label %35

35:                                               ; preds = %33, %14, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !445 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.37", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !447
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !447
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !292
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !446
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !290
  %12 = load ptr, ptr %3, align 8, !tbaa !447
  store ptr %12, ptr %0, align 8, !tbaa !447
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !292
  store i64 %14, ptr %6, align 8, !tbaa !292
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !446
  store i64 %16, ptr %8, align 8, !tbaa !446
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !290
  store ptr %18, ptr %10, align 8, !tbaa !290
  store ptr %5, ptr %3, align 8, !tbaa !447
  store i64 %7, ptr %13, align 8, !tbaa !292
  store i64 %9, ptr %15, align 8, !tbaa !446
  store ptr %11, ptr %17, align 8, !tbaa !290
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !522

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !124
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !445 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.37", align 8
  store ptr %2, ptr %0, align 8, !tbaa !447
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !292
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !522

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !447
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !292
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !446
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !124
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !290
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !290
  %24 = load i64, ptr %9, align 8, !tbaa !292
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !447
  %28 = load i64, ptr %6, align 8, !tbaa !292
  %29 = load i64, ptr %7, align 8, !tbaa !446
  %30 = load ptr, ptr %8, align 8, !tbaa !290
  %31 = load ptr, ptr %5, align 8, !tbaa !447
  store ptr %31, ptr %0, align 8, !tbaa !447
  %32 = load i64, ptr %14, align 8, !tbaa !292
  store i64 %32, ptr %6, align 8, !tbaa !292
  %33 = load i64, ptr %15, align 8, !tbaa !446
  store i64 %33, ptr %7, align 8, !tbaa !446
  %34 = load ptr, ptr %21, align 8, !tbaa !290
  store ptr %34, ptr %8, align 8, !tbaa !290
  store ptr %27, ptr %5, align 8, !tbaa !447
  store i64 %28, ptr %14, align 8, !tbaa !292
  store i64 %29, ptr %15, align 8, !tbaa !446
  store ptr %30, ptr %21, align 8, !tbaa !290
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !124
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !446
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !290
  %50 = load ptr, ptr %5, align 8, !tbaa !447
  %51 = load ptr, ptr %50, align 8, !tbaa !124
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !258

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !124
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !506
  store ptr %65, ptr %8, align 8, !tbaa !290
  store i64 %3, ptr %7, align 8, !tbaa !446
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.37", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !292
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !290
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !446
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !290
  %28 = load i64, ptr %12, align 8, !tbaa !292
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !266
  store ptr %34, ptr %32, align 8, !tbaa !266
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !525

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !447
  store ptr %42, ptr %5, align 8, !tbaa !447
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !292
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !446
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !124
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !290
  %51 = load i64, ptr %43, align 8, !tbaa !292
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !290
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !290
  %56 = load i64, ptr %43, align 8, !tbaa !292
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !290
  %60 = load i64, ptr %43, align 8, !tbaa !292
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !290
  %63 = load i64, ptr %12, align 8, !tbaa !292
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !447
  %67 = load i64, ptr %12, align 8, !tbaa !292
  %68 = load i64, ptr %19, align 8, !tbaa !446
  %69 = load ptr, ptr %15, align 8, !tbaa !290
  %70 = load ptr, ptr %5, align 8, !tbaa !447
  store ptr %70, ptr %0, align 8, !tbaa !447
  %71 = load i64, ptr %43, align 8, !tbaa !292
  store i64 %71, ptr %12, align 8, !tbaa !292
  %72 = load i64, ptr %44, align 8, !tbaa !446
  store i64 %72, ptr %19, align 8, !tbaa !446
  %73 = load ptr, ptr %50, align 8, !tbaa !290
  store ptr %73, ptr %15, align 8, !tbaa !290
  store ptr %66, ptr %5, align 8, !tbaa !447
  store i64 %67, ptr %43, align 8, !tbaa !292
  store i64 %68, ptr %44, align 8, !tbaa !446
  store ptr %69, ptr %50, align 8, !tbaa !290
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !124
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !446
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !290
  %89 = load ptr, ptr %5, align 8, !tbaa !447
  %90 = load ptr, ptr %89, align 8, !tbaa !124
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !526

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !527

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !528

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !292
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.37", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !292
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !446
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !290
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !266
  store ptr %13, ptr %12, align 8, !tbaa !266
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !292
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !447
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !447
  %24 = load i64, ptr %4, align 8, !tbaa !292
  %25 = load i64, ptr %6, align 8, !tbaa !446
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !290
  %28 = load ptr, ptr %3, align 8, !tbaa !447
  store ptr %28, ptr %0, align 8, !tbaa !447
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !292
  store i64 %30, ptr %4, align 8, !tbaa !292
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !446
  store i64 %32, ptr %6, align 8, !tbaa !446
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !290
  store ptr %34, ptr %26, align 8, !tbaa !290
  store ptr %23, ptr %3, align 8, !tbaa !447
  store i64 %24, ptr %29, align 8, !tbaa !292
  store i64 %25, ptr %31, align 8, !tbaa !446
  store ptr %27, ptr %33, align 8, !tbaa !290
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !124
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !446
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.37", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !290
  %52 = load ptr, ptr %3, align 8, !tbaa !447
  %53 = load ptr, ptr %52, align 8, !tbaa !124
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !203
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !207
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !265
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = load i16, ptr %15, align 2, !tbaa !281
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7, %18
  %19 = phi i16 [ %26, %18 ], [ %16, %7 ]
  %20 = phi i64 [ %24, %18 ], [ 0, %7 ]
  %21 = phi ptr [ %25, %18 ], [ %15, %7 ]
  %22 = mul i64 %20, 5
  %23 = zext i16 %19 to i64
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds i16, ptr %21, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !281
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !496

28:                                               ; preds = %18
  %29 = add i64 %24, 1
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ 1, %7 ], [ %29, %28 ]
  %32 = urem i64 %31, %9
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 8, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !486
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %34, i64 %32, i32 3
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %34, i64 %32, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !529
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 8, !tbaa !494
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi i1 [ %58, %53 ], [ %38, %39 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !340
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry", ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !491, !range !332, !noundef !216
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !220
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr %43, align 8, !tbaa !340
  store ptr %52, ptr %0, align 8, !tbaa !340
  br i1 %42, label %59, label %74

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %43, i64 1
  %55 = load ptr, ptr %35, align 8, !tbaa !494
  %56 = load i64, ptr %36, align 8, !tbaa !529
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %55, i64 %56
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %41, !llvm.loop !530

59:                                               ; preds = %53, %30, %51, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !208, !noalias !534
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !204, !noalias !534
  %66 = load ptr, ptr %65, align 8, !tbaa !124, !noalias !534
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !534
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 32), !noalias !534
  store ptr %69, ptr %60, align 8, !tbaa !208, !noalias !534
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !212, !noalias !534
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !215, !noalias !534
  br label %72

72:                                               ; preds = %59, %63
  %73 = load ptr, ptr %60, align 8, !tbaa !208, !noalias !534
  store ptr %73, ptr %0, align 8, !tbaa !340, !alias.scope !531
  br label %74

74:                                               ; preds = %51, %72
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PS5_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.41", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.31", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !207
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !486
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  store ptr %18, ptr %5, align 8, !tbaa !495
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !492
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !494
  %27 = load ptr, ptr %5, align 8, !tbaa !495
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !492
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !494
  %41 = load ptr, ptr %5, align 8, !tbaa !495
  %42 = load ptr, ptr %41, align 8, !tbaa !124
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #22
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !201
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !203
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !207
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !207
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !265
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66
  %68 = load i16, ptr %67, align 2, !tbaa !281
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %60, %70
  %71 = phi i16 [ %78, %70 ], [ %68, %60 ]
  %72 = phi i64 [ %76, %70 ], [ 0, %60 ]
  %73 = phi ptr [ %77, %70 ], [ %67, %60 ]
  %74 = mul i64 %72, 5
  %75 = zext i16 %71 to i64
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i16, ptr %73, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !281
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %70, !llvm.loop !496

80:                                               ; preds = %70
  %81 = add i64 %76, 1
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi i64 [ 1, %60 ], [ %81, %80 ]
  %84 = urem i64 %83, %61
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 7
  %86 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %85)
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !200
  %90 = load ptr, ptr %89, align 8, !tbaa !124
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 80)
  store ptr %93, ptr %6, align 8, !tbaa !220
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !491
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !208, !noalias !537
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !204, !noalias !537
  %101 = load ptr, ptr %100, align 8, !tbaa !124, !noalias !537
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8, !noalias !537
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef 32), !noalias !537
  store ptr %104, ptr %96, align 8, !tbaa !208, !noalias !537
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %104, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !212, !noalias !537
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %104, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !215, !noalias !537
  br label %107

107:                                              ; preds = %95, %99
  %108 = load ptr, ptr %96, align 8, !tbaa !208, !noalias !537
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !215, !noalias !540
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry", ptr %110, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !491
  %112 = load ptr, ptr %110, align 8, !tbaa !220
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !200
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %112, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 0, i32 noundef -1)
  %115 = icmp eq ptr %3, null
  %116 = load ptr, ptr %110, align 8, !tbaa !220
  %117 = getelementptr inbounds %"struct.std::pair.32", ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %113, align 8, !tbaa !200
  br i1 %115, label %120, label %119

119:                                              ; preds = %107
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %117, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %118, i32 noundef 0, i32 noundef -1)
  br label %121

120:                                              ; preds = %107
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %117, ptr noundef nonnull align 8 dereferenceable(8) %118)
  br label %121

121:                                              ; preds = %120, %119
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 6
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 6, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !208, !noalias !543
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load ptr, ptr %122, align 8, !tbaa !204, !noalias !543
  %128 = load ptr, ptr %127, align 8, !tbaa !124, !noalias !543
  %129 = getelementptr inbounds ptr, ptr %128, i64 2
  %130 = load ptr, ptr %129, align 8, !noalias !543
  %131 = call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %127, i64 noundef 32), !noalias !543
  store ptr %131, ptr %123, align 8, !tbaa !208, !noalias !543
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %131, i64 0, i32 2
  store ptr %131, ptr %132, align 8, !tbaa !212, !noalias !543
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %131, i64 0, i32 1
  store ptr %131, ptr %133, align 8, !tbaa !215, !noalias !543
  br label %134

134:                                              ; preds = %121, %126
  %135 = load ptr, ptr %123, align 8, !tbaa !208, !noalias !543
  %136 = load ptr, ptr %96, align 8, !tbaa !208, !noalias !546
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load ptr, ptr %85, align 8, !tbaa !204, !noalias !546
  %140 = load ptr, ptr %139, align 8, !tbaa !124, !noalias !546
  %141 = getelementptr inbounds ptr, ptr %140, i64 2
  %142 = load ptr, ptr %141, align 8, !noalias !546
  %143 = call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %139, i64 noundef 32), !noalias !546
  store ptr %143, ptr %96, align 8, !tbaa !208, !noalias !546
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %143, i64 0, i32 2
  store ptr %143, ptr %144, align 8, !tbaa !212, !noalias !546
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %143, i64 0, i32 1
  store ptr %143, ptr %145, align 8, !tbaa !215, !noalias !546
  br label %146

146:                                              ; preds = %134, %138
  %147 = load ptr, ptr %96, align 8, !tbaa !208, !noalias !546
  %148 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !215, !noalias !549
  %150 = icmp eq ptr %135, %149
  br i1 %150, label %163, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %149, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !212
  %154 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %149, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !215
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %155, i64 0, i32 2
  store ptr %153, ptr %156, align 8, !tbaa !212
  %157 = load ptr, ptr %152, align 8, !tbaa !212
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %157, i64 0, i32 1
  store ptr %155, ptr %158, align 8, !tbaa !215
  %159 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %135, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !215
  store ptr %160, ptr %154, align 8, !tbaa !215
  store ptr %135, ptr %152, align 8, !tbaa !212
  %161 = load ptr, ptr %159, align 8, !tbaa !215
  %162 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %161, i64 0, i32 2
  store ptr %149, ptr %162, align 8, !tbaa !212
  store ptr %149, ptr %159, align 8, !tbaa !215
  br label %163

163:                                              ; preds = %146, %151
  %164 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %1, i64 0, i32 8, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !486
  %166 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %165, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %167 = load ptr, ptr %123, align 8, !tbaa !208, !noalias !552
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load ptr, ptr %122, align 8, !tbaa !204, !noalias !552
  %171 = load ptr, ptr %170, align 8, !tbaa !124, !noalias !552
  %172 = getelementptr inbounds ptr, ptr %171, i64 2
  %173 = load ptr, ptr %172, align 8, !noalias !552
  %174 = call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(8) %170, i64 noundef 32), !noalias !552
  store ptr %174, ptr %123, align 8, !tbaa !208, !noalias !552
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %174, i64 0, i32 2
  store ptr %174, ptr %175, align 8, !tbaa !212, !noalias !552
  %176 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %174, i64 0, i32 1
  store ptr %174, ptr %176, align 8, !tbaa !215, !noalias !552
  br label %177

177:                                              ; preds = %163, %169
  %178 = load ptr, ptr %123, align 8, !tbaa !208, !noalias !552
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %179 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !215, !noalias !555
  store ptr %180, ptr %7, align 8, !tbaa !340, !alias.scope !555
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %166, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  %181 = load i64, ptr %52, align 8, !tbaa !203
  %182 = add i64 %181, 1
  store i64 %182, ptr %52, align 8, !tbaa !203
  %183 = load ptr, ptr %123, align 8, !tbaa !208, !noalias !558
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = load ptr, ptr %122, align 8, !tbaa !204, !noalias !558
  %187 = load ptr, ptr %186, align 8, !tbaa !124, !noalias !558
  %188 = getelementptr inbounds ptr, ptr %187, i64 2
  %189 = load ptr, ptr %188, align 8, !noalias !558
  %190 = call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %186, i64 noundef 32), !noalias !558
  store ptr %190, ptr %123, align 8, !tbaa !208, !noalias !558
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %190, i64 0, i32 2
  store ptr %190, ptr %191, align 8, !tbaa !212, !noalias !558
  %192 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %190, i64 0, i32 1
  store ptr %190, ptr %192, align 8, !tbaa !215, !noalias !558
  br label %193

193:                                              ; preds = %177, %185
  %194 = load ptr, ptr %123, align 8, !tbaa !208, !noalias !558
  %195 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !215, !noalias !561
  store ptr %196, ptr %0, align 8, !tbaa !340
  ret void
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.27", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !207
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !486
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !485
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !486
  %22 = load i64, ptr %6, align 8, !tbaa !207
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !205
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !207
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !207
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !564

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !205
  store ptr %36, ptr %5, align 8, !tbaa !205
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !207
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !485
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !124
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !486
  %45 = load i64, ptr %37, align 8, !tbaa !207
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !486
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !486
  %50 = load i64, ptr %37, align 8, !tbaa !207
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !486
  %54 = load i64, ptr %37, align 8, !tbaa !207
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !486
  %57 = load i64, ptr %6, align 8, !tbaa !207
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !205
  %61 = load i64, ptr %6, align 8, !tbaa !207
  %62 = load i64, ptr %13, align 8, !tbaa !485
  %63 = load ptr, ptr %9, align 8, !tbaa !486
  %64 = load ptr, ptr %5, align 8, !tbaa !205
  store ptr %64, ptr %0, align 8, !tbaa !205
  %65 = load i64, ptr %37, align 8, !tbaa !207
  store i64 %65, ptr %6, align 8, !tbaa !207
  %66 = load i64, ptr %38, align 8, !tbaa !485
  store i64 %66, ptr %13, align 8, !tbaa !485
  %67 = load ptr, ptr %44, align 8, !tbaa !486
  store ptr %67, ptr %9, align 8, !tbaa !486
  store ptr %60, ptr %5, align 8, !tbaa !205
  store i64 %61, ptr %37, align 8, !tbaa !207
  store i64 %62, ptr %38, align 8, !tbaa !485
  store ptr %63, ptr %44, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %69

70:                                               ; preds = %33
  %71 = ptrtoint ptr %11 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 5
  %75 = icmp ugt i64 %74, %2
  br i1 %75, label %96, label %76

76:                                               ; preds = %70
  %77 = sub i64 %2, %74
  %78 = icmp eq i64 %74, %2
  br i1 %78, label %79, label %81

79:                                               ; preds = %81, %76
  %80 = icmp eq ptr %11, %1
  br i1 %80, label %85, label %87

81:                                               ; preds = %76, %81
  %82 = phi i64 [ %83, %81 ], [ 0, %76 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !565

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !566

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !567

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !568

104:                                              ; preds = %100, %96
  %105 = ptrtoint ptr %98 to i64
  %106 = sub i64 %105, %72
  %107 = ashr exact i64 %106, 5
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104, %109
  %110 = phi i64 [ %116, %109 ], [ %107, %104 ]
  %111 = phi ptr [ %114, %109 ], [ %11, %104 ]
  %112 = phi ptr [ %113, %109 ], [ %98, %104 ]
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !569

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !567

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.27", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.41", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.31", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !203
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !200
  store ptr %11, ptr %3, align 8, !tbaa !495
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2EmRKSG_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %89

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !492
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !494
  %20 = load ptr, ptr %3, align 8, !tbaa !495
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !208, !noalias !570
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !204, !noalias !570
  %34 = load ptr, ptr %33, align 8, !tbaa !124, !noalias !570
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !570
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %103

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !208, !noalias !570
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !212, !noalias !570
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !215, !noalias !570
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %83, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %83 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !266, !noalias !216
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !212, !noalias !216
  store ptr %47, ptr %4, align 8, !tbaa !340
  %48 = load ptr, ptr %29, align 8, !tbaa !208, !noalias !573
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !204, !noalias !573
  %52 = load ptr, ptr %51, align 8, !tbaa !124, !noalias !573
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !573
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %105

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !208, !noalias !573
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !212, !noalias !573
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !215, !noalias !573
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !208, !noalias !573
  %61 = load ptr, ptr %4, align 8, !tbaa !340
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !220
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !265
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %64, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = load i16, ptr %70, align 2, !tbaa !281
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %63, %73
  %74 = phi i16 [ %81, %73 ], [ %71, %63 ]
  %75 = phi i64 [ %79, %73 ], [ 0, %63 ]
  %76 = phi ptr [ %80, %73 ], [ %70, %63 ]
  %77 = mul i64 %75, 5
  %78 = zext i16 %74 to i64
  %79 = add i64 %77, %78
  %80 = getelementptr inbounds i16, ptr %76, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !281
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !496

83:                                               ; preds = %73, %63
  %84 = phi i64 [ 0, %63 ], [ %79, %73 ]
  %85 = add i64 %84, 1
  %86 = urem i64 %85, %9
  %87 = load ptr, ptr %42, align 8, !tbaa !486
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %87, i64 %86
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %107, !llvm.loop !576

89:                                               ; preds = %1
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load i64, ptr %13, align 8, !tbaa !492
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %14, align 8, !tbaa !494
  %95 = load ptr, ptr %3, align 8, !tbaa !495
  %96 = load ptr, ptr %95, align 8, !tbaa !124
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #22
  unreachable

102:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %127

103:                                              ; preds = %32
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %125

105:                                              ; preds = %50
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %125

107:                                              ; preds = %83
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %125

109:                                              ; preds = %59
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !205
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 8, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !207
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 8, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !485
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.23", ptr %0, i64 0, i32 8, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !486
  %118 = load ptr, ptr %2, align 8, !tbaa !205
  store ptr %118, ptr %110, align 8, !tbaa !205
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %2, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !207
  store i64 %120, ptr %112, align 8, !tbaa !207
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %2, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !485
  store i64 %122, ptr %114, align 8, !tbaa !485
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !486
  store ptr %124, ptr %116, align 8, !tbaa !486
  store ptr %111, ptr %2, align 8, !tbaa !205
  store i64 %113, ptr %119, align 8, !tbaa !207
  store i64 %115, ptr %121, align 8, !tbaa !485
  store ptr %117, ptr %123, align 8, !tbaa !486
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  ret void

125:                                              ; preds = %107, %105, %103
  %126 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  br label %127

127:                                              ; preds = %125, %102
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %90, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.26", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !208
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !204
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !208
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !212
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !215
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !208
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !212
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !204
  %20 = load ptr, ptr %19, align 8, !tbaa !124
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !208
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !212
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !215
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !208
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.26", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !208, !noalias !577
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !204, !noalias !577
  %8 = load ptr, ptr %7, align 8, !tbaa !124, !noalias !577
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !577
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !577
  store ptr %11, ptr %3, align 8, !tbaa !208, !noalias !577
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !212, !noalias !577
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !215, !noalias !577
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !208, !noalias !577
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.26", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !444
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !212
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !204
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !444
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !580
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !215
  store ptr %33, ptr %31, align 8, !tbaa !266
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !266
  %35 = load ptr, ptr %32, align 8, !tbaa !215
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::XalanDOMString>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !212
  store ptr %29, ptr %32, align 8, !tbaa !215
  store ptr %30, ptr %16, align 8, !tbaa !444
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.27", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !207
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !486
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !485
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !486
  %28 = load i64, ptr %12, align 8, !tbaa !207
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !205
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !207
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !207
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !582

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !205
  store ptr %42, ptr %5, align 8, !tbaa !205
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !207
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !485
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !124
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !486
  %51 = load i64, ptr %43, align 8, !tbaa !207
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !486
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !486
  %56 = load i64, ptr %43, align 8, !tbaa !207
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !486
  %60 = load i64, ptr %43, align 8, !tbaa !207
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !486
  %63 = load i64, ptr %12, align 8, !tbaa !207
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !205
  %67 = load i64, ptr %12, align 8, !tbaa !207
  %68 = load i64, ptr %19, align 8, !tbaa !485
  %69 = load ptr, ptr %15, align 8, !tbaa !486
  %70 = load ptr, ptr %5, align 8, !tbaa !205
  store ptr %70, ptr %0, align 8, !tbaa !205
  %71 = load i64, ptr %43, align 8, !tbaa !207
  store i64 %71, ptr %12, align 8, !tbaa !207
  %72 = load i64, ptr %44, align 8, !tbaa !485
  store i64 %72, ptr %19, align 8, !tbaa !485
  %73 = load ptr, ptr %50, align 8, !tbaa !486
  store ptr %73, ptr %15, align 8, !tbaa !486
  store ptr %66, ptr %5, align 8, !tbaa !205
  store i64 %67, ptr %43, align 8, !tbaa !207
  store i64 %68, ptr %44, align 8, !tbaa !485
  store ptr %69, ptr %50, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !583

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !584

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !585

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !586

114:                                              ; preds = %110, %106
  %115 = ptrtoint ptr %108 to i64
  %116 = sub i64 %115, %78
  %117 = ashr exact i64 %116, 5
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %121, %114
  %120 = icmp sgt i64 %9, 0
  br i1 %120, label %130, label %139

121:                                              ; preds = %114, %121
  %122 = phi i64 [ %128, %121 ], [ %117, %114 ]
  %123 = phi ptr [ %126, %121 ], [ %17, %114 ]
  %124 = phi ptr [ %125, %121 ], [ %108, %114 ]
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !569

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !585

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.27", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !207
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !485
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !486
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !205
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !207
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !207
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !205
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !205
  %25 = load i64, ptr %4, align 8, !tbaa !207
  %26 = load i64, ptr %6, align 8, !tbaa !485
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !486
  %29 = load ptr, ptr %3, align 8, !tbaa !205
  store ptr %29, ptr %0, align 8, !tbaa !205
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !207
  store i64 %31, ptr %4, align 8, !tbaa !207
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !485
  store i64 %33, ptr %6, align 8, !tbaa !485
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !486
  store ptr %35, ptr %27, align 8, !tbaa !486
  store ptr %24, ptr %3, align 8, !tbaa !205
  store i64 %25, ptr %30, align 8, !tbaa !207
  store i64 %26, ptr %32, align 8, !tbaa !485
  store ptr %28, ptr %34, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.27", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !205
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !207
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !485
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !486
  %12 = load ptr, ptr %3, align 8, !tbaa !205
  store ptr %12, ptr %0, align 8, !tbaa !205
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !207
  store i64 %14, ptr %6, align 8, !tbaa !207
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !485
  store i64 %16, ptr %8, align 8, !tbaa !485
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !486
  store ptr %18, ptr %10, align 8, !tbaa !486
  store ptr %5, ptr %3, align 8, !tbaa !205
  store i64 %7, ptr %13, align 8, !tbaa !207
  store i64 %9, ptr %15, align 8, !tbaa !485
  store ptr %11, ptr %17, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.27", align 8
  store ptr %2, ptr %0, align 8, !tbaa !205
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !207
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !205
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !207
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !485
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !124
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !486
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !486
  %24 = load i64, ptr %9, align 8, !tbaa !207
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !205
  %28 = load i64, ptr %6, align 8, !tbaa !207
  %29 = load i64, ptr %7, align 8, !tbaa !485
  %30 = load ptr, ptr %8, align 8, !tbaa !486
  %31 = load ptr, ptr %5, align 8, !tbaa !205
  store ptr %31, ptr %0, align 8, !tbaa !205
  %32 = load i64, ptr %14, align 8, !tbaa !207
  store i64 %32, ptr %6, align 8, !tbaa !207
  %33 = load i64, ptr %15, align 8, !tbaa !485
  store i64 %33, ptr %7, align 8, !tbaa !485
  %34 = load ptr, ptr %21, align 8, !tbaa !486
  store ptr %34, ptr %8, align 8, !tbaa !486
  store ptr %27, ptr %5, align 8, !tbaa !205
  store i64 %28, ptr %14, align 8, !tbaa !207
  store i64 %29, ptr %15, align 8, !tbaa !485
  store ptr %30, ptr %21, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !124
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !486
  store i64 %3, ptr %7, align 8, !tbaa !485
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.41", align 8
  store ptr %2, ptr %0, align 8, !tbaa !495
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !529
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !495
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !529
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !492
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !124
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !494
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !494
  %24 = load i64, ptr %9, align 8, !tbaa !529
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !495
  %28 = load i64, ptr %6, align 8, !tbaa !529
  %29 = load i64, ptr %7, align 8, !tbaa !492
  %30 = load ptr, ptr %8, align 8, !tbaa !494
  %31 = load ptr, ptr %5, align 8, !tbaa !495
  store ptr %31, ptr %0, align 8, !tbaa !495
  %32 = load i64, ptr %14, align 8, !tbaa !529
  store i64 %32, ptr %6, align 8, !tbaa !529
  %33 = load i64, ptr %15, align 8, !tbaa !492
  store i64 %33, ptr %7, align 8, !tbaa !492
  %34 = load ptr, ptr %21, align 8, !tbaa !494
  store ptr %34, ptr %8, align 8, !tbaa !494
  store ptr %27, ptr %5, align 8, !tbaa !495
  store i64 %28, ptr %14, align 8, !tbaa !529
  store i64 %29, ptr %15, align 8, !tbaa !492
  store ptr %30, ptr %21, align 8, !tbaa !494
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !124
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !492
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !494
  %50 = load ptr, ptr %5, align 8, !tbaa !495
  %51 = load ptr, ptr %50, align 8, !tbaa !124
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !124
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !494
  store i64 %3, ptr %7, align 8, !tbaa !492
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.41", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !529
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !494
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !492
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !494
  %28 = load i64, ptr %12, align 8, !tbaa !529
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !340
  store ptr %34, ptr %32, align 8, !tbaa !340
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !587

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !495
  store ptr %42, ptr %5, align 8, !tbaa !495
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !529
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !492
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !124
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !494
  %51 = load i64, ptr %43, align 8, !tbaa !529
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !494
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !494
  %56 = load i64, ptr %43, align 8, !tbaa !529
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !494
  %60 = load i64, ptr %43, align 8, !tbaa !529
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !494
  %63 = load i64, ptr %12, align 8, !tbaa !529
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !495
  %67 = load i64, ptr %12, align 8, !tbaa !529
  %68 = load i64, ptr %19, align 8, !tbaa !492
  %69 = load ptr, ptr %15, align 8, !tbaa !494
  %70 = load ptr, ptr %5, align 8, !tbaa !495
  store ptr %70, ptr %0, align 8, !tbaa !495
  %71 = load i64, ptr %43, align 8, !tbaa !529
  store i64 %71, ptr %12, align 8, !tbaa !529
  %72 = load i64, ptr %44, align 8, !tbaa !492
  store i64 %72, ptr %19, align 8, !tbaa !492
  %73 = load ptr, ptr %50, align 8, !tbaa !494
  store ptr %73, ptr %15, align 8, !tbaa !494
  store ptr %66, ptr %5, align 8, !tbaa !495
  store i64 %67, ptr %43, align 8, !tbaa !529
  store i64 %68, ptr %44, align 8, !tbaa !492
  store ptr %69, ptr %50, align 8, !tbaa !494
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !124
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !492
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !494
  %89 = load ptr, ptr %5, align 8, !tbaa !495
  %90 = load ptr, ptr %89, align 8, !tbaa !124
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !588

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !589

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !340
  store ptr %122, ptr %120, align 8, !tbaa !340
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !590

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !591

135:                                              ; preds = %131, %127
  %136 = ptrtoint ptr %129 to i64
  %137 = sub i64 %136, %99
  %138 = ashr exact i64 %137, 3
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %142, %135
  %141 = icmp sgt i64 %9, 0
  br i1 %141, label %151, label %161

142:                                              ; preds = %135, %142
  %143 = phi i64 [ %149, %142 ], [ %138, %135 ]
  %144 = phi ptr [ %147, %142 ], [ %17, %135 ]
  %145 = phi ptr [ %146, %142 ], [ %129, %135 ]
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %145, i64 -1
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %144, i64 -1
  %148 = load ptr, ptr %146, align 8, !tbaa !340
  store ptr %148, ptr %147, align 8, !tbaa !340
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !592

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !340
  store ptr %155, ptr %153, align 8, !tbaa !340
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !590

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !529
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.41", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !529
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !492
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !494
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !340
  store ptr %13, ptr %12, align 8, !tbaa !340
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !529
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !495
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !495
  %24 = load i64, ptr %4, align 8, !tbaa !529
  %25 = load i64, ptr %6, align 8, !tbaa !492
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !494
  %28 = load ptr, ptr %3, align 8, !tbaa !495
  store ptr %28, ptr %0, align 8, !tbaa !495
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !529
  store i64 %30, ptr %4, align 8, !tbaa !529
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !492
  store i64 %32, ptr %6, align 8, !tbaa !492
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !494
  store ptr %34, ptr %26, align 8, !tbaa !494
  store ptr %23, ptr %3, align 8, !tbaa !495
  store i64 %24, ptr %29, align 8, !tbaa !529
  store i64 %25, ptr %31, align 8, !tbaa !492
  store ptr %27, ptr %33, align 8, !tbaa !494
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !124
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !492
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !494
  %52 = load ptr, ptr %3, align 8, !tbaa !495
  %53 = load ptr, ptr %52, align 8, !tbaa !124
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.41", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !495
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !495
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !529
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !494
  %12 = load ptr, ptr %3, align 8, !tbaa !495
  store ptr %12, ptr %0, align 8, !tbaa !495
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !529
  store i64 %14, ptr %6, align 8, !tbaa !529
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !492
  store i64 %16, ptr %8, align 8, !tbaa !492
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !494
  store ptr %18, ptr %10, align 8, !tbaa !494
  store ptr %5, ptr %3, align 8, !tbaa !495
  store i64 %7, ptr %13, align 8, !tbaa !529
  store i64 %9, ptr %15, align 8, !tbaa !492
  store ptr %11, ptr %17, align 8, !tbaa !494
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !124
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.41", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !492
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !529
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !495
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !495
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !529
  %16 = load i64, ptr %6, align 8, !tbaa !492
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !494
  %19 = load ptr, ptr %3, align 8, !tbaa !495
  store ptr %19, ptr %0, align 8, !tbaa !495
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !529
  store i64 %21, ptr %14, align 8, !tbaa !529
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !492
  store i64 %23, ptr %6, align 8, !tbaa !492
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !494
  store ptr %25, ptr %17, align 8, !tbaa !494
  store ptr %13, ptr %3, align 8, !tbaa !495
  store i64 %15, ptr %20, align 8, !tbaa !529
  store i64 %16, ptr %22, align 8, !tbaa !492
  store ptr %18, ptr %24, align 8, !tbaa !494
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !124
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !494
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !529
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !494
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !529
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !529
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !494
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.41", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !494
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !340
  store ptr %68, ptr %66, align 8, !tbaa !340
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.31", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !590

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2EmRKSG_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.27", align 8
  store ptr %3, ptr %0, align 8, !tbaa !205
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  store ptr %3, ptr %5, align 8, !tbaa !205
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.27", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !205
  %14 = load i64, ptr %6, align 8, !tbaa !207
  %15 = load i64, ptr %12, align 8, !tbaa !485
  %16 = load ptr, ptr %11, align 8, !tbaa !486
  %17 = load ptr, ptr %5, align 8, !tbaa !205
  store ptr %17, ptr %0, align 8, !tbaa !205
  %18 = load i64, ptr %7, align 8, !tbaa !207
  store i64 %18, ptr %6, align 8, !tbaa !207
  %19 = load i64, ptr %10, align 8, !tbaa !485
  store i64 %19, ptr %12, align 8, !tbaa !485
  %20 = load ptr, ptr %9, align 8, !tbaa !486
  store ptr %20, ptr %11, align 8, !tbaa !486
  store ptr %13, ptr %5, align 8, !tbaa !205
  store i64 %14, ptr %7, align 8, !tbaa !207
  store i64 %15, ptr %10, align 8, !tbaa !485
  store ptr %16, ptr %9, align 8, !tbaa !486
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %22
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE6insertERKS2_RKS4_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.38", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator.38", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE4findERKS2_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.38") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !270
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !225, !noalias !593
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !197, !noalias !593
  %13 = load ptr, ptr %12, align 8, !tbaa !124, !noalias !593
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !593
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !593
  store ptr %16, ptr %7, align 8, !tbaa !225, !noalias !593
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !229, !noalias !593
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !232, !noalias !593
  br label %19

19:                                               ; preds = %3, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !225, !noalias !593
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE13doCreateEntryERKS2_PKS4_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.38") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE13doCreateEntryERKS2_PKS4_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !224
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !468
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !193
  store ptr %18, ptr %5, align 8, !tbaa !477
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !474
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !476
  %27 = load ptr, ptr %5, align 8, !tbaa !477
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !474
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !476
  %41 = load ptr, ptr %5, align 8, !tbaa !477
  %42 = load ptr, ptr %41, align 8, !tbaa !124
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #22
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !194
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !196
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !224
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !224
  %62 = load ptr, ptr %2, align 8, !tbaa !266
  %63 = load i16, ptr %62, align 2, !tbaa !281
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %60, %65
  %66 = phi i16 [ %73, %65 ], [ %63, %60 ]
  %67 = phi i64 [ %71, %65 ], [ 0, %60 ]
  %68 = phi ptr [ %72, %65 ], [ %62, %60 ]
  %69 = mul i64 %67, 5
  %70 = zext i16 %66 to i64
  %71 = add i64 %69, %70
  %72 = getelementptr inbounds i16, ptr %68, i64 1
  %73 = load i16, ptr %72, align 2, !tbaa !281
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %65, !llvm.loop !496

75:                                               ; preds = %65
  %76 = add i64 %71, 1
  br label %77

77:                                               ; preds = %75, %60
  %78 = phi i64 [ 1, %60 ], [ %76, %75 ]
  %79 = urem i64 %78, %61
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %81 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %80)
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !193
  %85 = load ptr, ptr %84, align 8, !tbaa !124
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8
  %88 = call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %84, i64 noundef 16)
  store ptr %88, ptr %6, align 8, !tbaa !236
  %89 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %89, align 8, !tbaa !473
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE9push_backERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %90

90:                                               ; preds = %82, %77
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !225, !noalias !598
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load ptr, ptr %80, align 8, !tbaa !197, !noalias !598
  %96 = load ptr, ptr %95, align 8, !tbaa !124, !noalias !598
  %97 = getelementptr inbounds ptr, ptr %96, i64 2
  %98 = load ptr, ptr %97, align 8, !noalias !598
  %99 = call noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(8) %95, i64 noundef 32), !noalias !598
  store ptr %99, ptr %91, align 8, !tbaa !225, !noalias !598
  %100 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %99, i64 0, i32 2
  store ptr %99, ptr %100, align 8, !tbaa !229, !noalias !598
  %101 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %99, i64 0, i32 1
  store ptr %99, ptr %101, align 8, !tbaa !232, !noalias !598
  br label %102

102:                                              ; preds = %90, %94
  %103 = load ptr, ptr %91, align 8, !tbaa !225, !noalias !598
  %104 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !232, !noalias !601
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry", ptr %105, i64 0, i32 1
  store i8 0, ptr %106, align 8, !tbaa !473
  %107 = load ptr, ptr %105, align 8, !tbaa !236
  %108 = load ptr, ptr %2, align 8, !tbaa !266
  store ptr %108, ptr %107, align 8, !tbaa !266
  %109 = icmp eq ptr %3, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %102
  %111 = load ptr, ptr %105, align 8, !tbaa !236
  %112 = getelementptr inbounds %"struct.std::pair.28", ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %3, align 8, !tbaa !266
  store ptr %113, ptr %112, align 8, !tbaa !266
  br label %114

114:                                              ; preds = %102, %110
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !225, !noalias !604
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load ptr, ptr %115, align 8, !tbaa !197, !noalias !604
  %121 = load ptr, ptr %120, align 8, !tbaa !124, !noalias !604
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8, !noalias !604
  %124 = call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %120, i64 noundef 32), !noalias !604
  store ptr %124, ptr %116, align 8, !tbaa !225, !noalias !604
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %124, i64 0, i32 2
  store ptr %124, ptr %125, align 8, !tbaa !229, !noalias !604
  %126 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %124, i64 0, i32 1
  store ptr %124, ptr %126, align 8, !tbaa !232, !noalias !604
  br label %127

127:                                              ; preds = %114, %119
  %128 = load ptr, ptr %116, align 8, !tbaa !225, !noalias !604
  %129 = load ptr, ptr %91, align 8, !tbaa !225, !noalias !607
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load ptr, ptr %80, align 8, !tbaa !197, !noalias !607
  %133 = load ptr, ptr %132, align 8, !tbaa !124, !noalias !607
  %134 = getelementptr inbounds ptr, ptr %133, i64 2
  %135 = load ptr, ptr %134, align 8, !noalias !607
  %136 = call noundef ptr %135(ptr noundef nonnull align 8 dereferenceable(8) %132, i64 noundef 32), !noalias !607
  store ptr %136, ptr %91, align 8, !tbaa !225, !noalias !607
  %137 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %136, i64 0, i32 2
  store ptr %136, ptr %137, align 8, !tbaa !229, !noalias !607
  %138 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %136, i64 0, i32 1
  store ptr %136, ptr %138, align 8, !tbaa !232, !noalias !607
  br label %139

139:                                              ; preds = %127, %131
  %140 = load ptr, ptr %91, align 8, !tbaa !225, !noalias !607
  %141 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !232, !noalias !610
  %143 = icmp eq ptr %128, %142
  br i1 %143, label %156, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %142, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !229
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %142, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !232
  %149 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %148, i64 0, i32 2
  store ptr %146, ptr %149, align 8, !tbaa !229
  %150 = load ptr, ptr %145, align 8, !tbaa !229
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %150, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !232
  %152 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %128, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !232
  store ptr %153, ptr %147, align 8, !tbaa !232
  store ptr %128, ptr %145, align 8, !tbaa !229
  %154 = load ptr, ptr %152, align 8, !tbaa !232
  %155 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %154, i64 0, i32 2
  store ptr %142, ptr %155, align 8, !tbaa !229
  store ptr %142, ptr %152, align 8, !tbaa !232
  br label %156

156:                                              ; preds = %139, %144
  %157 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !468
  %159 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %158, i64 %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %160 = load ptr, ptr %116, align 8, !tbaa !225, !noalias !613
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %156
  %163 = load ptr, ptr %115, align 8, !tbaa !197, !noalias !613
  %164 = load ptr, ptr %163, align 8, !tbaa !124, !noalias !613
  %165 = getelementptr inbounds ptr, ptr %164, i64 2
  %166 = load ptr, ptr %165, align 8, !noalias !613
  %167 = call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(8) %163, i64 noundef 32), !noalias !613
  store ptr %167, ptr %116, align 8, !tbaa !225, !noalias !613
  %168 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %167, i64 0, i32 2
  store ptr %167, ptr %168, align 8, !tbaa !229, !noalias !613
  %169 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %167, i64 0, i32 1
  store ptr %167, ptr %169, align 8, !tbaa !232, !noalias !613
  br label %170

170:                                              ; preds = %156, %162
  %171 = load ptr, ptr %116, align 8, !tbaa !225, !noalias !613
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %172 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !232, !noalias !616
  store ptr %173, ptr %7, align 8, !tbaa !270, !alias.scope !616
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %159, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  %174 = load i64, ptr %52, align 8, !tbaa !196
  %175 = add i64 %174, 1
  store i64 %175, ptr %52, align 8, !tbaa !196
  %176 = load ptr, ptr %116, align 8, !tbaa !225, !noalias !619
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %170
  %179 = load ptr, ptr %115, align 8, !tbaa !197, !noalias !619
  %180 = load ptr, ptr %179, align 8, !tbaa !124, !noalias !619
  %181 = getelementptr inbounds ptr, ptr %180, i64 2
  %182 = load ptr, ptr %181, align 8, !noalias !619
  %183 = call noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(8) %179, i64 noundef 32), !noalias !619
  store ptr %183, ptr %116, align 8, !tbaa !225, !noalias !619
  %184 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %183, i64 0, i32 2
  store ptr %183, ptr %184, align 8, !tbaa !229, !noalias !619
  %185 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %183, i64 0, i32 1
  store ptr %183, ptr %185, align 8, !tbaa !232, !noalias !619
  br label %186

186:                                              ; preds = %170, %178
  %187 = load ptr, ptr %116, align 8, !tbaa !225, !noalias !619
  %188 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !232, !noalias !622
  store ptr %189, ptr %0, align 8, !tbaa !270
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.22", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !224
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !468
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !467
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !468
  %22 = load i64, ptr %6, align 8, !tbaa !224
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !198
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !224
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !224
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !625

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !198
  store ptr %36, ptr %5, align 8, !tbaa !198
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !224
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !467
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !124
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !468
  %45 = load i64, ptr %37, align 8, !tbaa !224
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !468
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !468
  %50 = load i64, ptr %37, align 8, !tbaa !224
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !468
  %54 = load i64, ptr %37, align 8, !tbaa !224
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !468
  %57 = load i64, ptr %6, align 8, !tbaa !224
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !198
  %61 = load i64, ptr %6, align 8, !tbaa !224
  %62 = load i64, ptr %13, align 8, !tbaa !467
  %63 = load ptr, ptr %9, align 8, !tbaa !468
  %64 = load ptr, ptr %5, align 8, !tbaa !198
  store ptr %64, ptr %0, align 8, !tbaa !198
  %65 = load i64, ptr %37, align 8, !tbaa !224
  store i64 %65, ptr %6, align 8, !tbaa !224
  %66 = load i64, ptr %38, align 8, !tbaa !467
  store i64 %66, ptr %13, align 8, !tbaa !467
  %67 = load ptr, ptr %44, align 8, !tbaa !468
  store ptr %67, ptr %9, align 8, !tbaa !468
  store ptr %60, ptr %5, align 8, !tbaa !198
  store i64 %61, ptr %37, align 8, !tbaa !224
  store i64 %62, ptr %38, align 8, !tbaa !467
  store ptr %63, ptr %44, align 8, !tbaa !468
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %69

70:                                               ; preds = %33
  %71 = ptrtoint ptr %11 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 5
  %75 = icmp ugt i64 %74, %2
  br i1 %75, label %96, label %76

76:                                               ; preds = %70
  %77 = sub i64 %2, %74
  %78 = icmp eq i64 %74, %2
  br i1 %78, label %79, label %81

79:                                               ; preds = %81, %76
  %80 = icmp eq ptr %11, %1
  br i1 %80, label %85, label %87

81:                                               ; preds = %76, %81
  %82 = phi i64 [ %83, %81 ], [ 0, %76 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !626

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !627

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !628

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !629

104:                                              ; preds = %100, %96
  %105 = ptrtoint ptr %98 to i64
  %106 = sub i64 %105, %72
  %107 = ashr exact i64 %106, 5
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104, %109
  %110 = phi i64 [ %116, %109 ], [ %107, %104 ]
  %111 = phi ptr [ %114, %109 ], [ %11, %104 ]
  %112 = phi ptr [ %113, %109 ], [ %98, %104 ]
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !630

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !628

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.22", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !196
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !193
  store ptr %11, ptr %3, align 8, !tbaa !477
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2EmRKSJ_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %84

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !474
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !476
  %20 = load ptr, ptr %3, align 8, !tbaa !477
  %21 = load ptr, ptr %20, align 8, !tbaa !124
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !225, !noalias !631
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !197, !noalias !631
  %34 = load ptr, ptr %33, align 8, !tbaa !124, !noalias !631
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !631
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %98

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !225, !noalias !631
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !229, !noalias !631
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !232, !noalias !631
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %78, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %78 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !266, !noalias !216
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !229, !noalias !216
  store ptr %47, ptr %4, align 8, !tbaa !270
  %48 = load ptr, ptr %29, align 8, !tbaa !225, !noalias !634
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !197, !noalias !634
  %52 = load ptr, ptr %51, align 8, !tbaa !124, !noalias !634
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !634
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %100

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !225, !noalias !634
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !229, !noalias !634
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !232, !noalias !634
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !225, !noalias !634
  %61 = load ptr, ptr %4, align 8, !tbaa !270
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %104, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !236
  %65 = load ptr, ptr %64, align 8, !tbaa !266
  %66 = load i16, ptr %65, align 2, !tbaa !281
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63, %68
  %69 = phi i16 [ %76, %68 ], [ %66, %63 ]
  %70 = phi i64 [ %74, %68 ], [ 0, %63 ]
  %71 = phi ptr [ %75, %68 ], [ %65, %63 ]
  %72 = mul i64 %70, 5
  %73 = zext i16 %69 to i64
  %74 = add i64 %72, %73
  %75 = getelementptr inbounds i16, ptr %71, i64 1
  %76 = load i16, ptr %75, align 2, !tbaa !281
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %68, !llvm.loop !496

78:                                               ; preds = %68, %63
  %79 = phi i64 [ 0, %63 ], [ %74, %68 ]
  %80 = add i64 %79, 1
  %81 = urem i64 %80, %9
  %82 = load ptr, ptr %42, align 8, !tbaa !468
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %82, i64 %81
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %102, !llvm.loop !637

84:                                               ; preds = %1
  %85 = landingpad { ptr, i32 }
          cleanup
  %86 = load i64, ptr %13, align 8, !tbaa !474
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %14, align 8, !tbaa !476
  %90 = load ptr, ptr %3, align 8, !tbaa !477
  %91 = load ptr, ptr %90, align 8, !tbaa !124
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %89)
          to label %97 unwind label %94

94:                                               ; preds = %88
  %95 = landingpad { ptr, i32 }
          catch ptr null
  %96 = extractvalue { ptr, i32 } %95, 0
  call void @__clang_call_terminate(ptr %96) #22
  unreachable

97:                                               ; preds = %84, %88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %122

98:                                               ; preds = %32
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %120

100:                                              ; preds = %50
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %120

102:                                              ; preds = %78
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %120

104:                                              ; preds = %59
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !198
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !224
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !467
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !468
  %113 = load ptr, ptr %2, align 8, !tbaa !198
  store ptr %113, ptr %105, align 8, !tbaa !198
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %2, i64 0, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !224
  store i64 %115, ptr %107, align 8, !tbaa !224
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %2, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !467
  store i64 %117, ptr %109, align 8, !tbaa !467
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %2, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !468
  store ptr %119, ptr %111, align 8, !tbaa !468
  store ptr %106, ptr %2, align 8, !tbaa !198
  store i64 %108, ptr %114, align 8, !tbaa !224
  store i64 %110, ptr %116, align 8, !tbaa !467
  store ptr %112, ptr %118, align 8, !tbaa !468
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  ret void

120:                                              ; preds = %102, %100, %98
  %121 = phi { ptr, i32 } [ %101, %100 ], [ %99, %98 ], [ %103, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #21
  br label %122

122:                                              ; preds = %120, %97
  %123 = phi { ptr, i32 } [ %121, %120 ], [ %85, %97 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  resume { ptr, i32 } %123
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.21", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !225
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !197
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !225
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !229
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !232
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !225
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !229
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !197
  %20 = load ptr, ptr %19, align 8, !tbaa !124
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !225
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !229
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !232
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !225
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE9push_backERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #3 comdat align 2 !prof !122 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.21", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !225, !noalias !638
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !197, !noalias !638
  %8 = load ptr, ptr %7, align 8, !tbaa !124, !noalias !638
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !638
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !638
  store ptr %11, ptr %3, align 8, !tbaa !225, !noalias !638
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !229, !noalias !638
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !232, !noalias !638
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !225, !noalias !638
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.21", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !433
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !229
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !197
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !433
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !580
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !232
  store ptr %33, ptr %31, align 8, !tbaa !266
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !266
  %35 = load ptr, ptr %32, align 8, !tbaa !232
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<const unsigned short *, xalanc_1_10::XalanSourceTreeElement *>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !229
  store ptr %29, ptr %32, align 8, !tbaa !232
  store ptr %30, ptr %16, align 8, !tbaa !433
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.22", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !224
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !468
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !467
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !468
  %28 = load i64, ptr %12, align 8, !tbaa !224
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !198
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !224
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !224
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !641

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !198
  store ptr %42, ptr %5, align 8, !tbaa !198
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !224
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !467
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !124
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !468
  %51 = load i64, ptr %43, align 8, !tbaa !224
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !468
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !468
  %56 = load i64, ptr %43, align 8, !tbaa !224
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !468
  %60 = load i64, ptr %43, align 8, !tbaa !224
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !468
  %63 = load i64, ptr %12, align 8, !tbaa !224
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !198
  %67 = load i64, ptr %12, align 8, !tbaa !224
  %68 = load i64, ptr %19, align 8, !tbaa !467
  %69 = load ptr, ptr %15, align 8, !tbaa !468
  %70 = load ptr, ptr %5, align 8, !tbaa !198
  store ptr %70, ptr %0, align 8, !tbaa !198
  %71 = load i64, ptr %43, align 8, !tbaa !224
  store i64 %71, ptr %12, align 8, !tbaa !224
  %72 = load i64, ptr %44, align 8, !tbaa !467
  store i64 %72, ptr %19, align 8, !tbaa !467
  %73 = load ptr, ptr %50, align 8, !tbaa !468
  store ptr %73, ptr %15, align 8, !tbaa !468
  store ptr %66, ptr %5, align 8, !tbaa !198
  store i64 %67, ptr %43, align 8, !tbaa !224
  store i64 %68, ptr %44, align 8, !tbaa !467
  store ptr %69, ptr %50, align 8, !tbaa !468
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !642

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !643

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !644

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !645

114:                                              ; preds = %110, %106
  %115 = ptrtoint ptr %108 to i64
  %116 = sub i64 %115, %78
  %117 = ashr exact i64 %116, 5
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %121, %114
  %120 = icmp sgt i64 %9, 0
  br i1 %120, label %130, label %139

121:                                              ; preds = %114, %121
  %122 = phi i64 [ %128, %121 ], [ %117, %114 ]
  %123 = phi ptr [ %126, %121 ], [ %17, %114 ]
  %124 = phi ptr [ %125, %121 ], [ %108, %114 ]
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !630

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !644

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.22", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !224
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !467
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !468
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !198
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !224
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !224
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !198
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE10doPushBackERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !198
  %25 = load i64, ptr %4, align 8, !tbaa !224
  %26 = load i64, ptr %6, align 8, !tbaa !467
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !468
  %29 = load ptr, ptr %3, align 8, !tbaa !198
  store ptr %29, ptr %0, align 8, !tbaa !198
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !224
  store i64 %31, ptr %4, align 8, !tbaa !224
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !467
  store i64 %33, ptr %6, align 8, !tbaa !467
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !468
  store ptr %35, ptr %27, align 8, !tbaa !468
  store ptr %24, ptr %3, align 8, !tbaa !198
  store i64 %25, ptr %30, align 8, !tbaa !224
  store i64 %26, ptr %32, align 8, !tbaa !467
  store ptr %28, ptr %34, align 8, !tbaa !468
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.22", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !198
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !198
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !224
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !467
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !468
  %12 = load ptr, ptr %3, align 8, !tbaa !198
  store ptr %12, ptr %0, align 8, !tbaa !198
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !224
  store i64 %14, ptr %6, align 8, !tbaa !224
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !467
  store i64 %16, ptr %8, align 8, !tbaa !467
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !468
  store ptr %18, ptr %10, align 8, !tbaa !468
  store ptr %5, ptr %3, align 8, !tbaa !198
  store i64 %7, ptr %13, align 8, !tbaa !224
  store i64 %9, ptr %15, align 8, !tbaa !467
  store ptr %11, ptr %17, align 8, !tbaa !468
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2ERKSM_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.22", align 8
  store ptr %2, ptr %0, align 8, !tbaa !198
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !224
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !198
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !224
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !467
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !124
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !468
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !468
  %24 = load i64, ptr %9, align 8, !tbaa !224
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_PKSJ_SP_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !198
  %28 = load i64, ptr %6, align 8, !tbaa !224
  %29 = load i64, ptr %7, align 8, !tbaa !467
  %30 = load ptr, ptr %8, align 8, !tbaa !468
  %31 = load ptr, ptr %5, align 8, !tbaa !198
  store ptr %31, ptr %0, align 8, !tbaa !198
  %32 = load i64, ptr %14, align 8, !tbaa !224
  store i64 %32, ptr %6, align 8, !tbaa !224
  %33 = load i64, ptr %15, align 8, !tbaa !467
  store i64 %33, ptr %7, align 8, !tbaa !467
  %34 = load ptr, ptr %21, align 8, !tbaa !468
  store ptr %34, ptr %8, align 8, !tbaa !468
  store ptr %27, ptr %5, align 8, !tbaa !198
  store i64 %28, ptr %14, align 8, !tbaa !224
  store i64 %29, ptr %15, align 8, !tbaa !467
  store ptr %30, ptr %21, align 8, !tbaa !468
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !124
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !468
  store i64 %3, ptr %7, align 8, !tbaa !467
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  store ptr %2, ptr %0, align 8, !tbaa !477
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !497
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !477
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !497
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !474
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !124
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !476
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !476
  %24 = load i64, ptr %9, align 8, !tbaa !497
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !477
  %28 = load i64, ptr %6, align 8, !tbaa !497
  %29 = load i64, ptr %7, align 8, !tbaa !474
  %30 = load ptr, ptr %8, align 8, !tbaa !476
  %31 = load ptr, ptr %5, align 8, !tbaa !477
  store ptr %31, ptr %0, align 8, !tbaa !477
  %32 = load i64, ptr %14, align 8, !tbaa !497
  store i64 %32, ptr %6, align 8, !tbaa !497
  %33 = load i64, ptr %15, align 8, !tbaa !474
  store i64 %33, ptr %7, align 8, !tbaa !474
  %34 = load ptr, ptr %21, align 8, !tbaa !476
  store ptr %34, ptr %8, align 8, !tbaa !476
  store ptr %27, ptr %5, align 8, !tbaa !477
  store i64 %28, ptr %14, align 8, !tbaa !497
  store i64 %29, ptr %15, align 8, !tbaa !474
  store ptr %30, ptr %21, align 8, !tbaa !476
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !124
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !474
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !476
  %50 = load ptr, ptr %5, align 8, !tbaa !477
  %51 = load ptr, ptr %50, align 8, !tbaa !124
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #22
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !124
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !476
  store i64 %3, ptr %7, align 8, !tbaa !474
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !497
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !476
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !474
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !476
  %28 = load i64, ptr %12, align 8, !tbaa !497
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !270
  store ptr %34, ptr %32, align 8, !tbaa !270
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !646

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %42 = load ptr, ptr %0, align 8, !tbaa !477
  store ptr %42, ptr %5, align 8, !tbaa !477
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !497
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !474
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !124
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !476
  %51 = load i64, ptr %43, align 8, !tbaa !497
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !476
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !476
  %56 = load i64, ptr %43, align 8, !tbaa !497
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !476
  %60 = load i64, ptr %43, align 8, !tbaa !497
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !476
  %63 = load i64, ptr %12, align 8, !tbaa !497
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !477
  %67 = load i64, ptr %12, align 8, !tbaa !497
  %68 = load i64, ptr %19, align 8, !tbaa !474
  %69 = load ptr, ptr %15, align 8, !tbaa !476
  %70 = load ptr, ptr %5, align 8, !tbaa !477
  store ptr %70, ptr %0, align 8, !tbaa !477
  %71 = load i64, ptr %43, align 8, !tbaa !497
  store i64 %71, ptr %12, align 8, !tbaa !497
  %72 = load i64, ptr %44, align 8, !tbaa !474
  store i64 %72, ptr %19, align 8, !tbaa !474
  %73 = load ptr, ptr %50, align 8, !tbaa !476
  store ptr %73, ptr %15, align 8, !tbaa !476
  store ptr %66, ptr %5, align 8, !tbaa !477
  store i64 %67, ptr %43, align 8, !tbaa !497
  store i64 %68, ptr %44, align 8, !tbaa !474
  store ptr %69, ptr %50, align 8, !tbaa !476
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !124
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #22
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !474
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !476
  %89 = load ptr, ptr %5, align 8, !tbaa !477
  %90 = load ptr, ptr %89, align 8, !tbaa !124
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #22
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !647

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !648

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !270
  store ptr %122, ptr %120, align 8, !tbaa !270
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !649

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !650

135:                                              ; preds = %131, %127
  %136 = ptrtoint ptr %129 to i64
  %137 = sub i64 %136, %99
  %138 = ashr exact i64 %137, 3
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %142, %135
  %141 = icmp sgt i64 %9, 0
  br i1 %141, label %151, label %161

142:                                              ; preds = %135, %142
  %143 = phi i64 [ %149, %142 ], [ %138, %135 ]
  %144 = phi ptr [ %147, %142 ], [ %17, %135 ]
  %145 = phi ptr [ %146, %142 ], [ %129, %135 ]
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %145, i64 -1
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %144, i64 -1
  %148 = load ptr, ptr %146, align 8, !tbaa !270
  store ptr %148, ptr %147, align 8, !tbaa !270
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !651

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !270
  store ptr %155, ptr %153, align 8, !tbaa !270
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !649

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !497
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !497
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !474
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !476
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !270
  store ptr %13, ptr %12, align 8, !tbaa !270
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !497
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %21 = load ptr, ptr %0, align 8, !tbaa !477
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !477
  %24 = load i64, ptr %4, align 8, !tbaa !497
  %25 = load i64, ptr %6, align 8, !tbaa !474
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !476
  %28 = load ptr, ptr %3, align 8, !tbaa !477
  store ptr %28, ptr %0, align 8, !tbaa !477
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !497
  store i64 %30, ptr %4, align 8, !tbaa !497
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !474
  store i64 %32, ptr %6, align 8, !tbaa !474
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !476
  store ptr %34, ptr %26, align 8, !tbaa !476
  store ptr %23, ptr %3, align 8, !tbaa !477
  store i64 %24, ptr %29, align 8, !tbaa !497
  store i64 %25, ptr %31, align 8, !tbaa !474
  store ptr %27, ptr %33, align 8, !tbaa !476
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !124
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #22
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !474
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !476
  %52 = load ptr, ptr %3, align 8, !tbaa !477
  %53 = load ptr, ptr %52, align 8, !tbaa !124
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #22
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %4 = load ptr, ptr %0, align 8, !tbaa !477
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !477
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !497
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !474
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !476
  %12 = load ptr, ptr %3, align 8, !tbaa !477
  store ptr %12, ptr %0, align 8, !tbaa !477
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !497
  store i64 %14, ptr %6, align 8, !tbaa !497
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !474
  store i64 %16, ptr %8, align 8, !tbaa !474
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !476
  store ptr %18, ptr %10, align 8, !tbaa !476
  store ptr %5, ptr %3, align 8, !tbaa !477
  store i64 %7, ptr %13, align 8, !tbaa !497
  store i64 %9, ptr %15, align 8, !tbaa !474
  store ptr %11, ptr %17, align 8, !tbaa !476
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !124
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #22
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEaSERKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !474
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !497
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %12 = load ptr, ptr %0, align 8, !tbaa !477
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !477
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !497
  %16 = load i64, ptr %6, align 8, !tbaa !474
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !476
  %19 = load ptr, ptr %3, align 8, !tbaa !477
  store ptr %19, ptr %0, align 8, !tbaa !477
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !497
  store i64 %21, ptr %14, align 8, !tbaa !497
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !474
  store i64 %23, ptr %6, align 8, !tbaa !474
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !476
  store ptr %25, ptr %17, align 8, !tbaa !476
  store ptr %13, ptr %3, align 8, !tbaa !477
  store i64 %15, ptr %20, align 8, !tbaa !497
  store i64 %16, ptr %22, align 8, !tbaa !474
  store ptr %18, ptr %24, align 8, !tbaa !476
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !124
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !476
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !497
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !476
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !497
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !497
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !476
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !476
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !270
  store ptr %68, ptr %66, align 8, !tbaa !270
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !649

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEC2EmRKSJ_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.22", align 8
  store ptr %3, ptr %0, align 8, !tbaa !198
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  store ptr %3, ptr %5, align 8, !tbaa !198
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEE6insertEPSJ_mRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.22", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !198
  %14 = load i64, ptr %6, align 8, !tbaa !224
  %15 = load i64, ptr %12, align 8, !tbaa !467
  %16 = load ptr, ptr %11, align 8, !tbaa !468
  %17 = load ptr, ptr %5, align 8, !tbaa !198
  store ptr %17, ptr %0, align 8, !tbaa !198
  %18 = load i64, ptr %7, align 8, !tbaa !224
  store i64 %18, ptr %6, align 8, !tbaa !224
  %19 = load i64, ptr %10, align 8, !tbaa !467
  store i64 %19, ptr %12, align 8, !tbaa !467
  %20 = load ptr, ptr %9, align 8, !tbaa !468
  store ptr %20, ptr %11, align 8, !tbaa !468
  store ptr %13, ptr %5, align 8, !tbaa !198
  store i64 %14, ptr %7, align 8, !tbaa !224
  store i64 %15, ptr %10, align 8, !tbaa !467
  store ptr %16, ptr %9, align 8, !tbaa !468
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  resume { ptr, i32 } %22
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeDocument.cpp() #17 section ".text.startup" !prof !321 !PGOFuncName !652 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #21
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_staticNameStringE, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_staticNameStringE, ptr nonnull @__dso_handle) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!121}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120}
!35 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1013XalanDocumentC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!39 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!40 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!42 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!43 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!44 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm, i64 4}
!47 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 2}
!48 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!49 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv, i64 2}
!50 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev, i64 2}
!51 = !{ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev, i64 4}
!52 = !{ptr @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE15doRemoveEntriesEv, i64 2}
!53 = !{ptr @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEED2Ev, i64 2}
!54 = !{ptr @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEED2Ev, i64 4}
!55 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 402}
!56 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEED2Ev, ptr @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEED2Ev, i64 2}
!57 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument6createERN11xercesc_2_713MemoryManagerEbmmmmmm, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentC2ERN11xercesc_2_713MemoryManagerEbmmmmmm, i64 2}
!58 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 2}
!59 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocatorD1Ev, i64 2}
!60 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEED2Ev, i64 2}
!61 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEED2Ev, i64 2}
!62 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEED2Ev, i64 2}
!63 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev, i64 4}
!64 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorD1Ev, i64 2}
!65 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1028XalanSourceTreeTextAllocatorD1Ev, i64 2}
!66 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorD1Ev, i64 2}
!67 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorD1Ev, i64 2}
!68 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1033XalanSourceTreeElementNAAllocatorD1Ev, i64 2}
!69 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocatorD1Ev, i64 2}
!70 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1032XalanSourceTreeElementAAllocatorD1Ev, i64 2}
!71 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1031XalanSourceTreeCommentAllocatorD1Ev, i64 2}
!72 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorD1Ev, i64 2}
!73 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocatorD1Ev, i64 2}
!74 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocumentD2Ev, ptr @_ZN11xalanc_1_1013XalanDocumentD2Ev, i64 2}
!75 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b, ptr @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_710AttributesE, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, i64 2498733}
!77 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 832911}
!78 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE, i64 832911}
!79 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b, ptr @_ZN11xalanc_1_1035XalanSourceTreeElementNANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPNS_9XalanNodeES7_S7_m, i64 643374}
!80 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm, i64 402}
!81 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b, ptr @_ZN11xalanc_1_1034XalanSourceTreeElementANSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_PNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESA_SA_m, i64 189536}
!82 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createElementNodeEPKtS2_S2_RKN11xercesc_2_710AttributesEPNS_9XalanNodeES8_S8_b, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesERKN11xercesc_2_710AttributesEPPNS_19XalanSourceTreeAttrEPNS_22XalanSourceTreeElementEb, i64 189536}
!83 = !{ptr @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_710AttributesE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 6}
!84 = !{ptr @_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_710AttributesE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 3}
!85 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesERKN11xercesc_2_710AttributesEPPNS_19XalanSourceTreeAttrEPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE, i64 5}
!86 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesERKN11xercesc_2_710AttributesEPPNS_19XalanSourceTreeAttrEPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesERKN11xercesc_2_710AttributesEPPNS_19XalanSourceTreeAttrEPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb, i64 379072}
!88 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_, ptr @_ZN11xalanc_1_1015isXMLWhitespaceEPKtjj, i64 632206}
!89 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, i64 12880}
!90 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_, ptr @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocator6createERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m, i64 12880}
!91 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_, ptr @_ZN11xalanc_1_1023XalanDOMStringAllocator6createEPKtj, i64 619326}
!92 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument14createTextNodeEPKtjPNS_9XalanNodeES4_S4_, ptr @_ZN11xalanc_1_1028XalanSourceTreeTextAllocator6createERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m, i64 619326}
!93 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, i64 912714}
!94 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument17createTextIWSNodeEPKtjPNS_9XalanNodeES4_S4_, ptr @_ZN11xalanc_1_1031XalanSourceTreeTextIWSAllocator6createERKNS_14XalanDOMStringEPNS_9XalanNodeES5_S5_m, i64 912714}
!95 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 401826}
!96 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 803648}
!97 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 401824}
!98 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, i64 401832}
!99 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1033XalanSourceTreeAttributeAllocator6createERKNS_14XalanDOMStringES3_PNS_22XalanSourceTreeElementEm, i64 200911}
!100 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument16createAttributesEPPNS_19XalanSourceTreeAttrERKN11xercesc_2_710AttributesEmPNS_22XalanSourceTreeElementEb, ptr @_ZN11xalanc_1_1035XalanSourceTreeAttributeNSAllocator6createERKNS_14XalanDOMStringES3_S3_S3_S3_PNS_22XalanSourceTreeElementEm, i64 2}
!101 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument15appendChildNodeEPNS_22XalanSourceTreeElementE, ptr @_ZN11xalanc_1_1021XalanSourceTreeHelper13appendSiblingEPNS_23XalanSourceTreeDocumentERPNS_9XalanNodeES4_, i64 1}
!102 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 1}
!103 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!104 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument9terminateEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!114 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm, ptr @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE9push_backERKS9_, i64 402}
!115 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEE11createEntryEmm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_, i64 402}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 402}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 402}
!118 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeDocument.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 2}
!119 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeDocument.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!120 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeDocument.cpp, ptr @__cxa_atexit, i64 2}
!121 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!122 = !{!"function_entry_count", i64 0}
!123 = !{!"function_entry_count", i64 2}
!124 = !{!125, !125, i64 0}
!125 = !{!"vtable pointer", !126, i64 0}
!126 = !{!"Simple C++ TBAA"}
!127 = !{!"branch_weights", i32 2, i32 0}
!128 = !{!129, !130, i64 0}
!129 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!130 = !{!"any pointer", !131, i64 0}
!131 = !{!"omnipotent char", !126, i64 0}
!132 = !{!133, !134, i64 24}
!133 = !{!"_ZTSN11xalanc_1_1019XalanArrayAllocatorIPNS_19XalanSourceTreeAttrEEE", !129, i64 0, !134, i64 24, !130, i64 32}
!134 = !{!"long", !131, i64 0}
!135 = !{!133, !130, i64 32}
!136 = !{!137, !134, i64 688}
!137 = !{!"_ZTSN11xalanc_1_1023XalanSourceTreeDocumentE", !138, i64 0, !130, i64 8, !130, i64 16, !140, i64 24, !143, i64 64, !146, i64 104, !149, i64 144, !152, i64 184, !155, i64 224, !158, i64 264, !161, i64 304, !164, i64 344, !167, i64 384, !170, i64 424, !170, i64 536, !133, i64 648, !134, i64 688, !178, i64 696, !179, i64 704, !185, i64 840, !171, i64 976, !190, i64 1016}
!138 = !{!"_ZTSN11xalanc_1_1013XalanDocumentE", !139, i64 0}
!139 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!140 = !{!"_ZTSN11xalanc_1_1033XalanSourceTreeAttributeAllocatorE", !141, i64 0}
!141 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XalanSourceTreeAttrENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !142, i64 16}
!142 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_19XalanSourceTreeAttrEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!143 = !{!"_ZTSN11xalanc_1_1035XalanSourceTreeAttributeNSAllocatorE", !144, i64 0}
!144 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_21XalanSourceTreeAttrNSENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !145, i64 16}
!145 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanSourceTreeAttrNSEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!146 = !{!"_ZTSN11xalanc_1_1031XalanSourceTreeCommentAllocatorE", !147, i64 0}
!147 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XalanSourceTreeCommentENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !148, i64 16}
!148 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XalanSourceTreeCommentEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!149 = !{!"_ZTSN11xalanc_1_1032XalanSourceTreeElementAAllocatorE", !150, i64 0}
!150 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_23XalanSourceTreeElementAENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !151, i64 16}
!151 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_23XalanSourceTreeElementAEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!152 = !{!"_ZTSN11xalanc_1_1034XalanSourceTreeElementANSAllocatorE", !153, i64 0}
!153 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_25XalanSourceTreeElementANSENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !154, i64 16}
!154 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_25XalanSourceTreeElementANSEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!155 = !{!"_ZTSN11xalanc_1_1033XalanSourceTreeElementNAAllocatorE", !156, i64 0}
!156 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_24XalanSourceTreeElementNAENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !157, i64 16}
!157 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_24XalanSourceTreeElementNAEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!158 = !{!"_ZTSN11xalanc_1_1035XalanSourceTreeElementNANSAllocatorE", !159, i64 0}
!159 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_26XalanSourceTreeElementNANSENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !160, i64 16}
!160 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_26XalanSourceTreeElementNANSEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!161 = !{!"_ZTSN11xalanc_1_1045XalanSourceTreeProcessingInstructionAllocatorE", !162, i64 0}
!162 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_36XalanSourceTreeProcessingInstructionENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !163, i64 16}
!163 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_36XalanSourceTreeProcessingInstructionEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!164 = !{!"_ZTSN11xalanc_1_1028XalanSourceTreeTextAllocatorE", !165, i64 0}
!165 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_19XalanSourceTreeTextENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !166, i64 16}
!166 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_19XalanSourceTreeTextEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!167 = !{!"_ZTSN11xalanc_1_1031XalanSourceTreeTextIWSAllocatorE", !168, i64 0}
!168 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_22XalanSourceTreeTextIWSENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !169, i64 16}
!169 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_22XalanSourceTreeTextIWSEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!170 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !171, i64 8, !134, i64 48, !174, i64 56}
!171 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !172, i64 0}
!172 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !134, i64 8, !173, i64 16}
!173 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!174 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !134, i64 0, !134, i64 8, !175, i64 16, !134, i64 40, !177, i64 48}
!175 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !176, i64 0}
!176 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !130, i64 0, !130, i64 8, !134, i64 16}
!177 = !{!"int", !131, i64 0}
!178 = !{!"bool", !131, i64 0}
!179 = !{!"_ZTSN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEEE", !180, i64 0, !181, i64 1, !130, i64 8, !182, i64 16, !134, i64 24, !134, i64 32, !183, i64 40, !183, i64 64, !184, i64 88, !134, i64 120, !134, i64 128}
!180 = !{!"_ZTSN11xalanc_1_1027hash_null_terminated_arraysItEE"}
!181 = !{!"_ZTSN11xalanc_1_1028equal_null_terminated_arraysItEE"}
!182 = !{!"float", !131, i64 0}
!183 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!184 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !130, i64 0, !134, i64 8, !134, i64 16, !130, i64 24}
!185 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEEE", !186, i64 0, !187, i64 1, !130, i64 8, !182, i64 16, !134, i64 24, !134, i64 32, !188, i64 40, !188, i64 64, !189, i64 88, !134, i64 120, !134, i64 128}
!186 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!187 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!188 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!189 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEE", !130, i64 0, !134, i64 8, !134, i64 16, !130, i64 24}
!190 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !191, i64 0, !177, i64 32}
!191 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !130, i64 0, !134, i64 8, !134, i64 16, !130, i64 24}
!192 = !{!137, !178, i64 696}
!193 = !{!179, !130, i64 8}
!194 = !{!179, !182, i64 16}
!195 = !{!179, !134, i64 24}
!196 = !{!179, !134, i64 32}
!197 = !{!183, !130, i64 0}
!198 = !{!184, !130, i64 0}
!199 = !{!179, !134, i64 128}
!200 = !{!185, !130, i64 8}
!201 = !{!185, !182, i64 16}
!202 = !{!185, !134, i64 24}
!203 = !{!185, !134, i64 32}
!204 = !{!188, !130, i64 0}
!205 = !{!189, !130, i64 0}
!206 = !{!185, !134, i64 128}
!207 = !{!189, !134, i64 8}
!208 = !{!188, !130, i64 8}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!211 = distinct !{!211, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!212 = !{!213, !130, i64 24}
!213 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE4NodeE", !214, i64 0, !130, i64 16, !130, i64 24}
!214 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE5EntryE", !130, i64 0, !178, i64 8}
!215 = !{!213, !130, i64 16}
!216 = !{}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!219 = distinct !{!219, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!220 = !{!214, !130, i64 0}
!221 = distinct !{!221, !222, !223}
!222 = !{!"llvm.loop.mustprogress"}
!223 = !{!"llvm.loop.unroll.disable"}
!224 = !{!184, !134, i64 8}
!225 = !{!183, !130, i64 8}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5beginEv: argument 0"}
!228 = distinct !{!228, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5beginEv"}
!229 = !{!230, !130, i64 24}
!230 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE4NodeE", !231, i64 0, !130, i64 16, !130, i64 24}
!231 = !{!"_ZTSN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE5EntryE", !130, i64 0, !178, i64 8}
!232 = !{!230, !130, i64 16}
!233 = !{!234}
!234 = distinct !{!234, !235, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!235 = distinct !{!235, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!236 = !{!231, !130, i64 0}
!237 = distinct !{!237, !222, !223}
!238 = !{!129, !130, i64 8}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!241 = distinct !{!241, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!242 = !{!"branch_weights", i32 1, i32 1}
!243 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!244 = !{!245, !130, i64 24}
!245 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE4NodeE", !246, i64 0, !130, i64 16, !130, i64 24}
!246 = !{!"_ZTSSt4pairImPN11xalanc_1_1011XalanVectorIPNS0_19XalanSourceTreeAttrENS0_31MemoryManagedConstructionTraitsIS3_EEEEE", !134, i64 0, !130, i64 8}
!247 = !{!245, !130, i64 16}
!248 = !{!"branch_weights", i32 0, i32 2}
!249 = !{!250}
!250 = distinct !{!250, !251, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!251 = distinct !{!251, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!252 = !{!253}
!253 = distinct !{!253, !254, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!254 = distinct !{!254, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!255 = !{!"branch_weights", i32 0, i32 404}
!256 = !{!"branch_weights", i32 2, i32 402}
!257 = !{!246, !130, i64 8}
!258 = !{!"branch_weights", i32 0, i32 402}
!259 = distinct !{!259, !222, !223}
!260 = !{!"VP", i32 0, i64 402, i64 -7405368087501025645, i64 402}
!261 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!262 = !{!"function_entry_count", i64 5}
!263 = !{!137, !130, i64 8}
!264 = !{!137, !130, i64 16}
!265 = !{!191, !134, i64 8}
!266 = !{!130, !130, i64 0}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZNK11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE4findERKS2_: argument 0"}
!269 = distinct !{!269, !"_ZNK11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE4findERKS2_"}
!270 = !{!271, !130, i64 0}
!271 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEE", !130, i64 0}
!272 = !{!273, !275, !277}
!273 = distinct !{!273, !274, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!274 = distinct !{!274, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!275 = distinct !{!275, !276, !"_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE3endEv: argument 0"}
!276 = distinct !{!276, !"_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE3endEv"}
!277 = distinct !{!277, !278, !"_ZNK11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE3endEv: argument 0"}
!278 = distinct !{!278, !"_ZNK11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE3endEv"}
!279 = !{!280, !130, i64 8}
!280 = !{!"_ZTSSt4pairIKPKtPN11xalanc_1_1022XalanSourceTreeElementEE", !130, i64 0, !130, i64 8}
!281 = !{!282, !282, i64 0}
!282 = !{!"short", !131, i64 0}
!283 = distinct !{!283, !222, !223}
!284 = !{!190, !177, i64 32}
!285 = distinct !{!285, !222, !223}
!286 = distinct !{!286, !222, !223}
!287 = distinct !{!287, !222, !223}
!288 = !{!"branch_weights", i32 189536, i32 0}
!289 = !{!"branch_weights", i32 402, i32 189134}
!290 = !{!291, !130, i64 24}
!291 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS2_EEEE", !130, i64 0, !134, i64 8, !134, i64 16, !130, i64 24}
!292 = !{!291, !134, i64 8}
!293 = !{!246, !134, i64 0}
!294 = !{!"function_entry_count", i64 832911}
!295 = !{!"VP", i32 0, i64 832911, i64 -3439415451337185200, i64 832911}
!296 = !{!"branch_weights", i32 1, i32 832910}
!297 = !{!"branch_weights", i32 5381734, i32 0, i32 832911}
!298 = !{!"branch_weights", i32 832911, i32 5381734}
!299 = !{!"branch_weights", i32 643375, i32 189536}
!300 = !{!"branch_weights", i32 643375, i32 0}
!301 = !{!191, !130, i64 0}
!302 = !{!"VP", i32 0, i64 643375, i64 -2853454152170147193, i64 643375}
!303 = !{!191, !134, i64 16}
!304 = !{!191, !130, i64 24}
!305 = !{!"branch_weights", i32 1, i32 189535}
!306 = !{!"branch_weights", i32 421, i32 189114}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!309 = distinct !{!309, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!310 = !{!"branch_weights", i32 1, i32 421}
!311 = !{!"branch_weights", i32 0, i32 422}
!312 = !{!313}
!313 = distinct !{!313, !314, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!314 = distinct !{!314, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!315 = !{!"branch_weights", i32 1, i32 401}
!316 = !{!"branch_weights", i32 20, i32 81769}
!317 = !{!"branch_weights", i32 81769, i32 0}
!318 = !{!"branch_weights", i32 401, i32 81388}
!319 = distinct !{!319, !222, !223}
!320 = !{!"VP", i32 0, i64 189536, i64 -2853454152170147193, i64 189536}
!321 = !{!"function_entry_count", i64 1}
!322 = !{!"XalanSourceTreeDocument.cpp;_ZN11xalanc_1_10L24hasXMLNamespaceAttributeERKN11xercesc_2_710AttributesE"}
!323 = !{!"VP", i32 0, i64 1, i64 -3439415451337185200, i64 1}
!324 = !{!"branch_weights", i32 127, i32 1}
!325 = !{!"branch_weights", i32 127, i32 257}
!326 = distinct !{!326, !222, !223}
!327 = !{!"VP", i32 0, i64 3, i64 -5266475600623767156, i64 3}
!328 = !{!"branch_weights", i32 0, i32 3}
!329 = !{!"function_entry_count", i64 189536}
!330 = !{!"function_entry_count", i64 632206}
!331 = !{!"branch_weights", i32 12880, i32 619326}
!332 = !{i8 0, i8 2}
!333 = !{!"branch_weights", i32 619326, i32 0}
!334 = !{!"function_entry_count", i64 912714}
!335 = !{!336, !338}
!336 = distinct !{!336, !337, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!337 = distinct !{!337, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!338 = distinct !{!338, !339, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!339 = distinct !{!339, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!340 = !{!341, !130, i64 0}
!341 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEE", !130, i64 0}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE4findERKS1_: argument 0"}
!344 = distinct !{!344, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE4findERKS1_"}
!345 = !{!346, !348, !350}
!346 = distinct !{!346, !347, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!347 = distinct !{!347, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!348 = distinct !{!348, !349, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!349 = distinct !{!349, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!350 = distinct !{!350, !351, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!351 = distinct !{!351, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!352 = !{!"function_entry_count", i64 379072}
!353 = !{!"VP", i32 0, i64 379072, i64 -3439415451337185200, i64 379072}
!354 = !{!"branch_weights", i32 1, i32 379071}
!355 = !{!"VP", i32 0, i64 401826, i64 -5266475600623767156, i64 401826}
!356 = !{!"branch_weights", i32 401826, i32 2708560}
!357 = !{!"branch_weights", i32 0, i32 401826}
!358 = !{!"branch_weights", i32 2, i32 401824}
!359 = !{!"branch_weights", i32 0, i32 401824}
!360 = !{!"branch_weights", i32 200913, i32 200913}
!361 = !{!"VP", i32 0, i64 200913, i64 -8241568845323746615, i64 200913}
!362 = !{!"VP", i32 0, i64 200913, i64 397428374081393011, i64 200913}
!363 = !{!"branch_weights", i32 200913, i32 70}
!364 = !{!"branch_weights", i32 200911, i32 2}
!365 = !{!"VP", i32 0, i64 2, i64 1610464025508687845, i64 2}
!366 = !{!"branch_weights", i32 8, i32 2, i32 0}
!367 = !{!"VP", i32 0, i64 200913, i64 -1206796649018048647, i64 200913}
!368 = !{!"branch_weights", i32 0, i32 200913}
!369 = !{!280, !130, i64 0}
!370 = !{!"branch_weights", i32 379071, i32 22755}
!371 = distinct !{!371, !222, !223}
!372 = !{!"branch_weights", i32 1, i32 0}
!373 = !{!177, !177, i64 0}
!374 = !{!"branch_weights", i32 0, i32 1}
!375 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!376 = !{!"function_entry_count", i64 42470003}
!377 = !{!"branch_weights", i32 52000, i32 42418003}
!378 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!379 = !{!"function_entry_count", i64 41614}
!380 = !{!"branch_weights", i32 0, i32 41614}
!381 = !{!"branch_weights", i32 12, i32 41602}
!382 = !{!"branch_weights", i32 5, i32 7}
!383 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!384 = !{!"branch_weights", i32 354, i32 41248}
!385 = !{!"branch_weights", i32 40889, i32 359}
!386 = !{!"branch_weights", i32 40581, i32 1021}
!387 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!388 = !{!"function_entry_count", i64 22}
!389 = !{!"branch_weights", i32 64551590, i32 18}
!390 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!391 = !{!"branch_weights", i32 18, i32 0}
!392 = !{!"branch_weights", i32 4, i32 64551586}
!393 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!394 = !{!"function_entry_count", i64 155828046}
!395 = !{!"branch_weights", i32 0, i32 155828046}
!396 = !{!"branch_weights", i32 133170777, i32 22657269}
!397 = !{!"branch_weights", i32 20, i32 133170757}
!398 = !{!"branch_weights", i32 1, i32 19024395}
!399 = !{!"branch_weights", i32 19024395, i32 -26420601}
!400 = distinct !{!400, !222, !223}
!401 = !{!"branch_weights", i32 20748786, i32 1908483}
!402 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!403 = !{!"branch_weights", i32 20748786, i32 0}
!404 = !{!"branch_weights", i32 0, i32 20748786}
!405 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!406 = !{!"branch_weights", i32 0, i32 1908483}
!407 = !{!"branch_weights", i32 1, i32 1908482}
!408 = !{!"branch_weights", i32 1908482, i32 49797853}
!409 = distinct !{!409, !222, !223}
!410 = !{!"branch_weights", i32 1908482, i32 1}
!411 = distinct !{!411, !222, !223}
!412 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!413 = distinct !{!413, !222, !223}
!414 = !{!"function_entry_count", i64 124150652}
!415 = !{!"branch_weights", i32 124150652, i32 0}
!416 = !{!"function_entry_count", i64 64551586}
!417 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!418 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!419 = !{!"branch_weights", i32 42418193, i32 22133393}
!420 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!421 = !{!"function_entry_count", i64 4}
!422 = !{!"branch_weights", i32 4, i32 0}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5beginEv: argument 0"}
!425 = distinct !{!425, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5beginEv"}
!426 = !{!427}
!427 = distinct !{!427, !428, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!428 = distinct !{!428, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!429 = !{!430}
!430 = distinct !{!430, !431, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEppEi: argument 0"}
!431 = distinct !{!431, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEppEi"}
!432 = distinct !{!432, !222, !223}
!433 = !{!183, !130, i64 16}
!434 = !{!435}
!435 = distinct !{!435, !436, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!436 = distinct !{!436, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!439 = distinct !{!439, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!440 = !{!441}
!441 = distinct !{!441, !442, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEppEi: argument 0"}
!442 = distinct !{!442, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEppEi"}
!443 = distinct !{!443, !222, !223}
!444 = !{!188, !130, i64 16}
!445 = !{!"function_entry_count", i64 402}
!446 = !{!291, !134, i64 16}
!447 = !{!291, !130, i64 0}
!448 = !{!449}
!449 = distinct !{!449, !450, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!450 = distinct !{!450, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!451 = !{!452}
!452 = distinct !{!452, !453, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!453 = distinct !{!453, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEppEi: argument 0"}
!456 = distinct !{!456, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEppEi"}
!457 = distinct !{!457, !222, !223}
!458 = !{!129, !130, i64 16}
!459 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!460 = !{!461}
!461 = distinct !{!461, !462, !"_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE5beginEv: argument 0"}
!462 = distinct !{!462, !"_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE5beginEv"}
!463 = !{!464, !461}
!464 = distinct !{!464, !465, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5beginEv: argument 0"}
!465 = distinct !{!465, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5beginEv"}
!466 = distinct !{!466, !222, !223}
!467 = !{!184, !134, i64 16}
!468 = !{!184, !130, i64 24}
!469 = distinct !{!469, !222, !223}
!470 = !{!471}
!471 = distinct !{!471, !472, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!472 = distinct !{!472, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!473 = !{!231, !178, i64 8}
!474 = !{!475, !134, i64 16}
!475 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS5_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEE", !130, i64 0, !134, i64 8, !134, i64 16, !130, i64 24}
!476 = !{!475, !130, i64 24}
!477 = !{!475, !130, i64 0}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!480 = distinct !{!480, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!481 = !{!482, !479}
!482 = distinct !{!482, !483, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!483 = distinct !{!483, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!484 = distinct !{!484, !222, !223}
!485 = !{!189, !134, i64 16}
!486 = !{!189, !130, i64 24}
!487 = distinct !{!487, !222, !223}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!490 = distinct !{!490, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!491 = !{!214, !178, i64 8}
!492 = !{!493, !134, i64 16}
!493 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEE", !130, i64 0, !134, i64 8, !134, i64 16, !130, i64 24}
!494 = !{!493, !130, i64 24}
!495 = !{!493, !130, i64 0}
!496 = distinct !{!496, !222, !223}
!497 = !{!475, !134, i64 8}
!498 = distinct !{!498, !222, !223}
!499 = distinct !{!499, !222, !223}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE3endEv: argument 0"}
!502 = distinct !{!502, !"_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE3endEv"}
!503 = !{!504, !501}
!504 = distinct !{!504, !505, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!505 = distinct !{!505, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!506 = !{!"VP", i32 0, i64 402, i64 8345045103670217670, i64 402}
!507 = !{!508}
!508 = distinct !{!508, !509, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!509 = distinct !{!509, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!510 = !{!511}
!511 = distinct !{!511, !512, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!512 = distinct !{!512, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEmmEv"}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!515 = distinct !{!515, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!516 = !{!517}
!517 = distinct !{!517, !518, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!518 = distinct !{!518, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!519 = !{!520}
!520 = distinct !{!520, !521, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!521 = distinct !{!521, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPNS_19XalanSourceTreeAttrENS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!522 = !{!"branch_weights", i32 402, i32 0}
!523 = !{!"branch_weights", i32 401, i32 200599}
!524 = distinct !{!524, !222, !223}
!525 = distinct !{!525, !222, !223}
!526 = distinct !{!526, !222, !223}
!527 = distinct !{!527, !222, !223}
!528 = distinct !{!528, !222, !223}
!529 = !{!493, !134, i64 8}
!530 = distinct !{!530, !222, !223}
!531 = !{!532}
!532 = distinct !{!532, !533, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!533 = distinct !{!533, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringES1_NS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!534 = !{!535, !532}
!535 = distinct !{!535, !536, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!536 = distinct !{!536, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!537 = !{!538}
!538 = distinct !{!538, !539, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!539 = distinct !{!539, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!540 = !{!541}
!541 = distinct !{!541, !542, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!542 = distinct !{!542, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!543 = !{!544}
!544 = distinct !{!544, !545, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!545 = distinct !{!545, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!548 = distinct !{!548, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!551 = distinct !{!551, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!552 = !{!553}
!553 = distinct !{!553, !554, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!554 = distinct !{!554, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!555 = !{!556}
!556 = distinct !{!556, !557, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!557 = distinct !{!557, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!558 = !{!559}
!559 = distinct !{!559, !560, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!560 = distinct !{!560, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!561 = !{!562}
!562 = distinct !{!562, !563, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!563 = distinct !{!563, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!564 = distinct !{!564, !222, !223}
!565 = distinct !{!565, !222, !223}
!566 = distinct !{!566, !222, !223}
!567 = distinct !{!567, !222, !223}
!568 = distinct !{!568, !222, !223}
!569 = distinct !{!569, !222, !223}
!570 = !{!571}
!571 = distinct !{!571, !572, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!572 = distinct !{!572, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!573 = !{!574}
!574 = distinct !{!574, !575, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!575 = distinct !{!575, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!576 = distinct !{!576, !222, !223}
!577 = !{!578}
!578 = distinct !{!578, !579, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!579 = distinct !{!579, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringES2_NS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!580 = !{i64 0, i64 8, !266, i64 8, i64 1, !581}
!581 = !{!178, !178, i64 0}
!582 = distinct !{!582, !222, !223}
!583 = distinct !{!583, !222, !223}
!584 = distinct !{!584, !222, !223}
!585 = distinct !{!585, !222, !223}
!586 = distinct !{!586, !222, !223}
!587 = distinct !{!587, !222, !223}
!588 = distinct !{!588, !222, !223}
!589 = distinct !{!589, !222, !223}
!590 = distinct !{!590, !222, !223}
!591 = distinct !{!591, !222, !223}
!592 = distinct !{!592, !222, !223}
!593 = !{!594, !596}
!594 = distinct !{!594, !595, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!595 = distinct !{!595, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!596 = distinct !{!596, !597, !"_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE3endEv: argument 0"}
!597 = distinct !{!597, !"_ZN11xalanc_1_108XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS2_EEE3endEv"}
!598 = !{!599}
!599 = distinct !{!599, !600, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!600 = distinct !{!600, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!601 = !{!602}
!602 = distinct !{!602, !603, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!603 = distinct !{!603, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv"}
!604 = !{!605}
!605 = distinct !{!605, !606, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!606 = distinct !{!606, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!607 = !{!608}
!608 = distinct !{!608, !609, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!609 = distinct !{!609, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!610 = !{!611}
!611 = distinct !{!611, !612, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!612 = distinct !{!612, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv"}
!613 = !{!614}
!614 = distinct !{!614, !615, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!615 = distinct !{!615, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!616 = !{!617}
!617 = distinct !{!617, !618, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!618 = distinct !{!618, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv"}
!619 = !{!620}
!620 = distinct !{!620, !621, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!621 = distinct !{!621, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!622 = !{!623}
!623 = distinct !{!623, !624, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!624 = distinct !{!624, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEmmEv"}
!625 = distinct !{!625, !222, !223}
!626 = distinct !{!626, !222, !223}
!627 = distinct !{!627, !222, !223}
!628 = distinct !{!628, !222, !223}
!629 = distinct !{!629, !222, !223}
!630 = distinct !{!630, !222, !223}
!631 = !{!632}
!632 = distinct !{!632, !633, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5beginEv: argument 0"}
!633 = distinct !{!633, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE5beginEv"}
!634 = !{!635}
!635 = distinct !{!635, !636, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!636 = distinct !{!636, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!637 = distinct !{!637, !222, !223}
!638 = !{!639}
!639 = distinct !{!639, !640, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv: argument 0"}
!640 = distinct !{!640, !"_ZN11xalanc_1_109XalanListINS_8XalanMapIPKtPNS_22XalanSourceTreeElementENS_17XalanMapKeyTraitsIS3_EEE5EntryEE3endEv"}
!641 = distinct !{!641, !222, !223}
!642 = distinct !{!642, !222, !223}
!643 = distinct !{!643, !222, !223}
!644 = distinct !{!644, !222, !223}
!645 = distinct !{!645, !222, !223}
!646 = distinct !{!646, !222, !223}
!647 = distinct !{!647, !222, !223}
!648 = distinct !{!648, !222, !223}
!649 = distinct !{!649, !222, !223}
!650 = distinct !{!650, !222, !223}
!651 = distinct !{!651, !222, !223}
!652 = !{!"XalanSourceTreeDocument.cpp;_GLOBAL__sub_I_XalanSourceTreeDocument.cpp"}
