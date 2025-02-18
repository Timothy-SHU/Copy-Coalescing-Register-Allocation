; ModuleID = 'KeyTable.cpp'
source_filename = "KeyTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::KeyTable" = type { ptr, ptr, %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.0", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberReference" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::KeyDeclaration" = type { ptr, ptr, ptr, ptr, i64, i64 }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::pair" = type { %"class.xalanc_1_10::XalanQNameByReference", %"class.xalanc_1_10::XalanMap.5" }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanMap.5" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to.6", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.8", %"class.xalanc_1_10::XalanList.8", %"class.xalanc_1_10::XalanVector.9", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to.6" = type { i8 }
%"class.xalanc_1_10::XalanList.8" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"struct.std::pair.12" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::MutableNodeRefList" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.14", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.14" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"struct.xalanc_1_10::XalanMapIterator.10" = type { %"struct.xalanc_1_10::XalanListIteratorBase.11" }
%"struct.xalanc_1_10::XalanListIteratorBase.11" = type { ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.20" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.19" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEED2Ev = comdat any

$_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEEixERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEEixERKS1_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S6_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S2_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS5_5EntryEEENS_9XalanListISE_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE4findERKS1_ = comdat any

$_ZNK11xalanc_1_1010XalanQName4hashEv = comdat any

$_ZNK11xalanc_1_1010XalanQName6equalsERKS0_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE13doCreateEntryERKS1_PKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE9push_backERKSA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEC2EmRKSH_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_mRKSH_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_PKSH_SN_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEC2ERKSH_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE6insertEPSE_PKSE_SK_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE10doPushBackERKSE_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEaSERKSH_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS2_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS2_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS7_ = comdat any

@_ZN11xalanc_1_108KeyTable11s_dummyListE = dso_local global %"class.xalanc_1_10::MutableNodeRefList" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_108KeyTableE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_108KeyTableE, ptr @_ZN11xalanc_1_108KeyTableD2Ev, ptr @_ZN11xalanc_1_108KeyTableD0Ev] }, align 8
@_ZN11xalanc_1_10L12theEmptyListE = internal global %"class.xalanc_1_10::NodeRefList" zeroinitializer, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_108KeyTableE = dso_local constant [25 x i8] c"N11xalanc_1_108KeyTableE\00", align 1
@_ZTIN11xalanc_1_108KeyTableE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_108KeyTableE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZTVN11xalanc_1_1021XalanQNameByReferenceE = external unnamed_addr constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_KeyTable.cpp, ptr null }]

@_ZN11xalanc_1_108KeyTableC1EPNS_9XalanNodeERKNS_14PrefixResolverERKNS_11XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS7_EEEERNS_26StylesheetExecutionContextE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_108KeyTableC2EPNS_9XalanNodeERKNS_14PrefixResolverERKNS_11XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS7_EEEERNS_26StylesheetExecutionContextE
@_ZN11xalanc_1_108KeyTableD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_108KeyTableD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018MutableNodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(44)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108KeyTableC2EPNS_9XalanNodeERKNS_14PrefixResolverERKNS_11XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS7_EEEERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_108KeyTableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !51
  %10 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 3
  store float 7.500000e-01, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 4
  store i64 29, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 5
  store i64 0, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 6
  store ptr %8, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 6, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr %8, ptr %15, align 8, !tbaa !62
  %16 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 7, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store ptr %8, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 8, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  store i64 50, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !65
  %22 = icmp eq ptr %1, null
  br i1 %22, label %123, label %23

23:                                               ; preds = %5
  %24 = icmp eq i64 %21, 0
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  br label %26

26:                                               ; preds = %23, %120
  %27 = phi ptr [ %1, %23 ], [ %121, %120 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %32 unwind label %47

32:                                               ; preds = %26
  %33 = icmp eq i32 %31, 1
  br i1 %33, label %34, label %49

34:                                               ; preds = %32
  %35 = load ptr, ptr %27, align 8, !tbaa !44
  %36 = getelementptr inbounds ptr, ptr %35, i64 11
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %39 unwind label %47

39:                                               ; preds = %34
  %40 = load ptr, ptr %38, align 8, !tbaa !44
  %41 = getelementptr inbounds ptr, ptr %40, i64 5
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %44 unwind label %47

44:                                               ; preds = %39
  %45 = icmp eq i32 %43, 0
  %46 = select i1 %45, ptr null, ptr %38
  br label %49

47:                                               ; preds = %39, %34, %26
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %211

49:                                               ; preds = %44, %32
  %50 = phi ptr [ null, %32 ], [ %46, %44 ]
  %51 = phi i32 [ 0, %32 ], [ %43, %44 ]
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = icmp eq ptr %50, null
  br label %55

55:                                               ; preds = %53, %91
  %56 = phi i32 [ -1, %53 ], [ %66, %91 ]
  %57 = phi ptr [ %27, %53 ], [ %92, %91 ]
  br i1 %24, label %65, label %67

58:                                               ; preds = %91, %49
  %59 = load ptr, ptr %27, align 8, !tbaa !44
  %60 = getelementptr inbounds ptr, ptr %59, i64 7
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %63 unwind label %99

63:                                               ; preds = %58
  %64 = icmp eq ptr %62, null
  br i1 %64, label %94, label %120

65:                                               ; preds = %80, %55
  %66 = add nsw i32 %56, 1
  br i1 %54, label %91, label %84

67:                                               ; preds = %55, %80
  %68 = phi i64 [ %82, %80 ], [ 0, %55 ]
  %69 = phi i32 [ %81, %80 ], [ 0, %55 ]
  %70 = load ptr, ptr %25, align 8, !tbaa !67
  %71 = getelementptr inbounds %"class.xalanc_1_10::KeyDeclaration", ptr %70, i64 %68
  %72 = getelementptr inbounds %"class.xalanc_1_10::KeyDeclaration", ptr %70, i64 %68, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !68
  %74 = invoke noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129) %73, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %75 unwind label %78

75:                                               ; preds = %67
  %76 = icmp eq i32 %74, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %75
  invoke void @_ZN11xalanc_1_108KeyTable21processKeyDeclarationERNS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEEERKNS_14KeyDeclarationEPNS_9XalanNodeERKNS_14PrefixResolverERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %80 unwind label %78

78:                                               ; preds = %77, %67
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %211

80:                                               ; preds = %77, %75
  %81 = add i32 %69, 1
  %82 = zext i32 %81 to i64
  %83 = icmp ugt i64 %21, %82
  br i1 %83, label %67, label %65, !llvm.loop !70

84:                                               ; preds = %65
  %85 = load ptr, ptr %50, align 8, !tbaa !44
  %86 = getelementptr inbounds ptr, ptr %85, i64 3
  %87 = load ptr, ptr %86, align 8
  %88 = invoke noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(8) %50, i32 noundef %66)
          to label %91 unwind label %89

89:                                               ; preds = %84
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %211

91:                                               ; preds = %84, %65
  %92 = phi ptr [ %57, %65 ], [ %88, %84 ]
  %93 = icmp eq i32 %66, %51
  br i1 %93, label %58, label %55, !llvm.loop !73

94:                                               ; preds = %63, %117
  %95 = phi ptr [ %118, %117 ], [ %27, %63 ]
  %96 = icmp eq ptr %95, %1
  br i1 %96, label %120, label %101

97:                                               ; preds = %101, %108
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %211

99:                                               ; preds = %58
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %211

101:                                              ; preds = %94
  %102 = load ptr, ptr %95, align 8, !tbaa !44
  %103 = getelementptr inbounds ptr, ptr %102, i64 10
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %95)
          to label %106 unwind label %97

106:                                              ; preds = %101
  %107 = icmp eq ptr %105, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %106
  %109 = load ptr, ptr %95, align 8, !tbaa !44
  %110 = getelementptr inbounds ptr, ptr %109, i64 5
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(8) %95)
          to label %113 unwind label %97

113:                                              ; preds = %108
  %114 = icmp eq ptr %112, %1
  %115 = icmp eq ptr %112, null
  %116 = or i1 %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %106, %113
  %118 = phi ptr [ %112, %113 ], [ %95, %106 ]
  %119 = icmp eq ptr %105, null
  br i1 %119, label %94, label %120, !llvm.loop !74

120:                                              ; preds = %117, %94, %113, %63
  %121 = phi ptr [ %62, %63 ], [ %105, %117 ], [ null, %94 ], [ null, %113 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %26, !llvm.loop !75

123:                                              ; preds = %120, %5
  %124 = load i64, ptr %12, align 8, !tbaa !61
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %210, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %14, align 8, !tbaa !76, !noalias !77
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load ptr, ptr %13, align 8, !tbaa !62, !noalias !77
  %131 = load ptr, ptr %130, align 8, !tbaa !44, !noalias !77
  %132 = getelementptr inbounds ptr, ptr %131, i64 2
  %133 = load ptr, ptr %132, align 8, !noalias !77
  %134 = invoke noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(8) %130, i64 noundef 32)
          to label %135 unwind label %198

135:                                              ; preds = %129
  store ptr %134, ptr %14, align 8, !tbaa !76, !noalias !77
  %136 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %134, i64 0, i32 2
  store ptr %134, ptr %136, align 8, !tbaa !82, !noalias !77
  %137 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %134, i64 0, i32 1
  store ptr %134, ptr %137, align 8, !tbaa !86, !noalias !77
  br label %138

138:                                              ; preds = %126, %135
  %139 = load ptr, ptr %14, align 8, !tbaa !76, !noalias !87
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load ptr, ptr %13, align 8, !tbaa !62, !noalias !88
  %143 = load ptr, ptr %142, align 8, !tbaa !44, !noalias !88
  %144 = getelementptr inbounds ptr, ptr %143, i64 2
  %145 = load ptr, ptr %144, align 8, !noalias !88
  %146 = invoke noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(8) %142, i64 noundef 32)
          to label %147 unwind label %200

147:                                              ; preds = %141
  store ptr %146, ptr %14, align 8, !tbaa !76, !noalias !88
  %148 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %146, i64 0, i32 2
  store ptr %146, ptr %148, align 8, !tbaa !82, !noalias !88
  %149 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %146, i64 0, i32 1
  store ptr %146, ptr %149, align 8, !tbaa !86, !noalias !88
  br label %150

150:                                              ; preds = %138, %147
  %151 = load ptr, ptr %14, align 8, !tbaa !76, !noalias !88
  %152 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !82, !noalias !88
  br label %154

154:                                              ; preds = %150, %206
  %155 = phi ptr [ %153, %150 ], [ %208, %206 ]
  %156 = load ptr, ptr %155, align 8, !tbaa !93
  %157 = getelementptr inbounds %"struct.std::pair", ptr %156, i64 0, i32 1, i32 5
  %158 = load i64, ptr %157, align 8, !tbaa !94
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %206, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %"struct.std::pair", ptr %156, i64 0, i32 1, i32 6, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !100, !noalias !101
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = getelementptr inbounds %"struct.std::pair", ptr %156, i64 0, i32 1, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !106, !noalias !101
  %167 = load ptr, ptr %166, align 8, !tbaa !44, !noalias !101
  %168 = getelementptr inbounds ptr, ptr %167, i64 2
  %169 = load ptr, ptr %168, align 8, !noalias !101
  %170 = invoke noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(8) %166, i64 noundef 32)
          to label %171 unwind label %202

171:                                              ; preds = %164
  store ptr %170, ptr %161, align 8, !tbaa !100, !noalias !101
  %172 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %170, i64 0, i32 2
  store ptr %170, ptr %172, align 8, !tbaa !107, !noalias !101
  %173 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %170, i64 0, i32 1
  store ptr %170, ptr %173, align 8, !tbaa !110, !noalias !101
  br label %174

174:                                              ; preds = %160, %171
  %175 = load ptr, ptr %161, align 8, !tbaa !100, !noalias !87
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %174
  %178 = getelementptr inbounds %"struct.std::pair", ptr %156, i64 0, i32 1, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !106, !noalias !111
  %180 = load ptr, ptr %179, align 8, !tbaa !44, !noalias !111
  %181 = getelementptr inbounds ptr, ptr %180, i64 2
  %182 = load ptr, ptr %181, align 8, !noalias !111
  %183 = invoke noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(8) %179, i64 noundef 32)
          to label %184 unwind label %204

184:                                              ; preds = %177
  store ptr %183, ptr %161, align 8, !tbaa !100, !noalias !111
  %185 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %183, i64 0, i32 2
  store ptr %183, ptr %185, align 8, !tbaa !107, !noalias !111
  %186 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %183, i64 0, i32 1
  store ptr %183, ptr %186, align 8, !tbaa !110, !noalias !111
  br label %187

187:                                              ; preds = %174, %184
  %188 = load ptr, ptr %161, align 8, !tbaa !100, !noalias !111
  %189 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %188, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !107, !noalias !111
  br label %191

191:                                              ; preds = %191, %187
  %192 = phi ptr [ %190, %187 ], [ %196, %191 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !116
  %194 = getelementptr inbounds %"struct.std::pair.12", ptr %193, i64 0, i32 1, i32 1
  store i32 1, ptr %194, align 8, !tbaa !117
  %195 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %192, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !107, !noalias !123
  %197 = icmp eq ptr %196, %175
  br i1 %197, label %206, label %191, !llvm.loop !126

198:                                              ; preds = %129
  %199 = landingpad { ptr, i32 }
          cleanup
  br label %211

200:                                              ; preds = %141
  %201 = landingpad { ptr, i32 }
          cleanup
  br label %211

202:                                              ; preds = %164
  %203 = landingpad { ptr, i32 }
          cleanup
  br label %211

204:                                              ; preds = %177
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %211

206:                                              ; preds = %191, %154
  %207 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %155, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !82, !noalias !127
  %209 = icmp eq ptr %208, %139
  br i1 %209, label %210, label %154, !llvm.loop !130

210:                                              ; preds = %206, %123
  ret void

211:                                              ; preds = %97, %99, %198, %202, %204, %200, %47, %78, %89
  %212 = phi { ptr, i32 } [ %48, %47 ], [ %79, %78 ], [ %90, %89 ], [ %199, %198 ], [ %201, %200 ], [ %205, %204 ], [ %203, %202 ], [ %98, %97 ], [ %100, %99 ]
  tail call void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %6) #16
  resume { ptr, i32 } %212
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZNK11xalanc_1_105XPath13getMatchScoreEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_108KeyTable21processKeyDeclarationERNS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEEERKNS_14KeyDeclarationEPNS_9XalanNodeERKNS_14PrefixResolverERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %7 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %8 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %9 = getelementptr inbounds %"class.xalanc_1_10::KeyDeclaration", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  call void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(129) %10, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L12theEmptyListE, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %11 = load ptr, ptr %6, align 8, !tbaa !132
  %12 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !134
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %35, label %15

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %16 = load ptr, ptr %1, align 8, !tbaa !139
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %17 unwind label %29

17:                                               ; preds = %15
  %18 = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %19 unwind label %31

19:                                               ; preds = %17
  %20 = load ptr, ptr %6, align 8, !tbaa !132
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %25 unwind label %31

25:                                               ; preds = %19
  %26 = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %18, ptr noundef nonnull align 8 dereferenceable(36) %24)
          to label %27 unwind label %31

27:                                               ; preds = %25
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %26, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %28 unwind label %31

28:                                               ; preds = %27
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %109

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %33

31:                                               ; preds = %27, %25, %19, %17
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #16
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  br label %115

35:                                               ; preds = %5
  %36 = load ptr, ptr %11, align 8, !tbaa !44
  %37 = getelementptr inbounds ptr, ptr %36, i64 13
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %40 unwind label %63

40:                                               ; preds = %35
  %41 = load ptr, ptr %39, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %45 unwind label %65

45:                                               ; preds = %40
  %46 = load ptr, ptr %4, align 8, !tbaa !44
  %47 = getelementptr inbounds ptr, ptr %46, i64 23
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef nonnull align 8 dereferenceable(36) ptr %48(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %50 unwind label %67

50:                                               ; preds = %45
  %51 = icmp eq i32 %44, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %49, i64 0, i32 1
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %49, i64 0, i32 1
  br label %69

55:                                               ; preds = %89, %50
  %56 = load ptr, ptr %4, align 8, !tbaa !44
  %57 = getelementptr inbounds ptr, ptr %56, i64 24
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef zeroext i1 %58(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %109 unwind label %60

60:                                               ; preds = %55
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  call void @__clang_call_terminate(ptr %62) #17
  unreachable

63:                                               ; preds = %35
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %115

65:                                               ; preds = %40
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %115

67:                                               ; preds = %45
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %115

69:                                               ; preds = %52, %89
  %70 = phi i32 [ 0, %52 ], [ %90, %89 ]
  %71 = load ptr, ptr %39, align 8, !tbaa !44
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef %70)
          to label %75 unwind label %92

75:                                               ; preds = %69
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %76 unwind label %92

76:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  %77 = load ptr, ptr %1, align 8, !tbaa !139
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %77)
          to label %78 unwind label %94

78:                                               ; preds = %76
  %79 = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %80 unwind label %96

80:                                               ; preds = %78
  %81 = invoke noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %79, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %82 unwind label %96

82:                                               ; preds = %80
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %81, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %83 unwind label %96

83:                                               ; preds = %82
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  %84 = load i64, ptr %53, align 8, !tbaa !140
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i64, ptr %53, align 8, !tbaa !140
  %88 = sub i64 %87, %84
  store i64 %88, ptr %53, align 8, !tbaa !140
  br label %89

89:                                               ; preds = %86, %83
  store i32 0, ptr %54, align 8, !tbaa !142
  %90 = add nuw i32 %70, 1
  %91 = icmp eq i32 %90, %44
  br i1 %91, label %55, label %69, !llvm.loop !144

92:                                               ; preds = %75, %69
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %100

94:                                               ; preds = %76
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %98

96:                                               ; preds = %82, %80, %78
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #16
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  br label %100

100:                                              ; preds = %92, %98
  %101 = phi { ptr, i32 } [ %93, %92 ], [ %99, %98 ]
  %102 = load ptr, ptr %4, align 8, !tbaa !44
  %103 = getelementptr inbounds ptr, ptr %102, i64 24
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef zeroext i1 %104(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %49)
          to label %115 unwind label %106

106:                                              ; preds = %100
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = extractvalue { ptr, i32 } %107, 0
  call void @__clang_call_terminate(ptr %108) #17
  unreachable

109:                                              ; preds = %55, %28
  %110 = load ptr, ptr %6, align 8, !tbaa !132
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %110)
          to label %114 unwind label %111

111:                                              ; preds = %109
  %112 = landingpad { ptr, i32 }
          catch ptr null
  %113 = extractvalue { ptr, i32 } %112, 0
  call void @__clang_call_terminate(ptr %113) #17
  unreachable

114:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  ret void

115:                                              ; preds = %67, %100, %63, %65, %33
  %116 = phi { ptr, i32 } [ %34, %33 ], [ %64, %63 ], [ %66, %65 ], [ %68, %67 ], [ %101, %100 ]
  %117 = load ptr, ptr %6, align 8, !tbaa !132
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %117)
          to label %121 unwind label %118

118:                                              ; preds = %115
  %119 = landingpad { ptr, i32 }
          catch ptr null
  %120 = extractvalue { ptr, i32 } %119, 0
  call void @__clang_call_terminate(ptr %120) #17
  unreachable

121:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  resume { ptr, i32 } %116
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !145
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !76, !noalias !146
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !62, !noalias !146
  %13 = load ptr, ptr %12, align 8, !tbaa !44, !noalias !146
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !146
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !76, !noalias !146
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !82, !noalias !146
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !86, !noalias !146
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !76, !noalias !146
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !82, !noalias !87
  %27 = load ptr, ptr %8, align 8, !tbaa !76, !noalias !149
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !62, !noalias !149
  %31 = load ptr, ptr %30, align 8, !tbaa !44, !noalias !149
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !149
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !76, !noalias !149
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !82, !noalias !149
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !86, !noalias !149
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !76, !noalias !149
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !93
  %43 = load ptr, ptr %22, align 8, !tbaa !51
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !152

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #16
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #16
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #16
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
  tail call void @__clang_call_terminate(ptr %57) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_108KeyTable6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeERKNS_14PrefixResolverERKNS_11XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsISA_EEEERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = load ptr, ptr %0, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 152)
  invoke void @_ZN11xalanc_1_108KeyTableC2EPNS_9XalanNodeERKNS_14PrefixResolverERKNS_11XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS7_EEEERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(152) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %10 unwind label %11

10:                                               ; preds = %5
  ret ptr %9

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = icmp eq ptr %9, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %9)
          to label %21 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #17
  unreachable

21:                                               ; preds = %11, %14
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_108KeyTableD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 align 2 !prof !43 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_108KeyTableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_108KeyTableD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #5 align 2 !prof !43 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_108KeyTableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #16
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZNK11xalanc_1_108KeyTable15getNodeSetByKeyERKNS_10XalanQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.10", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %6 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16, !noalias !153
  invoke void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %8 unwind label %47

8:                                                ; preds = %3
  %9 = load ptr, ptr %5, align 8, !tbaa !156, !noalias !153
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16, !noalias !153
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 6, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !76, !noalias !158
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::KeyTable", ptr %0, i64 0, i32 2, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !62, !noalias !158
  %16 = load ptr, ptr %15, align 8, !tbaa !44, !noalias !158
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8, !noalias !158
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 32), !noalias !158
  store ptr %19, ptr %10, align 8, !tbaa !76, !noalias !158
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %19, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !82, !noalias !158
  %21 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %19, i64 0, i32 1
  store ptr %19, ptr %21, align 8, !tbaa !86, !noalias !158
  br label %22

22:                                               ; preds = %8, %13
  %23 = load ptr, ptr %10, align 8, !tbaa !76, !noalias !158
  %24 = icmp eq ptr %9, %23
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %9, align 8, !tbaa !93
  %27 = getelementptr inbounds %"struct.std::pair", ptr %26, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16, !noalias !165
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %27, ptr noundef nonnull align 8 dereferenceable(36) %2), !noalias !165
  %28 = load ptr, ptr %4, align 8, !tbaa !168, !noalias !165
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16, !noalias !165
  %29 = getelementptr inbounds %"struct.std::pair", ptr %26, i64 0, i32 1, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !100, !noalias !170
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = getelementptr inbounds %"struct.std::pair", ptr %26, i64 0, i32 1, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !106, !noalias !170
  %35 = load ptr, ptr %34, align 8, !tbaa !44, !noalias !170
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8, !noalias !170
  %38 = call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef 32), !noalias !170
  store ptr %38, ptr %29, align 8, !tbaa !100, !noalias !170
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %38, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !107, !noalias !170
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %38, i64 0, i32 1
  store ptr %38, ptr %40, align 8, !tbaa !110, !noalias !170
  br label %41

41:                                               ; preds = %25, %32
  %42 = load ptr, ptr %29, align 8, !tbaa !100, !noalias !170
  %43 = icmp eq ptr %28, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %28, align 8, !tbaa !116
  %46 = getelementptr inbounds %"struct.std::pair.12", ptr %45, i64 0, i32 1
  br label %49

47:                                               ; preds = %3
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  resume { ptr, i32 } %48

49:                                               ; preds = %41, %44
  %50 = phi ptr [ %46, %44 ], [ undef, %41 ]
  br i1 %43, label %51, label %52

51:                                               ; preds = %49, %22
  br label %52

52:                                               ; preds = %49, %51
  %53 = phi ptr [ @_ZN11xalanc_1_108KeyTable11s_dummyListE, %51 ], [ %50, %49 ]
  ret ptr %53
}

declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011NodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERKNS_15NodeRefListBaseERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %7 = load ptr, ptr %5, align 8, !tbaa !44
  %8 = getelementptr inbounds ptr, ptr %7, i64 10
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %10 unwind label %18

10:                                               ; preds = %6
  %11 = load ptr, ptr %5, align 8, !tbaa !44
  %12 = getelementptr inbounds ptr, ptr %11, i64 11
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %17 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #17
  unreachable

17:                                               ; preds = %10
  ret void

18:                                               ; preds = %6
  %19 = landingpad { ptr, i32 }
          cleanup
  %20 = load ptr, ptr %5, align 8, !tbaa !44
  %21 = getelementptr inbounds ptr, ptr %20, i64 11
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %26 unwind label %23

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #17
  unreachable

26:                                               ; preds = %18
  resume { ptr, i32 } %19
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(136) ptr @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !76, !noalias !177
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !62, !noalias !177
  %11 = load ptr, ptr %10, align 8, !tbaa !44, !noalias !177
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !177
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !177
  store ptr %14, ptr %5, align 8, !tbaa !76, !noalias !177
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !82, !noalias !177
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !86, !noalias !177
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !76, !noalias !177
  %19 = load ptr, ptr %3, align 8, !tbaa !156
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE13doCreateEntryERKS1_PKS6_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !156
  store ptr %22, ptr %3, align 8, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !156
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = getelementptr inbounds %"struct.std::pair", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(44) ptr @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEEixERKS1_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.10", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.10", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.10") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !100, !noalias !182
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !106, !noalias !182
  %11 = load ptr, ptr %10, align 8, !tbaa !44, !noalias !182
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !182
  %14 = call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !182
  store ptr %14, ptr %5, align 8, !tbaa !100, !noalias !182
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !107, !noalias !182
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !110, !noalias !182
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !100, !noalias !182
  %19 = load ptr, ptr %3, align 8, !tbaa !168
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS2_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null)
  %22 = load ptr, ptr %4, align 8, !tbaa !168
  store ptr %22, ptr %3, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %3, align 8, !tbaa !168
  %25 = load ptr, ptr %24, align 8, !tbaa !116
  %26 = getelementptr inbounds %"struct.std::pair.12", ptr %25, i64 0, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %26
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !43 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !82, !noalias !187
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !76, !noalias !190
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !62, !noalias !190
  %14 = load ptr, ptr %13, align 8, !tbaa !44, !noalias !190
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !190
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !76, !noalias !190
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !82, !noalias !190
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !86, !noalias !190
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !76, !noalias !190
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !82, !noalias !193
  %27 = load ptr, ptr %0, align 8, !tbaa !62
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !196

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !197
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  %40 = load ptr, ptr %0, align 8, !tbaa !62
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !76
  %46 = load ptr, ptr %0, align 8, !tbaa !62
  %47 = load ptr, ptr %46, align 8, !tbaa !44
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
  tail call void @__clang_call_terminate(ptr %59) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %10 = load ptr, ptr %7, align 8, !tbaa !76, !noalias !201
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8, !tbaa !62, !noalias !201
  %14 = load ptr, ptr %13, align 8, !tbaa !44, !noalias !201
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !201
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !201
  store ptr %17, ptr %7, align 8, !tbaa !76, !noalias !201
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !82, !noalias !201
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !86, !noalias !201
  br label %20

20:                                               ; preds = %9, %12
  %21 = load ptr, ptr %7, align 8, !tbaa !76, !noalias !201
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !82, !noalias !201
  store ptr %23, ptr %2, align 8, !tbaa !156, !alias.scope !198
  call void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S6_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %24 = load i64, ptr %3, align 8, !tbaa !61
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !204

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !205
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !145
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !207

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !206
  %18 = load ptr, ptr %0, align 8, !tbaa !63
  %19 = load ptr, ptr %18, align 8, !tbaa !44
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
  tail call void @__clang_call_terminate(ptr %25) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S6_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS8_5EntryEEENS_9XalanListISH_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %3 = load ptr, ptr %1, align 8, !tbaa !156
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %"struct.std::pair", ptr %4, i64 0, i32 1
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %5) #16
  tail call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !76, !noalias !208
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !62, !noalias !208
  %12 = load ptr, ptr %11, align 8, !tbaa !44, !noalias !208
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !208
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !208
  store ptr %15, ptr %6, align 8, !tbaa !76, !noalias !208
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !82, !noalias !208
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !86, !noalias !208
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !76, !noalias !208
  %20 = load ptr, ptr %1, align 8, !tbaa !156
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !82
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %26, i64 0, i32 2
  store ptr %24, ptr %27, align 8, !tbaa !82
  %28 = load ptr, ptr %23, align 8, !tbaa !82
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %28, i64 0, i32 1
  store ptr %26, ptr %29, align 8, !tbaa !86
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %19, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  store ptr %31, ptr %25, align 8, !tbaa !86
  store ptr %19, ptr %23, align 8, !tbaa !82
  %32 = load ptr, ptr %30, align 8, !tbaa !86
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %32, i64 0, i32 2
  store ptr %20, ptr %33, align 8, !tbaa !82
  store ptr %20, ptr %30, align 8, !tbaa !86
  br label %34

34:                                               ; preds = %18, %22
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry", ptr %20, i64 0, i32 1
  store i8 1, ptr %35, align 8, !tbaa !211
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %37 = load i64, ptr %36, align 8, !tbaa !61
  %38 = add i64 %37, -1
  store i64 %38, ptr %36, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !212
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !100, !noalias !213
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !106, !noalias !213
  %13 = load ptr, ptr %12, align 8, !tbaa !44, !noalias !213
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !213
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !100, !noalias !213
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !107, !noalias !213
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !110, !noalias !213
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !100, !noalias !213
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !107, !noalias !87
  %27 = load ptr, ptr %8, align 8, !tbaa !100, !noalias !216
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !106, !noalias !216
  %31 = load ptr, ptr %30, align 8, !tbaa !44, !noalias !216
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !216
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !100, !noalias !216
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !107, !noalias !216
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !110, !noalias !216
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !100, !noalias !216
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !116
  %43 = load ptr, ptr %22, align 8, !tbaa !219
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !220

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #16
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #16
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #16
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
  tail call void @__clang_call_terminate(ptr %57) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.10", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !94
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %10 = load ptr, ptr %7, align 8, !tbaa !100, !noalias !224
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8, !tbaa !106, !noalias !224
  %14 = load ptr, ptr %13, align 8, !tbaa !44, !noalias !224
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !224
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !224
  store ptr %17, ptr %7, align 8, !tbaa !100, !noalias !224
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !107, !noalias !224
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !110, !noalias !224
  br label %20

20:                                               ; preds = %9, %12
  %21 = load ptr, ptr %7, align 8, !tbaa !100, !noalias !224
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !107, !noalias !224
  store ptr %23, ptr %2, align 8, !tbaa !168, !alias.scope !221
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S2_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS5_5EntryEEENS_9XalanListISE_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %24 = load i64, ptr %3, align 8, !tbaa !94
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !227

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !228
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !212
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !230

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !229
  %18 = load ptr, ptr %0, align 8, !tbaa !231
  %19 = load ptr, ptr %18, align 8, !tbaa !44
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
  tail call void @__clang_call_terminate(ptr %25) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.8", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !107, !noalias !232
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !100, !noalias !235
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !106, !noalias !235
  %14 = load ptr, ptr %13, align 8, !tbaa !44, !noalias !235
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !235
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !100, !noalias !235
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !107, !noalias !235
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !110, !noalias !235
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !100, !noalias !235
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !107, !noalias !238
  %27 = load ptr, ptr %0, align 8, !tbaa !106
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !241

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.8", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !242
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !107
  %40 = load ptr, ptr %0, align 8, !tbaa !106
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !100
  %46 = load ptr, ptr %0, align 8, !tbaa !106
  %47 = load ptr, ptr %46, align 8, !tbaa !44
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
  tail call void @__clang_call_terminate(ptr %59) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_S2_EEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS5_5EntryEEENS_9XalanListISE_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %3 = load ptr, ptr %1, align 8, !tbaa !168
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds %"struct.std::pair.12", ptr %4, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1018MutableNodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(44) %5) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !100, !noalias !243
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !106, !noalias !243
  %12 = load ptr, ptr %11, align 8, !tbaa !44, !noalias !243
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !243
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !243
  store ptr %15, ptr %6, align 8, !tbaa !100, !noalias !243
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !107, !noalias !243
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !110, !noalias !243
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !100, !noalias !243
  %20 = load ptr, ptr %1, align 8, !tbaa !168
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !107
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %26, i64 0, i32 2
  store ptr %24, ptr %27, align 8, !tbaa !107
  %28 = load ptr, ptr %23, align 8, !tbaa !107
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %28, i64 0, i32 1
  store ptr %26, ptr %29, align 8, !tbaa !110
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %19, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !110
  store ptr %31, ptr %25, align 8, !tbaa !110
  store ptr %19, ptr %23, align 8, !tbaa !107
  %32 = load ptr, ptr %30, align 8, !tbaa !110
  %33 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %32, i64 0, i32 2
  store ptr %20, ptr %33, align 8, !tbaa !107
  store ptr %20, ptr %30, align 8, !tbaa !110
  br label %34

34:                                               ; preds = %18, %22
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry", ptr %20, i64 0, i32 1
  store i8 1, ptr %35, align 8, !tbaa !246
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 5
  %37 = load i64, ptr %36, align 8, !tbaa !94
  %38 = add i64 %37, -1
  store i64 %38, ptr %36, align 8, !tbaa !94
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !247 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !248
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !249

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !250
  %8 = load ptr, ptr %0, align 8, !tbaa !251
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !252

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !253
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !255
  %8 = load ptr, ptr %0, align 8, !tbaa !256
  %9 = load ptr, ptr %8, align 8, !tbaa !44
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
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !257
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !259
  %8 = load ptr, ptr %0, align 8, !tbaa !260
  %9 = load ptr, ptr %8, align 8, !tbaa !44
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
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !61
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !145
  %10 = tail call noundef i32 @_ZNK11xalanc_1_1010XalanQName4hashEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %11 = zext i32 %10 to i64
  %12 = urem i64 %11, %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %14, i64 %12, i32 3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %14, i64 %12, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !261
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %15, align 8, !tbaa !259
  br label %21

21:                                               ; preds = %19, %33
  %22 = phi i1 [ %38, %33 ], [ %18, %19 ]
  %23 = phi ptr [ %34, %33 ], [ %20, %19 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !156
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry", ptr %24, i64 0, i32 1
  %26 = load i8, ptr %25, align 8, !tbaa !211, !range !262, !noundef !87
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load ptr, ptr %24, align 8, !tbaa !93
  %30 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %29)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %23, align 8, !tbaa !156
  store ptr %32, ptr %0, align 8, !tbaa !156
  br i1 %22, label %39, label %54

33:                                               ; preds = %28, %21
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 1
  %35 = load ptr, ptr %15, align 8, !tbaa !259
  %36 = load i64, ptr %16, align 8, !tbaa !261
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %35, i64 %36
  %38 = icmp eq ptr %34, %37
  br i1 %38, label %39, label %21, !llvm.loop !263

39:                                               ; preds = %33, %7, %31, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !76, !noalias !267
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !62, !noalias !267
  %46 = load ptr, ptr %45, align 8, !tbaa !44, !noalias !267
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8, !noalias !267
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef 32), !noalias !267
  store ptr %49, ptr %40, align 8, !tbaa !76, !noalias !267
  %50 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %49, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !82, !noalias !267
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %49, i64 0, i32 1
  store ptr %49, ptr %51, align 8, !tbaa !86, !noalias !267
  br label %52

52:                                               ; preds = %39, %43
  %53 = load ptr, ptr %40, align 8, !tbaa !76, !noalias !267
  store ptr %53, ptr %0, align 8, !tbaa !156, !alias.scope !264
  br label %54

54:                                               ; preds = %31, %52
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1010XalanQName4hashEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !270 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !271
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !140
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %5, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10, !prof !272
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !142
  %14 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj(ptr noundef %11, i32 noundef %13)
  %15 = load ptr, ptr %0, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !273
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !140
  %21 = icmp eq i64 %20, 0
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %23, !prof !274
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %18, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !142
  %27 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj(ptr noundef %24, i32 noundef %26)
  %28 = add i32 %27, 1
  %29 = urem i32 %14, %28
  ret i32 %29
}

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 !prof !275 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !276
  %7 = load ptr, ptr %1, align 8, !tbaa !44
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !277
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %10)
  br i1 %11, label %12, label %22, !prof !278

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !44
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !279
  %17 = load ptr, ptr %1, align 8, !tbaa !44
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !280
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %20)
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !94
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !212
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !140
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %2, i64 0, i32 3
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
  br i1 %27, label %28, label %18, !llvm.loop !283

28:                                               ; preds = %18
  %29 = add i64 %24, 1
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ 1, %7 ], [ %29, %28 ]
  %32 = urem i64 %31, %9
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 8, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !229
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %34, i64 %32, i32 3
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %34, i64 %32, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !284
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 8, !tbaa !255
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi i1 [ %58, %53 ], [ %38, %39 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !168
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry", ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !246, !range !262, !noundef !87
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !116
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr %43, align 8, !tbaa !168
  store ptr %52, ptr %0, align 8, !tbaa !168
  br i1 %42, label %59, label %74

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %43, i64 1
  %55 = load ptr, ptr %35, align 8, !tbaa !255
  %56 = load i64, ptr %36, align 8, !tbaa !284
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %55, i64 %56
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %41, !llvm.loop !285

59:                                               ; preds = %53, %30, %51, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !100, !noalias !289
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !106, !noalias !289
  %66 = load ptr, ptr %65, align 8, !tbaa !44, !noalias !289
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !289
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 32), !noalias !289
  store ptr %69, ptr %60, align 8, !tbaa !100, !noalias !289
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !107, !noalias !289
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !110, !noalias !289
  br label %72

72:                                               ; preds = %59, %63
  %73 = load ptr, ptr %60, align 8, !tbaa !100, !noalias !289
  store ptr %73, ptr %0, align 8, !tbaa !168, !alias.scope !286
  br label %74

74:                                               ; preds = %51, %72
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE13doCreateEntryERKS1_PKS6_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.20", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !145
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !206
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  store ptr %18, ptr %5, align 8, !tbaa !260
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !257
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !259
  %27 = load ptr, ptr %5, align 8, !tbaa !260
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !257
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !259
  %41 = load ptr, ptr %5, align 8, !tbaa !260
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #17
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !59
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !61
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !145
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !145
  %62 = call noundef i32 @_ZNK11xalanc_1_1010XalanQName4hashEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %63 = zext i32 %62 to i64
  %64 = urem i64 %63, %61
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %66 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %65)
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !51
  %70 = load ptr, ptr %69, align 8, !tbaa !44
  %71 = getelementptr inbounds ptr, ptr %70, i64 2
  %72 = load ptr, ptr %71, align 8
  %73 = call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %69, i64 noundef 160)
  store ptr %73, ptr %6, align 8, !tbaa !93
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %74, align 8, !tbaa !211
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE9push_backERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %75

75:                                               ; preds = %67, %60
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !76, !noalias !292
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load ptr, ptr %65, align 8, !tbaa !62, !noalias !292
  %81 = load ptr, ptr %80, align 8, !tbaa !44, !noalias !292
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8, !noalias !292
  %84 = call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %80, i64 noundef 32), !noalias !292
  store ptr %84, ptr %76, align 8, !tbaa !76, !noalias !292
  %85 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %84, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !82, !noalias !292
  %86 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %84, i64 0, i32 1
  store ptr %84, ptr %86, align 8, !tbaa !86, !noalias !292
  br label %87

87:                                               ; preds = %75, %79
  %88 = load ptr, ptr %76, align 8, !tbaa !76, !noalias !292
  %89 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !86, !noalias !295
  %91 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry", ptr %90, i64 0, i32 1
  store i8 0, ptr %91, align 8, !tbaa !211
  %92 = load ptr, ptr %90, align 8, !tbaa !93
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanQNameByReferenceE, i64 0, inrange i32 0, i64 2), ptr %92, align 8, !tbaa !44
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %92, i64 0, i32 1
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByReference", ptr %2, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %94, ptr noundef nonnull align 8 dereferenceable(16) %95, i64 16, i1 false)
  %96 = icmp eq ptr %3, null
  %97 = load ptr, ptr %90, align 8, !tbaa !93
  br i1 %96, label %101, label %98

98:                                               ; preds = %87
  %99 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1
  %100 = load ptr, ptr %93, align 8, !tbaa !51
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %99, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %100)
  br label %114

101:                                              ; preds = %87
  %102 = load ptr, ptr %93, align 8, !tbaa !51
  %103 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 2
  store ptr %102, ptr %103, align 8, !tbaa !219
  %104 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 3
  store float 7.500000e-01, ptr %104, align 8, !tbaa !298
  %105 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 4
  store i64 29, ptr %105, align 8, !tbaa !299
  %106 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 5
  store i64 0, ptr %106, align 8, !tbaa !94
  %107 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 6
  store ptr %102, ptr %107, align 8, !tbaa !106
  %108 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 6, i32 1
  %109 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %108, i8 0, i64 16, i1 false)
  store ptr %102, ptr %109, align 8, !tbaa !106
  %110 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 7, i32 1
  %111 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %110, i8 0, i64 16, i1 false)
  store ptr %102, ptr %111, align 8, !tbaa !231
  %112 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 8, i32 1
  %113 = getelementptr inbounds %"struct.std::pair", ptr %97, i64 0, i32 1, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %112, i8 0, i64 32, i1 false)
  store i64 50, ptr %113, align 8, !tbaa !300
  br label %114

114:                                              ; preds = %101, %98
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !76, !noalias !301
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load ptr, ptr %115, align 8, !tbaa !62, !noalias !301
  %121 = load ptr, ptr %120, align 8, !tbaa !44, !noalias !301
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8, !noalias !301
  %124 = call noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %120, i64 noundef 32), !noalias !301
  store ptr %124, ptr %116, align 8, !tbaa !76, !noalias !301
  %125 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %124, i64 0, i32 2
  store ptr %124, ptr %125, align 8, !tbaa !82, !noalias !301
  %126 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %124, i64 0, i32 1
  store ptr %124, ptr %126, align 8, !tbaa !86, !noalias !301
  br label %127

127:                                              ; preds = %114, %119
  %128 = load ptr, ptr %116, align 8, !tbaa !76, !noalias !301
  %129 = load ptr, ptr %76, align 8, !tbaa !76, !noalias !304
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load ptr, ptr %65, align 8, !tbaa !62, !noalias !304
  %133 = load ptr, ptr %132, align 8, !tbaa !44, !noalias !304
  %134 = getelementptr inbounds ptr, ptr %133, i64 2
  %135 = load ptr, ptr %134, align 8, !noalias !304
  %136 = call noundef ptr %135(ptr noundef nonnull align 8 dereferenceable(8) %132, i64 noundef 32), !noalias !304
  store ptr %136, ptr %76, align 8, !tbaa !76, !noalias !304
  %137 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %136, i64 0, i32 2
  store ptr %136, ptr %137, align 8, !tbaa !82, !noalias !304
  %138 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %136, i64 0, i32 1
  store ptr %136, ptr %138, align 8, !tbaa !86, !noalias !304
  br label %139

139:                                              ; preds = %127, %131
  %140 = load ptr, ptr %76, align 8, !tbaa !76, !noalias !304
  %141 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !86, !noalias !307
  %143 = icmp eq ptr %128, %142
  br i1 %143, label %156, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %142, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !82
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %142, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !86
  %149 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %148, i64 0, i32 2
  store ptr %146, ptr %149, align 8, !tbaa !82
  %150 = load ptr, ptr %145, align 8, !tbaa !82
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %150, i64 0, i32 1
  store ptr %148, ptr %151, align 8, !tbaa !86
  %152 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %128, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !86
  store ptr %153, ptr %147, align 8, !tbaa !86
  store ptr %128, ptr %145, align 8, !tbaa !82
  %154 = load ptr, ptr %152, align 8, !tbaa !86
  %155 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %154, i64 0, i32 2
  store ptr %142, ptr %155, align 8, !tbaa !82
  store ptr %142, ptr %152, align 8, !tbaa !86
  br label %156

156:                                              ; preds = %139, %144
  %157 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !206
  %159 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %158, i64 %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %160 = load ptr, ptr %116, align 8, !tbaa !76, !noalias !310
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %156
  %163 = load ptr, ptr %115, align 8, !tbaa !62, !noalias !310
  %164 = load ptr, ptr %163, align 8, !tbaa !44, !noalias !310
  %165 = getelementptr inbounds ptr, ptr %164, i64 2
  %166 = load ptr, ptr %165, align 8, !noalias !310
  %167 = call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(8) %163, i64 noundef 32), !noalias !310
  store ptr %167, ptr %116, align 8, !tbaa !76, !noalias !310
  %168 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %167, i64 0, i32 2
  store ptr %167, ptr %168, align 8, !tbaa !82, !noalias !310
  %169 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %167, i64 0, i32 1
  store ptr %167, ptr %169, align 8, !tbaa !86, !noalias !310
  br label %170

170:                                              ; preds = %156, %162
  %171 = load ptr, ptr %116, align 8, !tbaa !76, !noalias !310
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %172 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !86, !noalias !313
  store ptr %173, ptr %7, align 8, !tbaa !156, !alias.scope !313
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %159, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %174 = load i64, ptr %52, align 8, !tbaa !61
  %175 = add i64 %174, 1
  store i64 %175, ptr %52, align 8, !tbaa !61
  %176 = load ptr, ptr %116, align 8, !tbaa !76, !noalias !316
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %186

178:                                              ; preds = %170
  %179 = load ptr, ptr %115, align 8, !tbaa !62, !noalias !316
  %180 = load ptr, ptr %179, align 8, !tbaa !44, !noalias !316
  %181 = getelementptr inbounds ptr, ptr %180, i64 2
  %182 = load ptr, ptr %181, align 8, !noalias !316
  %183 = call noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(8) %179, i64 noundef 32), !noalias !316
  store ptr %183, ptr %116, align 8, !tbaa !76, !noalias !316
  %184 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %183, i64 0, i32 2
  store ptr %183, ptr %184, align 8, !tbaa !82, !noalias !316
  %185 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %183, i64 0, i32 1
  store ptr %183, ptr %185, align 8, !tbaa !86, !noalias !316
  br label %186

186:                                              ; preds = %170, %178
  %187 = load ptr, ptr %116, align 8, !tbaa !76, !noalias !316
  %188 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !86, !noalias !319
  store ptr %189, ptr %0, align 8, !tbaa !156
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !145
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !206
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !205
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !206
  %22 = load i64, ptr %6, align 8, !tbaa !145
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !63
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !145
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !145
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !322

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %36 = load ptr, ptr %0, align 8, !tbaa !63
  store ptr %36, ptr %5, align 8, !tbaa !63
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !145
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !205
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !44
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !206
  %45 = load i64, ptr %37, align 8, !tbaa !145
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !206
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !206
  %50 = load i64, ptr %37, align 8, !tbaa !145
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !206
  %54 = load i64, ptr %37, align 8, !tbaa !145
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !206
  %57 = load i64, ptr %6, align 8, !tbaa !145
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !63
  %61 = load i64, ptr %6, align 8, !tbaa !145
  %62 = load i64, ptr %13, align 8, !tbaa !205
  %63 = load ptr, ptr %9, align 8, !tbaa !206
  %64 = load ptr, ptr %5, align 8, !tbaa !63
  store ptr %64, ptr %0, align 8, !tbaa !63
  %65 = load i64, ptr %37, align 8, !tbaa !145
  store i64 %65, ptr %6, align 8, !tbaa !145
  %66 = load i64, ptr %38, align 8, !tbaa !205
  store i64 %66, ptr %13, align 8, !tbaa !205
  %67 = load ptr, ptr %44, align 8, !tbaa !206
  store ptr %67, ptr %9, align 8, !tbaa !206
  store ptr %60, ptr %5, align 8, !tbaa !63
  store i64 %61, ptr %37, align 8, !tbaa !145
  store i64 %62, ptr %38, align 8, !tbaa !205
  store ptr %63, ptr %44, align 8, !tbaa !206
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !323

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !324

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !325

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !326

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !327

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !325

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.20", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !61
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  store ptr %11, ptr %3, align 8, !tbaa !260
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %71

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !257
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !259
  %20 = load ptr, ptr %3, align 8, !tbaa !260
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !76, !noalias !328
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !62, !noalias !328
  %34 = load ptr, ptr %33, align 8, !tbaa !44, !noalias !328
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !328
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %85

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !76, !noalias !328
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !82, !noalias !328
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !86, !noalias !328
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %66, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %66 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !331, !noalias !87
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !82, !noalias !87
  store ptr %47, ptr %4, align 8, !tbaa !156
  %48 = load ptr, ptr %29, align 8, !tbaa !76, !noalias !332
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !62, !noalias !332
  %52 = load ptr, ptr %51, align 8, !tbaa !44, !noalias !332
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !332
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %87

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !76, !noalias !332
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !82, !noalias !332
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !86, !noalias !332
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !76, !noalias !332
  %61 = load ptr, ptr %4, align 8, !tbaa !156
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %91, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !93
  %65 = invoke noundef i32 @_ZNK11xalanc_1_1010XalanQName4hashEv(ptr noundef nonnull align 8 dereferenceable(8) %64)
          to label %66 unwind label %89

66:                                               ; preds = %63
  %67 = zext i32 %65 to i64
  %68 = urem i64 %67, %9
  %69 = load ptr, ptr %42, align 8, !tbaa !206
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %69, i64 %68
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %89, !llvm.loop !335

71:                                               ; preds = %1
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = load i64, ptr %13, align 8, !tbaa !257
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %14, align 8, !tbaa !259
  %77 = load ptr, ptr %3, align 8, !tbaa !260
  %78 = load ptr, ptr %77, align 8, !tbaa !44
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef %76)
          to label %84 unwind label %81

81:                                               ; preds = %75
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #17
  unreachable

84:                                               ; preds = %71, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %109

85:                                               ; preds = %32
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %107

87:                                               ; preds = %50
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %107

89:                                               ; preds = %66, %63
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %107

91:                                               ; preds = %59
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !63
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !145
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !205
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !206
  %100 = load ptr, ptr %2, align 8, !tbaa !63
  store ptr %100, ptr %92, align 8, !tbaa !63
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !145
  store i64 %102, ptr %94, align 8, !tbaa !145
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !205
  store i64 %104, ptr %96, align 8, !tbaa !205
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !206
  store ptr %106, ptr %98, align 8, !tbaa !206
  store ptr %93, ptr %2, align 8, !tbaa !63
  store i64 %95, ptr %101, align 8, !tbaa !145
  store i64 %97, ptr %103, align 8, !tbaa !205
  store ptr %99, ptr %105, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void

107:                                              ; preds = %89, %87, %85
  %108 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  br label %109

109:                                              ; preds = %107, %84
  %110 = phi { ptr, i32 } [ %108, %107 ], [ %72, %84 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  resume { ptr, i32 } %110
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !76
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !82
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !86
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !76
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !62
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !76
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !82
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !86
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !76
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE9push_backERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !76, !noalias !336
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !62, !noalias !336
  %8 = load ptr, ptr %7, align 8, !tbaa !44, !noalias !336
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !336
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !336
  store ptr %11, ptr %3, align 8, !tbaa !76, !noalias !336
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !82, !noalias !336
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !86, !noalias !336
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !76, !noalias !336
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !197
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !62
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !197
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !339
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !86
  store ptr %33, ptr %31, align 8, !tbaa !331
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !331
  %35 = load ptr, ptr %32, align 8, !tbaa !86
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanQNameByReference, xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !82
  store ptr %29, ptr %32, align 8, !tbaa !86
  store ptr %30, ptr %16, align 8, !tbaa !197
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !145
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !206
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !205
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !206
  %28 = load i64, ptr %12, align 8, !tbaa !145
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !63
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !145
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !145
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !341

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !63
  store ptr %42, ptr %5, align 8, !tbaa !63
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !145
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !205
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !44
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !206
  %51 = load i64, ptr %43, align 8, !tbaa !145
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !206
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !206
  %56 = load i64, ptr %43, align 8, !tbaa !145
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !206
  %60 = load i64, ptr %43, align 8, !tbaa !145
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !206
  %63 = load i64, ptr %12, align 8, !tbaa !145
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !63
  %67 = load i64, ptr %12, align 8, !tbaa !145
  %68 = load i64, ptr %19, align 8, !tbaa !205
  %69 = load ptr, ptr %15, align 8, !tbaa !206
  %70 = load ptr, ptr %5, align 8, !tbaa !63
  store ptr %70, ptr %0, align 8, !tbaa !63
  %71 = load i64, ptr %43, align 8, !tbaa !145
  store i64 %71, ptr %12, align 8, !tbaa !145
  %72 = load i64, ptr %44, align 8, !tbaa !205
  store i64 %72, ptr %19, align 8, !tbaa !205
  %73 = load ptr, ptr %50, align 8, !tbaa !206
  store ptr %73, ptr %15, align 8, !tbaa !206
  store ptr %66, ptr %5, align 8, !tbaa !63
  store i64 %67, ptr %43, align 8, !tbaa !145
  store i64 %68, ptr %44, align 8, !tbaa !205
  store ptr %69, ptr %50, align 8, !tbaa !206
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !342

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !343

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !344

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !345

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !327

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !344

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !145
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !205
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !206
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !63
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !145
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !145
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %22 = load ptr, ptr %0, align 8, !tbaa !63
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE10doPushBackERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !63
  %25 = load i64, ptr %4, align 8, !tbaa !145
  %26 = load i64, ptr %6, align 8, !tbaa !205
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !206
  %29 = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %29, ptr %0, align 8, !tbaa !63
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !145
  store i64 %31, ptr %4, align 8, !tbaa !145
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !205
  store i64 %33, ptr %6, align 8, !tbaa !205
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !206
  store ptr %35, ptr %27, align 8, !tbaa !206
  store ptr %24, ptr %3, align 8, !tbaa !63
  store i64 %25, ptr %30, align 8, !tbaa !145
  store i64 %26, ptr %32, align 8, !tbaa !205
  store ptr %28, ptr %34, align 8, !tbaa !206
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !63
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !145
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !205
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !206
  %12 = load ptr, ptr %3, align 8, !tbaa !63
  store ptr %12, ptr %0, align 8, !tbaa !63
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !145
  store i64 %14, ptr %6, align 8, !tbaa !145
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !205
  store i64 %16, ptr %8, align 8, !tbaa !205
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !206
  store ptr %18, ptr %10, align 8, !tbaa !206
  store ptr %5, ptr %3, align 8, !tbaa !63
  store i64 %7, ptr %13, align 8, !tbaa !145
  store i64 %9, ptr %15, align 8, !tbaa !205
  store ptr %11, ptr %17, align 8, !tbaa !206
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2ERKSN_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !145
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !63
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !145
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !205
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !44
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !206
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !206
  %24 = load i64, ptr %9, align 8, !tbaa !145
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_PKSK_SQ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !63
  %28 = load i64, ptr %6, align 8, !tbaa !145
  %29 = load i64, ptr %7, align 8, !tbaa !205
  %30 = load ptr, ptr %8, align 8, !tbaa !206
  %31 = load ptr, ptr %5, align 8, !tbaa !63
  store ptr %31, ptr %0, align 8, !tbaa !63
  %32 = load i64, ptr %14, align 8, !tbaa !145
  store i64 %32, ptr %6, align 8, !tbaa !145
  %33 = load i64, ptr %15, align 8, !tbaa !205
  store i64 %33, ptr %7, align 8, !tbaa !205
  %34 = load ptr, ptr %21, align 8, !tbaa !206
  store ptr %34, ptr %8, align 8, !tbaa !206
  store ptr %27, ptr %5, align 8, !tbaa !63
  store i64 %28, ptr %14, align 8, !tbaa !145
  store i64 %29, ptr %15, align 8, !tbaa !205
  store ptr %30, ptr %21, align 8, !tbaa !206
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !206
  store i64 %3, ptr %7, align 8, !tbaa !205
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.20", align 8
  store ptr %2, ptr %0, align 8, !tbaa !260
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !261
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !260
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !261
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !257
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !44
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !259
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !259
  %24 = load i64, ptr %9, align 8, !tbaa !261
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !260
  %28 = load i64, ptr %6, align 8, !tbaa !261
  %29 = load i64, ptr %7, align 8, !tbaa !257
  %30 = load ptr, ptr %8, align 8, !tbaa !259
  %31 = load ptr, ptr %5, align 8, !tbaa !260
  store ptr %31, ptr %0, align 8, !tbaa !260
  %32 = load i64, ptr %14, align 8, !tbaa !261
  store i64 %32, ptr %6, align 8, !tbaa !261
  %33 = load i64, ptr %15, align 8, !tbaa !257
  store i64 %33, ptr %7, align 8, !tbaa !257
  %34 = load ptr, ptr %21, align 8, !tbaa !259
  store ptr %34, ptr %8, align 8, !tbaa !259
  store ptr %27, ptr %5, align 8, !tbaa !260
  store i64 %28, ptr %14, align 8, !tbaa !261
  store i64 %29, ptr %15, align 8, !tbaa !257
  store ptr %30, ptr %21, align 8, !tbaa !259
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !44
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !257
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !259
  %50 = load ptr, ptr %5, align 8, !tbaa !260
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !44
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !259
  store i64 %3, ptr %7, align 8, !tbaa !257
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.20", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !261
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !259
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !257
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !259
  %28 = load i64, ptr %12, align 8, !tbaa !261
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !156
  store ptr %34, ptr %32, align 8, !tbaa !156
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !346

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !260
  store ptr %42, ptr %5, align 8, !tbaa !260
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !261
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !257
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !44
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !259
  %51 = load i64, ptr %43, align 8, !tbaa !261
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !259
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !259
  %56 = load i64, ptr %43, align 8, !tbaa !261
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !259
  %60 = load i64, ptr %43, align 8, !tbaa !261
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !259
  %63 = load i64, ptr %12, align 8, !tbaa !261
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !260
  %67 = load i64, ptr %12, align 8, !tbaa !261
  %68 = load i64, ptr %19, align 8, !tbaa !257
  %69 = load ptr, ptr %15, align 8, !tbaa !259
  %70 = load ptr, ptr %5, align 8, !tbaa !260
  store ptr %70, ptr %0, align 8, !tbaa !260
  %71 = load i64, ptr %43, align 8, !tbaa !261
  store i64 %71, ptr %12, align 8, !tbaa !261
  %72 = load i64, ptr %44, align 8, !tbaa !257
  store i64 %72, ptr %19, align 8, !tbaa !257
  %73 = load ptr, ptr %50, align 8, !tbaa !259
  store ptr %73, ptr %15, align 8, !tbaa !259
  store ptr %66, ptr %5, align 8, !tbaa !260
  store i64 %67, ptr %43, align 8, !tbaa !261
  store i64 %68, ptr %44, align 8, !tbaa !257
  store ptr %69, ptr %50, align 8, !tbaa !259
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !44
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !257
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !259
  %89 = load ptr, ptr %5, align 8, !tbaa !260
  %90 = load ptr, ptr %89, align 8, !tbaa !44
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !347

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !348

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !156
  store ptr %122, ptr %120, align 8, !tbaa !156
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !349

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !350

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
  %148 = load ptr, ptr %146, align 8, !tbaa !156
  store ptr %148, ptr %147, align 8, !tbaa !156
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !351

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !156
  store ptr %155, ptr %153, align 8, !tbaa !156
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !349

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !261
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.20", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !261
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !257
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !259
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !156
  store ptr %13, ptr %12, align 8, !tbaa !156
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !261
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !260
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !260
  %24 = load i64, ptr %4, align 8, !tbaa !261
  %25 = load i64, ptr %6, align 8, !tbaa !257
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !259
  %28 = load ptr, ptr %3, align 8, !tbaa !260
  store ptr %28, ptr %0, align 8, !tbaa !260
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !261
  store i64 %30, ptr %4, align 8, !tbaa !261
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !257
  store i64 %32, ptr %6, align 8, !tbaa !257
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !259
  store ptr %34, ptr %26, align 8, !tbaa !259
  store ptr %23, ptr %3, align 8, !tbaa !260
  store i64 %24, ptr %29, align 8, !tbaa !261
  store i64 %25, ptr %31, align 8, !tbaa !257
  store ptr %27, ptr %33, align 8, !tbaa !259
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !44
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !257
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !259
  %52 = load ptr, ptr %3, align 8, !tbaa !260
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.20", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !260
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !260
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !261
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !257
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !259
  %12 = load ptr, ptr %3, align 8, !tbaa !260
  store ptr %12, ptr %0, align 8, !tbaa !260
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !261
  store i64 %14, ptr %6, align 8, !tbaa !261
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !257
  store i64 %16, ptr %8, align 8, !tbaa !257
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !259
  store ptr %18, ptr %10, align 8, !tbaa !259
  store ptr %5, ptr %3, align 8, !tbaa !260
  store i64 %7, ptr %13, align 8, !tbaa !261
  store i64 %9, ptr %15, align 8, !tbaa !257
  store ptr %11, ptr %17, align 8, !tbaa !259
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEaSERKSK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.20", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !257
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !261
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !260
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !260
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !261
  %16 = load i64, ptr %6, align 8, !tbaa !257
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !259
  %19 = load ptr, ptr %3, align 8, !tbaa !260
  store ptr %19, ptr %0, align 8, !tbaa !260
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !261
  store i64 %21, ptr %14, align 8, !tbaa !261
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !257
  store i64 %23, ptr %6, align 8, !tbaa !257
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !259
  store ptr %25, ptr %17, align 8, !tbaa !259
  store ptr %13, ptr %3, align 8, !tbaa !260
  store i64 %15, ptr %20, align 8, !tbaa !261
  store i64 %16, ptr %22, align 8, !tbaa !257
  store ptr %18, ptr %24, align 8, !tbaa !259
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !259
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !261
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !259
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !261
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !261
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !259
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.20", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !259
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !156
  store ptr %68, ptr %66, align 8, !tbaa !156
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !349

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEC2EmRKSK_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %3, ptr %0, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  store ptr %3, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEE6insertEPSK_mRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !63
  %14 = load i64, ptr %6, align 8, !tbaa !145
  %15 = load i64, ptr %12, align 8, !tbaa !205
  %16 = load ptr, ptr %11, align 8, !tbaa !206
  %17 = load ptr, ptr %5, align 8, !tbaa !63
  store ptr %17, ptr %0, align 8, !tbaa !63
  %18 = load i64, ptr %7, align 8, !tbaa !145
  store i64 %18, ptr %6, align 8, !tbaa !145
  %19 = load i64, ptr %10, align 8, !tbaa !205
  store i64 %19, ptr %12, align 8, !tbaa !205
  %20 = load ptr, ptr %9, align 8, !tbaa !206
  store ptr %20, ptr %11, align 8, !tbaa !206
  store ptr %13, ptr %5, align 8, !tbaa !63
  store i64 %14, ptr %7, align 8, !tbaa !145
  store i64 %15, ptr %10, align 8, !tbaa !205
  store ptr %16, ptr %9, align 8, !tbaa !206
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !219
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 3
  %8 = load float, ptr %7, align 8, !tbaa !298
  store float %8, ptr %6, align 8, !tbaa !298
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !299
  store i64 %11, ptr %9, align 8, !tbaa !299
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 5
  store i64 0, ptr %12, align 8, !tbaa !94
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6
  store ptr %2, ptr %13, align 8, !tbaa !106
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  store ptr %2, ptr %15, align 8, !tbaa !106
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 7, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 8
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %19 = load i64, ptr %18, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  store ptr %2, ptr %4, align 8, !tbaa !256
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %4, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %4, i64 0, i32 2
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %4, i64 0, i32 3
  %23 = uitofp i64 %19 to float
  %24 = fmul float %8, %23
  %25 = fptoui float %24 to i64
  %26 = add i64 %25, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEC2EmRKSH_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %26, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %27 unwind label %81

27:                                               ; preds = %3
  %28 = load i64, ptr %21, align 8, !tbaa !253
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %22, align 8, !tbaa !255
  %32 = load ptr, ptr %4, align 8, !tbaa !256
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %31)
          to label %39 unwind label %36

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  call void @__clang_call_terminate(ptr %38) #17
  unreachable

39:                                               ; preds = %27, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 9
  store i64 0, ptr %40, align 8, !tbaa !352
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 10
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 10
  %43 = load i64, ptr %42, align 8, !tbaa !300
  store i64 %43, ptr %41, align 8, !tbaa !300
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 6, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !100, !noalias !353
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !106, !noalias !353
  %50 = load ptr, ptr %49, align 8, !tbaa !44, !noalias !353
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8, !noalias !353
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, i64 noundef 32)
          to label %54 unwind label %97

54:                                               ; preds = %47
  store ptr %53, ptr %44, align 8, !tbaa !100, !noalias !353
  %55 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %53, i64 0, i32 2
  store ptr %53, ptr %55, align 8, !tbaa !107, !noalias !353
  %56 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %53, i64 0, i32 1
  store ptr %53, ptr %56, align 8, !tbaa !110, !noalias !353
  br label %57

57:                                               ; preds = %39, %54
  %58 = load ptr, ptr %44, align 8, !tbaa !100, !noalias !353
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 6
  br label %60

60:                                               ; preds = %78, %57
  %61 = phi ptr [ %58, %57 ], [ %63, %78 ]
  %62 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !107, !noalias !87
  %64 = load ptr, ptr %44, align 8, !tbaa !100, !noalias !360
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load ptr, ptr %59, align 8, !tbaa !106, !noalias !360
  %68 = load ptr, ptr %67, align 8, !tbaa !44, !noalias !360
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8, !noalias !360
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %67, i64 noundef 32)
          to label %72 unwind label %99

72:                                               ; preds = %66
  store ptr %71, ptr %44, align 8, !tbaa !100, !noalias !360
  %73 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %71, i64 0, i32 2
  store ptr %71, ptr %73, align 8, !tbaa !107, !noalias !360
  %74 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %71, i64 0, i32 1
  store ptr %71, ptr %74, align 8, !tbaa !110, !noalias !360
  br label %75

75:                                               ; preds = %60, %72
  %76 = load ptr, ptr %44, align 8, !tbaa !100, !noalias !360
  %77 = icmp eq ptr %63, %76
  br i1 %77, label %101, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %63, align 8, !tbaa !116
  %80 = getelementptr inbounds %"struct.std::pair.12", ptr %79, i64 0, i32 1
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %79, ptr noundef nonnull align 8 dereferenceable(44) %80)
          to label %60 unwind label %95

81:                                               ; preds = %3
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %21, align 8, !tbaa !253
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %22, align 8, !tbaa !255
  %87 = load ptr, ptr %4, align 8, !tbaa !256
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #17
  unreachable

94:                                               ; preds = %85, %81
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %104

95:                                               ; preds = %78
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %102

97:                                               ; preds = %47
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %102

99:                                               ; preds = %66
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %102

101:                                              ; preds = %75
  ret void

102:                                              ; preds = %95, %97, %99
  %103 = phi { ptr, i32 } [ %100, %99 ], [ %96, %95 ], [ %98, %97 ]
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #16
  br label %104

104:                                              ; preds = %102, %94
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %82, %94 ]
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #16
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #16
  resume { ptr, i32 } %105
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEC2EmRKSH_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  store ptr %3, ptr %0, align 8, !tbaa !231
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  store ptr %3, ptr %5, align 8, !tbaa !231
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_mRKSH_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !231
  %14 = load i64, ptr %6, align 8, !tbaa !212
  %15 = load i64, ptr %12, align 8, !tbaa !228
  %16 = load ptr, ptr %11, align 8, !tbaa !229
  %17 = load ptr, ptr %5, align 8, !tbaa !231
  store ptr %17, ptr %0, align 8, !tbaa !231
  %18 = load i64, ptr %7, align 8, !tbaa !212
  store i64 %18, ptr %6, align 8, !tbaa !212
  %19 = load i64, ptr %10, align 8, !tbaa !228
  store i64 %19, ptr %12, align 8, !tbaa !228
  %20 = load ptr, ptr %9, align 8, !tbaa !229
  store ptr %20, ptr %11, align 8, !tbaa !229
  store ptr %13, ptr %5, align 8, !tbaa !231
  store i64 %14, ptr %7, align 8, !tbaa !212
  store i64 %15, ptr %10, align 8, !tbaa !228
  store ptr %16, ptr %9, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %22
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_mRKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !212
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !228
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !229
  %22 = load i64, ptr %6, align 8, !tbaa !212
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !231
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEC2ERKSH_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !212
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !212
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !367

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %36 = load ptr, ptr %0, align 8, !tbaa !231
  store ptr %36, ptr %5, align 8, !tbaa !231
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !212
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !228
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !44
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !229
  %45 = load i64, ptr %37, align 8, !tbaa !212
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !229
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !229
  %50 = load i64, ptr %37, align 8, !tbaa !212
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_mRKSH_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !229
  %54 = load i64, ptr %37, align 8, !tbaa !212
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !229
  %57 = load i64, ptr %6, align 8, !tbaa !212
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !231
  %61 = load i64, ptr %6, align 8, !tbaa !212
  %62 = load i64, ptr %13, align 8, !tbaa !228
  %63 = load ptr, ptr %9, align 8, !tbaa !229
  %64 = load ptr, ptr %5, align 8, !tbaa !231
  store ptr %64, ptr %0, align 8, !tbaa !231
  %65 = load i64, ptr %37, align 8, !tbaa !212
  store i64 %65, ptr %6, align 8, !tbaa !212
  %66 = load i64, ptr %38, align 8, !tbaa !228
  store i64 %66, ptr %13, align 8, !tbaa !228
  %67 = load ptr, ptr %44, align 8, !tbaa !229
  store ptr %67, ptr %9, align 8, !tbaa !229
  store ptr %60, ptr %5, align 8, !tbaa !231
  store i64 %61, ptr %37, align 8, !tbaa !212
  store i64 %62, ptr %38, align 8, !tbaa !228
  store ptr %63, ptr %44, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !368

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !369

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !370

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !371

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !372

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !370

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !212
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !229
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !228
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !229
  %28 = load i64, ptr %12, align 8, !tbaa !212
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !231
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEC2ERKSH_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !212
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !212
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !373

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !231
  store ptr %42, ptr %5, align 8, !tbaa !231
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !212
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !228
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !44
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !229
  %51 = load i64, ptr %43, align 8, !tbaa !212
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !229
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !229
  %56 = load i64, ptr %43, align 8, !tbaa !212
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !229
  %60 = load i64, ptr %43, align 8, !tbaa !212
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !229
  %63 = load i64, ptr %12, align 8, !tbaa !212
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !231
  %67 = load i64, ptr %12, align 8, !tbaa !212
  %68 = load i64, ptr %19, align 8, !tbaa !228
  %69 = load ptr, ptr %15, align 8, !tbaa !229
  %70 = load ptr, ptr %5, align 8, !tbaa !231
  store ptr %70, ptr %0, align 8, !tbaa !231
  %71 = load i64, ptr %43, align 8, !tbaa !212
  store i64 %71, ptr %12, align 8, !tbaa !212
  %72 = load i64, ptr %44, align 8, !tbaa !228
  store i64 %72, ptr %19, align 8, !tbaa !228
  %73 = load ptr, ptr %50, align 8, !tbaa !229
  store ptr %73, ptr %15, align 8, !tbaa !229
  store ptr %66, ptr %5, align 8, !tbaa !231
  store i64 %67, ptr %43, align 8, !tbaa !212
  store i64 %68, ptr %44, align 8, !tbaa !228
  store ptr %69, ptr %50, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !374

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !375

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !376

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !377

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !372

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !376

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !212
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !228
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !231
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEC2ERKSH_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !212
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !212
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %22 = load ptr, ptr %0, align 8, !tbaa !231
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE10doPushBackERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !231
  %25 = load i64, ptr %4, align 8, !tbaa !212
  %26 = load i64, ptr %6, align 8, !tbaa !228
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !229
  %29 = load ptr, ptr %3, align 8, !tbaa !231
  store ptr %29, ptr %0, align 8, !tbaa !231
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !212
  store i64 %31, ptr %4, align 8, !tbaa !212
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !228
  store i64 %33, ptr %6, align 8, !tbaa !228
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !229
  store ptr %35, ptr %27, align 8, !tbaa !229
  store ptr %24, ptr %3, align 8, !tbaa !231
  store i64 %25, ptr %30, align 8, !tbaa !212
  store i64 %26, ptr %32, align 8, !tbaa !228
  store ptr %28, ptr %34, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !231
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !231
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !212
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !228
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = load ptr, ptr %3, align 8, !tbaa !231
  store ptr %12, ptr %0, align 8, !tbaa !231
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !212
  store i64 %14, ptr %6, align 8, !tbaa !212
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !228
  store i64 %16, ptr %8, align 8, !tbaa !228
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !229
  store ptr %18, ptr %10, align 8, !tbaa !229
  store ptr %5, ptr %3, align 8, !tbaa !231
  store i64 %7, ptr %13, align 8, !tbaa !212
  store i64 %9, ptr %15, align 8, !tbaa !228
  store ptr %11, ptr %17, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEC2ERKSK_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  store ptr %2, ptr %0, align 8, !tbaa !231
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !212
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !231
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !212
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !228
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !44
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !229
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !229
  %24 = load i64, ptr %9, align 8, !tbaa !212
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_PKSH_SN_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !231
  %28 = load i64, ptr %6, align 8, !tbaa !212
  %29 = load i64, ptr %7, align 8, !tbaa !228
  %30 = load ptr, ptr %8, align 8, !tbaa !229
  %31 = load ptr, ptr %5, align 8, !tbaa !231
  store ptr %31, ptr %0, align 8, !tbaa !231
  %32 = load i64, ptr %14, align 8, !tbaa !212
  store i64 %32, ptr %6, align 8, !tbaa !212
  %33 = load i64, ptr %15, align 8, !tbaa !228
  store i64 %33, ptr %7, align 8, !tbaa !228
  %34 = load ptr, ptr %21, align 8, !tbaa !229
  store ptr %34, ptr %8, align 8, !tbaa !229
  store ptr %27, ptr %5, align 8, !tbaa !231
  store i64 %28, ptr %14, align 8, !tbaa !212
  store i64 %29, ptr %15, align 8, !tbaa !228
  store ptr %30, ptr %21, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !44
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !229
  store i64 %3, ptr %7, align 8, !tbaa !228
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEC2ERKSH_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  store ptr %2, ptr %0, align 8, !tbaa !256
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !284
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !256
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !284
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !253
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !44
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !255
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !255
  %24 = load i64, ptr %9, align 8, !tbaa !284
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE6insertEPSE_PKSE_SK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !256
  %28 = load i64, ptr %6, align 8, !tbaa !284
  %29 = load i64, ptr %7, align 8, !tbaa !253
  %30 = load ptr, ptr %8, align 8, !tbaa !255
  %31 = load ptr, ptr %5, align 8, !tbaa !256
  store ptr %31, ptr %0, align 8, !tbaa !256
  %32 = load i64, ptr %14, align 8, !tbaa !284
  store i64 %32, ptr %6, align 8, !tbaa !284
  %33 = load i64, ptr %15, align 8, !tbaa !253
  store i64 %33, ptr %7, align 8, !tbaa !253
  %34 = load ptr, ptr %21, align 8, !tbaa !255
  store ptr %34, ptr %8, align 8, !tbaa !255
  store ptr %27, ptr %5, align 8, !tbaa !256
  store i64 %28, ptr %14, align 8, !tbaa !284
  store i64 %29, ptr %15, align 8, !tbaa !253
  store ptr %30, ptr %21, align 8, !tbaa !255
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !44
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !253
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !255
  %50 = load ptr, ptr %5, align 8, !tbaa !256
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !44
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !255
  store i64 %3, ptr %7, align 8, !tbaa !253
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE6insertEPSE_PKSE_SK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !284
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !255
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !253
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !255
  %28 = load i64, ptr %12, align 8, !tbaa !284
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !168
  store ptr %34, ptr %32, align 8, !tbaa !168
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !378

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !256
  store ptr %42, ptr %5, align 8, !tbaa !256
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !284
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !253
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !44
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !255
  %51 = load i64, ptr %43, align 8, !tbaa !284
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !255
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE6insertEPSE_PKSE_SK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !255
  %56 = load i64, ptr %43, align 8, !tbaa !284
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE6insertEPSE_PKSE_SK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !255
  %60 = load i64, ptr %43, align 8, !tbaa !284
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !255
  %63 = load i64, ptr %12, align 8, !tbaa !284
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE6insertEPSE_PKSE_SK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !256
  %67 = load i64, ptr %12, align 8, !tbaa !284
  %68 = load i64, ptr %19, align 8, !tbaa !253
  %69 = load ptr, ptr %15, align 8, !tbaa !255
  %70 = load ptr, ptr %5, align 8, !tbaa !256
  store ptr %70, ptr %0, align 8, !tbaa !256
  %71 = load i64, ptr %43, align 8, !tbaa !284
  store i64 %71, ptr %12, align 8, !tbaa !284
  %72 = load i64, ptr %44, align 8, !tbaa !253
  store i64 %72, ptr %19, align 8, !tbaa !253
  %73 = load ptr, ptr %50, align 8, !tbaa !255
  store ptr %73, ptr %15, align 8, !tbaa !255
  store ptr %66, ptr %5, align 8, !tbaa !256
  store i64 %67, ptr %43, align 8, !tbaa !284
  store i64 %68, ptr %44, align 8, !tbaa !253
  store ptr %69, ptr %50, align 8, !tbaa !255
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !44
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !253
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !255
  %89 = load ptr, ptr %5, align 8, !tbaa !256
  %90 = load ptr, ptr %89, align 8, !tbaa !44
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
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
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE10doPushBackERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !379

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE10doPushBackERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !380

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !168
  store ptr %122, ptr %120, align 8, !tbaa !168
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !381

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE10doPushBackERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !382

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
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %145, i64 -1
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %144, i64 -1
  %148 = load ptr, ptr %146, align 8, !tbaa !168
  store ptr %148, ptr %147, align 8, !tbaa !168
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !383

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !168
  store ptr %155, ptr %153, align 8, !tbaa !168
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !381

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !284
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE10doPushBackERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !284
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !253
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !255
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !168
  store ptr %13, ptr %12, align 8, !tbaa !168
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !284
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !256
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEC2ERKSH_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE10doPushBackERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !256
  %24 = load i64, ptr %4, align 8, !tbaa !284
  %25 = load i64, ptr %6, align 8, !tbaa !253
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !255
  %28 = load ptr, ptr %3, align 8, !tbaa !256
  store ptr %28, ptr %0, align 8, !tbaa !256
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !284
  store i64 %30, ptr %4, align 8, !tbaa !284
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !253
  store i64 %32, ptr %6, align 8, !tbaa !253
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !255
  store ptr %34, ptr %26, align 8, !tbaa !255
  store ptr %23, ptr %3, align 8, !tbaa !256
  store i64 %24, ptr %29, align 8, !tbaa !284
  store i64 %25, ptr %31, align 8, !tbaa !253
  store ptr %27, ptr %33, align 8, !tbaa !255
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !44
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !253
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !255
  %52 = load ptr, ptr %3, align 8, !tbaa !256
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !256
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEC2ERKSH_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !256
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !284
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !253
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !255
  %12 = load ptr, ptr %3, align 8, !tbaa !256
  store ptr %12, ptr %0, align 8, !tbaa !256
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !284
  store i64 %14, ptr %6, align 8, !tbaa !284
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !253
  store i64 %16, ptr %8, align 8, !tbaa !253
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !255
  store ptr %18, ptr %10, align 8, !tbaa !255
  store ptr %5, ptr %3, align 8, !tbaa !256
  store i64 %7, ptr %13, align 8, !tbaa !284
  store i64 %9, ptr %15, align 8, !tbaa !253
  store ptr %11, ptr %17, align 8, !tbaa !255
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEaSERKSH_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !253
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !284
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !256
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEC2ERKSH_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !256
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !284
  %16 = load i64, ptr %6, align 8, !tbaa !253
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !255
  %19 = load ptr, ptr %3, align 8, !tbaa !256
  store ptr %19, ptr %0, align 8, !tbaa !256
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !284
  store i64 %21, ptr %14, align 8, !tbaa !284
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !253
  store i64 %23, ptr %6, align 8, !tbaa !253
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !255
  store ptr %25, ptr %17, align 8, !tbaa !255
  store ptr %13, ptr %3, align 8, !tbaa !256
  store i64 %15, ptr %20, align 8, !tbaa !284
  store i64 %16, ptr %22, align 8, !tbaa !253
  store ptr %18, ptr %24, align 8, !tbaa !255
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !255
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !284
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !255
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE6insertEPSE_PKSE_SK_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !284
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !284
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !255
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !255
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !168
  store ptr %68, ptr %66, align 8, !tbaa !168
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase.11", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !381

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.10", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator.10", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.10") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !100, !noalias !384
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !106, !noalias !384
  %13 = load ptr, ptr %12, align 8, !tbaa !44, !noalias !384
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !384
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !384
  store ptr %16, ptr %7, align 8, !tbaa !100, !noalias !384
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !107, !noalias !384
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !110, !noalias !384
  br label %19

19:                                               ; preds = %3, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !100, !noalias !384
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS2_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKS2_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.11", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !212
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !229
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !219
  store ptr %18, ptr %5, align 8, !tbaa !256
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEE6insertEPSH_mRKSH_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !253
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !255
  %27 = load ptr, ptr %5, align 8, !tbaa !256
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !253
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !255
  %41 = load ptr, ptr %5, align 8, !tbaa !256
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #17
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !298
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !94
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !212
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !212
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !140
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %2, i64 0, i32 3
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
  br i1 %79, label %80, label %70, !llvm.loop !283

80:                                               ; preds = %70
  %81 = add i64 %76, 1
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi i64 [ 1, %60 ], [ %81, %80 ]
  %84 = urem i64 %83, %61
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 7
  %86 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %85)
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !219
  %90 = load ptr, ptr %89, align 8, !tbaa !44
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 88)
  store ptr %93, ptr %6, align 8, !tbaa !116
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !246
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !100, !noalias !389
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !106, !noalias !389
  %101 = load ptr, ptr %100, align 8, !tbaa !44, !noalias !389
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8, !noalias !389
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef 32), !noalias !389
  store ptr %104, ptr %96, align 8, !tbaa !100, !noalias !389
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %104, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !107, !noalias !389
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %104, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !110, !noalias !389
  br label %107

107:                                              ; preds = %95, %99
  %108 = load ptr, ptr %96, align 8, !tbaa !100, !noalias !389
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !110, !noalias !392
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry", ptr %110, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !246
  %112 = load ptr, ptr %110, align 8, !tbaa !116
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !219
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %112, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 0, i32 noundef -1)
  %115 = icmp eq ptr %3, null
  %116 = load ptr, ptr %110, align 8, !tbaa !116
  %117 = getelementptr inbounds %"struct.std::pair.12", ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %113, align 8, !tbaa !219
  br i1 %115, label %120, label %119

119:                                              ; preds = %107
  call void @_ZN11xalanc_1_1018MutableNodeRefListC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %117, ptr noundef nonnull align 8 dereferenceable(44) %3, ptr noundef nonnull align 8 dereferenceable(8) %118)
  br label %121

120:                                              ; preds = %107
  call void @_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %117, ptr noundef nonnull align 8 dereferenceable(8) %118)
  br label %121

121:                                              ; preds = %120, %119
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 6
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 6, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !100, !noalias !395
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load ptr, ptr %122, align 8, !tbaa !106, !noalias !395
  %128 = load ptr, ptr %127, align 8, !tbaa !44, !noalias !395
  %129 = getelementptr inbounds ptr, ptr %128, i64 2
  %130 = load ptr, ptr %129, align 8, !noalias !395
  %131 = call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %127, i64 noundef 32), !noalias !395
  store ptr %131, ptr %123, align 8, !tbaa !100, !noalias !395
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %131, i64 0, i32 2
  store ptr %131, ptr %132, align 8, !tbaa !107, !noalias !395
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %131, i64 0, i32 1
  store ptr %131, ptr %133, align 8, !tbaa !110, !noalias !395
  br label %134

134:                                              ; preds = %121, %126
  %135 = load ptr, ptr %123, align 8, !tbaa !100, !noalias !395
  %136 = load ptr, ptr %96, align 8, !tbaa !100, !noalias !398
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %146

138:                                              ; preds = %134
  %139 = load ptr, ptr %85, align 8, !tbaa !106, !noalias !398
  %140 = load ptr, ptr %139, align 8, !tbaa !44, !noalias !398
  %141 = getelementptr inbounds ptr, ptr %140, i64 2
  %142 = load ptr, ptr %141, align 8, !noalias !398
  %143 = call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %139, i64 noundef 32), !noalias !398
  store ptr %143, ptr %96, align 8, !tbaa !100, !noalias !398
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %143, i64 0, i32 2
  store ptr %143, ptr %144, align 8, !tbaa !107, !noalias !398
  %145 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %143, i64 0, i32 1
  store ptr %143, ptr %145, align 8, !tbaa !110, !noalias !398
  br label %146

146:                                              ; preds = %134, %138
  %147 = load ptr, ptr %96, align 8, !tbaa !100, !noalias !398
  %148 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !110, !noalias !401
  %150 = icmp eq ptr %135, %149
  br i1 %150, label %163, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %149, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !107
  %154 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %149, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !110
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %155, i64 0, i32 2
  store ptr %153, ptr %156, align 8, !tbaa !107
  %157 = load ptr, ptr %152, align 8, !tbaa !107
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %157, i64 0, i32 1
  store ptr %155, ptr %158, align 8, !tbaa !110
  %159 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %135, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !110
  store ptr %160, ptr %154, align 8, !tbaa !110
  store ptr %135, ptr %152, align 8, !tbaa !107
  %161 = load ptr, ptr %159, align 8, !tbaa !110
  %162 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %161, i64 0, i32 2
  store ptr %149, ptr %162, align 8, !tbaa !107
  store ptr %149, ptr %159, align 8, !tbaa !110
  br label %163

163:                                              ; preds = %146, %151
  %164 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %1, i64 0, i32 8, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !229
  %166 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %165, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %167 = load ptr, ptr %123, align 8, !tbaa !100, !noalias !404
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load ptr, ptr %122, align 8, !tbaa !106, !noalias !404
  %171 = load ptr, ptr %170, align 8, !tbaa !44, !noalias !404
  %172 = getelementptr inbounds ptr, ptr %171, i64 2
  %173 = load ptr, ptr %172, align 8, !noalias !404
  %174 = call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(8) %170, i64 noundef 32), !noalias !404
  store ptr %174, ptr %123, align 8, !tbaa !100, !noalias !404
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %174, i64 0, i32 2
  store ptr %174, ptr %175, align 8, !tbaa !107, !noalias !404
  %176 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %174, i64 0, i32 1
  store ptr %174, ptr %176, align 8, !tbaa !110, !noalias !404
  br label %177

177:                                              ; preds = %163, %169
  %178 = load ptr, ptr %123, align 8, !tbaa !100, !noalias !404
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  %179 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !110, !noalias !407
  store ptr %180, ptr %7, align 8, !tbaa !168, !alias.scope !407
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE10doPushBackERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %166, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %181 = load i64, ptr %52, align 8, !tbaa !94
  %182 = add i64 %181, 1
  store i64 %182, ptr %52, align 8, !tbaa !94
  %183 = load ptr, ptr %123, align 8, !tbaa !100, !noalias !410
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = load ptr, ptr %122, align 8, !tbaa !106, !noalias !410
  %187 = load ptr, ptr %186, align 8, !tbaa !44, !noalias !410
  %188 = getelementptr inbounds ptr, ptr %187, i64 2
  %189 = load ptr, ptr %188, align 8, !noalias !410
  %190 = call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %186, i64 noundef 32), !noalias !410
  store ptr %190, ptr %123, align 8, !tbaa !100, !noalias !410
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %190, i64 0, i32 2
  store ptr %190, ptr %191, align 8, !tbaa !107, !noalias !410
  %192 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %190, i64 0, i32 1
  store ptr %190, ptr %192, align 8, !tbaa !110, !noalias !410
  br label %193

193:                                              ; preds = %177, %185
  %194 = load ptr, ptr %123, align 8, !tbaa !100, !noalias !410
  %195 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !110, !noalias !413
  store ptr %196, ptr %0, align 8, !tbaa !168
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.19", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase.11", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !94
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !219
  store ptr %11, ptr %3, align 8, !tbaa !256
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEC2EmRKSH_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %89

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !253
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !255
  %20 = load ptr, ptr %3, align 8, !tbaa !256
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !100, !noalias !416
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !106, !noalias !416
  %34 = load ptr, ptr %33, align 8, !tbaa !44, !noalias !416
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !416
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %103

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !100, !noalias !416
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !107, !noalias !416
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !110, !noalias !416
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %83, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %83 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !331, !noalias !87
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !107, !noalias !87
  store ptr %47, ptr %4, align 8, !tbaa !168
  %48 = load ptr, ptr %29, align 8, !tbaa !100, !noalias !419
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !106, !noalias !419
  %52 = load ptr, ptr %51, align 8, !tbaa !44, !noalias !419
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !419
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %105

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !100, !noalias !419
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !107, !noalias !419
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !110, !noalias !419
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !100, !noalias !419
  %61 = load ptr, ptr %4, align 8, !tbaa !168
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !116
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !140
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.14", ptr %64, i64 0, i32 3
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
  br i1 %82, label %83, label %73, !llvm.loop !283

83:                                               ; preds = %73, %63
  %84 = phi i64 [ 0, %63 ], [ %79, %73 ]
  %85 = add i64 %84, 1
  %86 = urem i64 %85, %9
  %87 = load ptr, ptr %42, align 8, !tbaa !229
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.19", ptr %87, i64 %86
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEE10doPushBackERKSE_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %107, !llvm.loop !422

89:                                               ; preds = %1
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load i64, ptr %13, align 8, !tbaa !253
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %14, align 8, !tbaa !255
  %95 = load ptr, ptr %3, align 8, !tbaa !256
  %96 = load ptr, ptr %95, align 8, !tbaa !44
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #17
  unreachable

102:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
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
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !231
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 8, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !212
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 8, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !228
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap.5", ptr %0, i64 0, i32 8, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !229
  %118 = load ptr, ptr %2, align 8, !tbaa !231
  store ptr %118, ptr %110, align 8, !tbaa !231
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %2, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !212
  store i64 %120, ptr %112, align 8, !tbaa !212
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %2, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !228
  store i64 %122, ptr %114, align 8, !tbaa !228
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !229
  store ptr %124, ptr %116, align 8, !tbaa !229
  store ptr %111, ptr %2, align 8, !tbaa !231
  store i64 %113, ptr %119, align 8, !tbaa !212
  store i64 %115, ptr %121, align 8, !tbaa !228
  store ptr %117, ptr %123, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void

125:                                              ; preds = %107, %105, %103
  %126 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  br label %127

127:                                              ; preds = %125, %102
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %90, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.8", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !106
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !100
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !107
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !110
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !100
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !106
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !100
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !107
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !110
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !100
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #3 comdat align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.8", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !100, !noalias !423
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !106, !noalias !423
  %8 = load ptr, ptr %7, align 8, !tbaa !44, !noalias !423
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !423
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !423
  store ptr %11, ptr %3, align 8, !tbaa !100, !noalias !423
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !107, !noalias !423
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !110, !noalias !423
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !100, !noalias !423
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.8", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !242
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !107
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !106
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !242
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !339
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !110
  store ptr %33, ptr %31, align 8, !tbaa !331
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !331
  %35 = load ptr, ptr %32, align 8, !tbaa !110
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, xalanc_1_10::MutableNodeRefList>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !107
  store ptr %29, ptr %32, align 8, !tbaa !110
  store ptr %30, ptr %16, align 8, !tbaa !242
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1018MutableNodeRefListC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_KeyTable.cpp() #12 section ".text.startup" !prof !426 !PGOFuncName !427 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) @_ZN11xalanc_1_108KeyTable11s_dummyListE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1018MutableNodeRefListD1Ev, ptr nonnull @_ZN11xalanc_1_108KeyTable11s_dummyListE, ptr nonnull @__dso_handle) #16
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11xalanc_1_10L12theEmptyListE, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1011NodeRefListD1Ev, ptr nonnull @_ZN11xalanc_1_10L12theEmptyListE, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{ptr @_ZNK11xalanc_1_1010XalanQName4hashEv, ptr @_ZN11xalanc_1_1014XalanDOMString4hashEPKtj, i64 54}
!37 = !{ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 536868638}
!38 = !{ptr @_GLOBAL__sub_I_KeyTable.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 2}
!39 = !{ptr @_GLOBAL__sub_I_KeyTable.cpp, ptr @_ZN11xalanc_1_1018MutableNodeRefListC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_GLOBAL__sub_I_KeyTable.cpp, ptr @__cxa_atexit, i64 2}
!41 = !{ptr @_GLOBAL__sub_I_KeyTable.cpp, ptr @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !49, i64 8}
!48 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !49, i64 8}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !46, i64 0}
!51 = !{!52, !49, i64 8}
!52 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEEE", !53, i64 0, !54, i64 1, !49, i64 8, !55, i64 16, !56, i64 24, !56, i64 32, !57, i64 40, !57, i64 64, !58, i64 88, !56, i64 120, !56, i64 128}
!53 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!54 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!55 = !{!"float", !50, i64 0}
!56 = !{!"long", !50, i64 0}
!57 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEEE", !49, i64 0, !49, i64 8, !49, i64 16}
!58 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !49, i64 0, !56, i64 8, !56, i64 16, !49, i64 24}
!59 = !{!52, !55, i64 16}
!60 = !{!52, !56, i64 24}
!61 = !{!52, !56, i64 32}
!62 = !{!57, !49, i64 0}
!63 = !{!58, !49, i64 0}
!64 = !{!52, !56, i64 128}
!65 = !{!66, !56, i64 8}
!66 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !49, i64 0, !56, i64 8, !56, i64 16, !49, i64 24}
!67 = !{!66, !49, i64 24}
!68 = !{!69, !49, i64 8}
!69 = !{!"_ZTSN11xalanc_1_1014KeyDeclarationE", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !56, i64 32, !56, i64 40}
!70 = distinct !{!70, !71, !72}
!71 = !{!"llvm.loop.mustprogress"}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = distinct !{!73, !71, !72}
!74 = distinct !{!74, !71, !72}
!75 = distinct !{!75, !71, !72}
!76 = !{!57, !49, i64 8}
!77 = !{!78, !80}
!78 = distinct !{!78, !79, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!79 = distinct !{!79, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!80 = distinct !{!80, !81, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv: argument 0"}
!81 = distinct !{!81, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv"}
!82 = !{!83, !49, i64 24}
!83 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE4NodeE", !84, i64 0, !49, i64 16, !49, i64 24}
!84 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE5EntryE", !49, i64 0, !85, i64 8}
!85 = !{!"bool", !50, i64 0}
!86 = !{!83, !49, i64 16}
!87 = !{}
!88 = !{!89, !91}
!89 = distinct !{!89, !90, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv: argument 0"}
!90 = distinct !{!90, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv"}
!91 = distinct !{!91, !92, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE5beginEv: argument 0"}
!92 = distinct !{!92, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE5beginEv"}
!93 = !{!84, !49, i64 0}
!94 = !{!95, !56, i64 32}
!95 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEEE", !96, i64 0, !97, i64 1, !49, i64 8, !55, i64 16, !56, i64 24, !56, i64 32, !98, i64 40, !98, i64 64, !99, i64 88, !56, i64 120, !56, i64 128}
!96 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!97 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!98 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !49, i64 0, !49, i64 8, !49, i64 16}
!99 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEENS_32ConstructWithMemoryManagerTraitsISH_EEEE", !49, i64 0, !56, i64 8, !56, i64 16, !49, i64 24}
!100 = !{!98, !49, i64 8}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!103 = distinct !{!103, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!104 = distinct !{!104, !105, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!105 = distinct !{!105, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!106 = !{!98, !49, i64 0}
!107 = !{!108, !49, i64 24}
!108 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE4NodeE", !109, i64 0, !49, i64 16, !49, i64 24}
!109 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5EntryE", !49, i64 0, !85, i64 8}
!110 = !{!108, !49, i64 16}
!111 = !{!112, !114}
!112 = distinct !{!112, !113, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!113 = distinct !{!113, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!114 = distinct !{!114, !115, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!115 = distinct !{!115, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!116 = !{!109, !49, i64 0}
!117 = !{!118, !122, i64 40}
!118 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !119, i64 0, !122, i64 40}
!119 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !120, i64 0, !121, i64 8}
!120 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!121 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !49, i64 0, !56, i64 8, !56, i64 16, !49, i64 24}
!122 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !50, i64 0}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEppEv: argument 0"}
!125 = distinct !{!125, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEppEv"}
!126 = distinct !{!126, !71, !72}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEppEv: argument 0"}
!129 = distinct !{!129, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEppEv"}
!130 = distinct !{!130, !71, !72}
!131 = !{!69, !49, i64 16}
!132 = !{!133, !49, i64 0}
!133 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !49, i64 0}
!134 = !{!135, !138, i64 12}
!135 = !{!"_ZTSN11xalanc_1_107XObjectE", !136, i64 0, !138, i64 12, !49, i64 16}
!136 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !137, i64 8}
!137 = !{!"int", !50, i64 0}
!138 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !50, i64 0}
!139 = !{!69, !49, i64 0}
!140 = !{!141, !56, i64 8}
!141 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !49, i64 0, !56, i64 8, !56, i64 16, !49, i64 24}
!142 = !{!143, !137, i64 32}
!143 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !141, i64 0, !137, i64 32}
!144 = distinct !{!144, !71, !72}
!145 = !{!58, !56, i64 8}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv: argument 0"}
!148 = distinct !{!148, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!151 = distinct !{!151, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!152 = distinct !{!152, !71, !72}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZNK11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE4findERKS1_: argument 0"}
!155 = distinct !{!155, !"_ZNK11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE4findERKS1_"}
!156 = !{!157, !49, i64 0}
!157 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEE", !49, i64 0}
!158 = !{!159, !161, !163}
!159 = distinct !{!159, !160, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!160 = distinct !{!160, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!161 = distinct !{!161, !162, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv: argument 0"}
!162 = distinct !{!162, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv"}
!163 = distinct !{!163, !164, !"_ZNK11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv: argument 0"}
!164 = distinct !{!164, !"_ZNK11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv"}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_: argument 0"}
!167 = distinct !{!167, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE4findERKS1_"}
!168 = !{!169, !49, i64 0}
!169 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEE", !49, i64 0}
!170 = !{!171, !173, !175}
!171 = distinct !{!171, !172, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!172 = distinct !{!172, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!173 = distinct !{!173, !174, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!174 = distinct !{!174, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!175 = distinct !{!175, !176, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!176 = distinct !{!176, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!177 = !{!178, !180}
!178 = distinct !{!178, !179, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!179 = distinct !{!179, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!180 = distinct !{!180, !181, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv: argument 0"}
!181 = distinct !{!181, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv"}
!182 = !{!183, !185}
!183 = distinct !{!183, !184, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!184 = distinct !{!184, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!185 = distinct !{!185, !186, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!186 = distinct !{!186, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!187 = !{!188}
!188 = distinct !{!188, !189, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv: argument 0"}
!189 = distinct !{!189, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv"}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!192 = distinct !{!192, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEppEi: argument 0"}
!195 = distinct !{!195, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEppEi"}
!196 = distinct !{!196, !71, !72}
!197 = !{!57, !49, i64 16}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE5beginEv: argument 0"}
!200 = distinct !{!200, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE5beginEv"}
!201 = !{!202, !199}
!202 = distinct !{!202, !203, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv: argument 0"}
!203 = distinct !{!203, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv"}
!204 = distinct !{!204, !71, !72}
!205 = !{!58, !56, i64 16}
!206 = !{!58, !49, i64 24}
!207 = distinct !{!207, !71, !72}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!210 = distinct !{!210, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!211 = !{!84, !85, i64 8}
!212 = !{!99, !56, i64 8}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!215 = distinct !{!215, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!218 = distinct !{!218, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!219 = !{!95, !49, i64 8}
!220 = distinct !{!220, !71, !72}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!223 = distinct !{!223, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!224 = !{!225, !222}
!225 = distinct !{!225, !226, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!226 = distinct !{!226, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!227 = distinct !{!227, !71, !72}
!228 = !{!99, !56, i64 16}
!229 = !{!99, !49, i64 24}
!230 = distinct !{!230, !71, !72}
!231 = !{!99, !49, i64 0}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!234 = distinct !{!234, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!237 = distinct !{!237, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEppEi: argument 0"}
!240 = distinct !{!240, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEppEi"}
!241 = distinct !{!241, !71, !72}
!242 = !{!98, !49, i64 16}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!245 = distinct !{!245, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!246 = !{!109, !85, i64 8}
!247 = !{!"function_entry_count", i64 42470003}
!248 = !{!141, !56, i64 16}
!249 = !{!"branch_weights", i32 52000, i32 42418003}
!250 = !{!141, !49, i64 24}
!251 = !{!141, !49, i64 0}
!252 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!253 = !{!254, !56, i64 16}
!254 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS9_E4NodeEEENS_31MemoryManagedConstructionTraitsISE_EEEE", !49, i64 0, !56, i64 8, !56, i64 16, !49, i64 24}
!255 = !{!254, !49, i64 24}
!256 = !{!254, !49, i64 0}
!257 = !{!258, !56, i64 16}
!258 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS3_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS5_EEEENS7_IS4_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEE", !49, i64 0, !56, i64 8, !56, i64 16, !49, i64 24}
!259 = !{!258, !49, i64 24}
!260 = !{!258, !49, i64 0}
!261 = !{!258, !56, i64 8}
!262 = !{i8 0, i8 2}
!263 = distinct !{!263, !71, !72}
!264 = !{!265}
!265 = distinct !{!265, !266, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv: argument 0"}
!266 = distinct !{!266, !"_ZN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceENS0_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEEENS4_IS1_EEE3endEv"}
!267 = !{!268, !265}
!268 = distinct !{!268, !269, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!269 = distinct !{!269, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!270 = !{!"function_entry_count", i64 27}
!271 = !{!"VP", i32 0, i64 27, i64 6313752753425413918, i64 27}
!272 = !{!"branch_weights", i32 0, i32 27}
!273 = !{!"VP", i32 0, i64 27, i64 7946378714684030190, i64 27}
!274 = !{!"branch_weights", i32 27, i32 0}
!275 = !{!"function_entry_count", i64 335474016}
!276 = !{!"VP", i32 0, i64 335474016, i64 1429807492782621726, i64 335473740, i64 6313752753425413918, i64 276}
!277 = !{!"VP", i32 0, i64 335474016, i64 6313752753425413918, i64 201224632, i64 1429807492782621726, i64 134249384}
!278 = !{!"branch_weights", i32 201394622, i32 134079394}
!279 = !{!"VP", i32 0, i64 201394622, i64 8049669377434801377, i64 201394614, i64 7946378714684030190, i64 8}
!280 = !{!"VP", i32 0, i64 201394622, i64 7946378714684030190, i64 111850953, i64 8049669377434801377, i64 89543669}
!281 = !{!282, !282, i64 0}
!282 = !{!"short", !50, i64 0}
!283 = distinct !{!283, !71, !72}
!284 = !{!254, !56, i64 8}
!285 = distinct !{!285, !71, !72}
!286 = !{!287}
!287 = distinct !{!287, !288, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!288 = distinct !{!288, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!289 = !{!290, !287}
!290 = distinct !{!290, !291, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!291 = distinct !{!291, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!292 = !{!293}
!293 = distinct !{!293, !294, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!294 = distinct !{!294, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!295 = !{!296}
!296 = distinct !{!296, !297, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!297 = distinct !{!297, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!298 = !{!95, !55, i64 16}
!299 = !{!95, !56, i64 24}
!300 = !{!95, !56, i64 128}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!303 = distinct !{!303, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!306 = distinct !{!306, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!309 = distinct !{!309, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!312 = distinct !{!312, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!313 = !{!314}
!314 = distinct !{!314, !315, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!315 = distinct !{!315, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!316 = !{!317}
!317 = distinct !{!317, !318, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!318 = distinct !{!318, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv: argument 0"}
!321 = distinct !{!321, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceENS2_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS4_EEEENS6_IS3_EEE5EntryEEENS_9XalanListISB_E4NodeEEmmEv"}
!322 = distinct !{!322, !71, !72}
!323 = distinct !{!323, !71, !72}
!324 = distinct !{!324, !71, !72}
!325 = distinct !{!325, !71, !72}
!326 = distinct !{!326, !71, !72}
!327 = distinct !{!327, !71, !72}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv: argument 0"}
!330 = distinct !{!330, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE5beginEv"}
!331 = !{!49, !49, i64 0}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!334 = distinct !{!334, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!335 = distinct !{!335, !71, !72}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv: argument 0"}
!338 = distinct !{!338, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceENS1_INS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEEENS5_IS2_EEE5EntryEE3endEv"}
!339 = !{i64 0, i64 8, !331, i64 8, i64 1, !340}
!340 = !{!85, !85, i64 0}
!341 = distinct !{!341, !71, !72}
!342 = distinct !{!342, !71, !72}
!343 = distinct !{!343, !71, !72}
!344 = distinct !{!344, !71, !72}
!345 = distinct !{!345, !71, !72}
!346 = distinct !{!346, !71, !72}
!347 = distinct !{!347, !71, !72}
!348 = distinct !{!348, !71, !72}
!349 = distinct !{!349, !71, !72}
!350 = distinct !{!350, !71, !72}
!351 = distinct !{!351, !71, !72}
!352 = !{!95, !56, i64 120}
!353 = !{!354, !356, !358}
!354 = distinct !{!354, !355, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!355 = distinct !{!355, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!356 = distinct !{!356, !357, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!357 = distinct !{!357, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!358 = distinct !{!358, !359, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!359 = distinct !{!359, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!360 = !{!361, !363, !365}
!361 = distinct !{!361, !362, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!362 = distinct !{!362, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!363 = distinct !{!363, !364, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!364 = distinct !{!364, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!365 = distinct !{!365, !366, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!366 = distinct !{!366, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!367 = distinct !{!367, !71, !72}
!368 = distinct !{!368, !71, !72}
!369 = distinct !{!369, !71, !72}
!370 = distinct !{!370, !71, !72}
!371 = distinct !{!371, !71, !72}
!372 = distinct !{!372, !71, !72}
!373 = distinct !{!373, !71, !72}
!374 = distinct !{!374, !71, !72}
!375 = distinct !{!375, !71, !72}
!376 = distinct !{!376, !71, !72}
!377 = distinct !{!377, !71, !72}
!378 = distinct !{!378, !71, !72}
!379 = distinct !{!379, !71, !72}
!380 = distinct !{!380, !71, !72}
!381 = distinct !{!381, !71, !72}
!382 = distinct !{!382, !71, !72}
!383 = distinct !{!383, !71, !72}
!384 = !{!385, !387}
!385 = distinct !{!385, !386, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!386 = distinct !{!386, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!387 = distinct !{!387, !388, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!388 = distinct !{!388, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!391 = distinct !{!391, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEmmEv: argument 0"}
!394 = distinct !{!394, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEmmEv"}
!395 = !{!396}
!396 = distinct !{!396, !397, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!397 = distinct !{!397, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!400 = distinct !{!400, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!401 = !{!402}
!402 = distinct !{!402, !403, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEmmEv: argument 0"}
!403 = distinct !{!403, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEmmEv"}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!406 = distinct !{!406, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEmmEv: argument 0"}
!409 = distinct !{!409, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEmmEv"}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!412 = distinct !{!412, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEmmEv: argument 0"}
!415 = distinct !{!415, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS8_E4NodeEEmmEv"}
!416 = !{!417}
!417 = distinct !{!417, !418, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!418 = distinct !{!418, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!421 = distinct !{!421, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!422 = distinct !{!422, !71, !72}
!423 = !{!424}
!424 = distinct !{!424, !425, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!425 = distinct !{!425, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_18MutableNodeRefListENS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!426 = !{!"function_entry_count", i64 1}
!427 = !{!"KeyTable.cpp;_GLOBAL__sub_I_KeyTable.cpp"}
